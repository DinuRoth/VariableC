using GLMakie
using LinearAlgebra

# --- KONSTANTEN ---
const LICHTGESCHWINDIGKEIT_NULL = 299792.458 
const SONNEN_RADIUS = 696340.0              
const MAX_ZEITSCHRITT = 0.5       
const MIN_ZEITSCHRITT = 0.00005   
const ZEICHEN_INTERVALL = 1000              
const BUEHNEN_KANTENLAENGE = 300e6          

# --- KERN-PHYSIK ---

function berechne_lokale_geschwindigkeit(abstand, waerme_leistung)
    # 1. Innerhalb der Materie (Sonne) bricht das Gitter zusammen
    if abstand <= SONNEN_RADIUS
        return 0.0 
    end
    
    brems_faktor = waerme_leistung / abstand
    
    # 2. Wenn wir (durch Overshoot) unter den Horizont rutschen, steht das Licht still
    if brems_faktor >= 1.0
        return 0.0
    end
    
    # 3. Regulärer Flug im freien Gitter
    c_lokal = LICHTGESCHWINDIGKEIT_NULL * sqrt(1.0 - brems_faktor)
    
    return c_lokal
end

function berechne_beschleunigungs_vektor(pos, waerme_leistung)
    abstand = norm(pos)
    
    if abstand <= SONNEN_RADIUS
        return [0.0, 0.0]
    end
    
    if waerme_leistung / abstand >= 1.0
        return [0.0, 0.0]
    end
    
    richtung_zentrum = -pos / abstand 
    
    # REINE WELLENMECHANIK: a = 0.5 * ∇(c^2)
    # Die Wurzel aus dem vorherigen Code ist physikalisch komplett eliminiert!
    gradient_staerke = waerme_leistung / (2.0 * abstand^2)
    
    return richtung_zentrum * gradient_staerke * (LICHTGESCHWINDIGKEIT_NULL^2)
end

# --- SIMULATION ---

function simuliere_lichtstrahl(stoss_parameter, waerme_leistung)
    pos = [-BUEHNEN_KANTENLAENGE / 2, stoss_parameter]
    
    c_start = berechne_lokale_geschwindigkeit(norm(pos), waerme_leistung)
    vel_start = [c_start, 0.0] 
    vel = copy(vel_start)
    
    pfad = [Point2f(pos...)]
    pfad_c_werte = [c_start] 
    
    schritt_zähler = 0
    rechte_grenze = BUEHNEN_KANTENLAENGE / 2
    status = :erfolg 
    
    while pos[1] < rechte_grenze
        r = norm(pos)
        
        if r <= SONNEN_RADIUS
            status = :sonne_gerammt
            break
        end
        if r <= waerme_leistung
            status = :im_horizont_verschwunden
            break
        end
        
        c_lokal = berechne_lokale_geschwindigkeit(r, waerme_leistung)
        beschleunigung = berechne_beschleunigungs_vektor(pos, waerme_leistung)
        
        gradienten_betrag = norm(beschleunigung)
        aktueller_zeitschritt = MAX_ZEITSCHRITT / (1.0 + gradienten_betrag * 100000.0)
        aktueller_zeitschritt = max(MIN_ZEITSCHRITT, aktueller_zeitschritt)
        
        vel += beschleunigung * aktueller_zeitschritt
        vel = normalize(vel) * c_lokal
        pos += vel * aktueller_zeitschritt
        
        schritt_zähler += 1
        
        if schritt_zähler % ZEICHEN_INTERVALL == 0
            push!(pfad, Point2f(pos...))
            push!(pfad_c_werte, c_lokal) 
        end
    end
    
    push!(pfad, Point2f(pos...))
    push!(pfad_c_werte, berechne_lokale_geschwindigkeit(norm(pos), waerme_leistung))
    
    ablenkungs_winkel_bogensekunden = 0.0
    if status == :erfolg
        anfangs_vektor_norm = normalize(vel_start)
        end_vektor_norm = normalize(vel)
        cos_winkel = dot(anfangs_vektor_norm, end_vektor_norm)
        cos_winkel = clamp(cos_winkel, -1.0, 1.0)
        winkel_radiant = acos(cos_winkel)
        ablenkungs_winkel_bogensekunden = winkel_radiant * (180.0 / pi) * 3600.0
    end
    
    return pfad, pfad_c_werte, ablenkungs_winkel_bogensekunden, status
end

# --- GUI SETUP ---

fig = Figure(size = (1200, 700))

ax = Axis(fig[1, 1], 
    title = "Berechne initiale Flugbahn...", 
    xlabel = "km", ylabel = "km", aspect = DataAspect())

limit = BUEHNEN_KANTENLAENGE / 2

# NEU: Hier ist die Y-Achse wieder um den Faktor 10 herangezoomt
limits!(ax, -limit, limit, -limit, limit)

ls = SliderGrid(fig[2, 1:2],
    (label = "Einstrahl-Höhe (km)", range = 690000.0:500.0:800000.0, startvalue = 800000.0),
    (label = "Masse / Heizleistung", range = 5.0:0.0001:6.0, startvalue = 0.0),
    (label = "Kamera-Zoom (Mio. km)", range = 1.0:1.0:150.0, startvalue = 150.0)
)

stoss_param_obs = ls.sliders[1].value
waerme_obs = ls.sliders[2].value
zoom_obs = ls.sliders[3].value # NEU: Beobachter für den Zoom

# --- VERDRAHTUNG & REAKTIVITÄT ---

start_pfad, start_c_werte, _, _ = simuliere_lichtstrahl(stoss_param_obs[], waerme_obs[])
strahl_pfad_obs = Observable(start_pfad)
c_werte_obs = Observable(start_c_werte) 

onany(stoss_param_obs, waerme_obs, zoom_obs) do b, w, z
    ax.title = "Berechne..."
    sleep(0.001) 
    
    # --- NEU: Kamera exakt auf (0, SONNEN_RADIUS) zentrieren ---
    limit_km = z * 1e6 
    
    x_min = -limit_km
    x_max = limit_km
    
    y_min = SONNEN_RADIUS - limit_km
    y_max = SONNEN_RADIUS + limit_km
    
    limits!(ax, x_min, x_max, y_min, y_max)
    # -----------------------------------------------------------
    
    pfad, c_werte, winkel, status = simuliere_lichtstrahl(b, w)
    
    strahl_pfad_obs[] = pfad
    c_werte_obs[] = c_werte
    min_c = minimum(c_werte)
    
    if status == :sonne_gerammt
        ax.title = "LICHTBLOCKADE: Strahl hat die Sonnenoberfläche gerammt!"
    elseif status == :im_horizont_verschwunden
        ax.title = "GRAVITATIVER EINFANG: Im flüssigen Monopol-Gitter verschwunden!"
    else
        ax.title = "Ablenkung: $(round(winkel, digits=4)) Bogensekunden | Min c: $(round(min_c, digits=2)) km/s"
    end
end

# --- ZEICHNEN ---

linien_plot = lines!(ax, strahl_pfad_obs, 
    color = c_werte_obs, 
    colormap = :inferno, 
    linewidth = 4)

poly!(ax, Circle(Point2f(0, 0), SONNEN_RADIUS), color = :orange) 

Colorbar(fig[1, 2], linien_plot, label = "Lichtgeschwindigkeit c (km/s)")

notify(stoss_param_obs)

display(fig)