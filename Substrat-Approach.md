Substrat-Approach

Ich arbeite an einer Analogie zur Allgemeinen Relativitätstheorie,
ähnlich der Gordon-Metrik oder zu Ideen von Lorentz und FitzGerald, also in einem flachen Raum.

Folgende Postulate:
1. Es existiert ein raumzeitlich starres, flaches und räumlich endliches Substrat mit einer diskreten fundamentalen Struktur (Knotennetzwerk mit mittlerem Gitterabstand $l_0$).
2. Licht oder allgemein jede Wirkung breitet sich darin mit einer lokalen Geschwindigkeit c aus
3. Materie ist eine topologische Fehlstelle im Substrat. Jede stabile Fehlstelle umfasst eine diskrete, wohldefinierte Anzahl von Substrat-Knoten.
4. Die einzelnen Fehlstellen interagieren miteinander, unter Berücksichtigung der Interaktionsgeschwindigkeit
5. Die Anwesenheit von Fehlstellen regen das Substrat an.
6. Das angeregte Substrat kann Wirkungen schlechter transportieren
7. Substrat-Anregungen werden wie jede andere Wirkung propagiert
8. Ein erregtes Substrat nimmt mehr Raum ein, dabei wächst der Raumbedarf in einer Dimension proportional zur Erregung
9. Sich bewegende Fehlstellen verzerren das Substrat und erregt es zusätzlich
10. Ein stark erregtes Substrat macht einen Phasenübergang. Dabei verliert es die Fehlstellen und die Möglichkeit des Wirkungstransportes

## Lorentz-Invarianz
Postulat 1 widerspricht den Experimenten von Michelson und Morley. Wenn aber Postulat 2 berücksichtig wird, zeigt sich Lorentz's Interpretation seiner Invarianz: Die Messinstrumente verändern sich im bewegten Äther.


## Feldgleichungen

### Diffusionsgleichung der Erregung
Wenn wir die Substrat-Erregung $u$ mit der Erregung einer Fehlstelle $A = \kappa \cdot M \cdot J$ mathematisch darstellen, lautet die Feldgleichung:

$$\dot{u} = \nabla \cdot \left( D(u) \nabla u \right) + \kappa \cdot M \cdot J \cdot \delta(x - x_0)$$

Postulat 6 besagt, dass die Transportfähigkeit $D(u)$ von der lokalen Erregung abhängt. Unter der Annahme einer umgekehrten Proportionalität:

$$D(u) = \frac{\kappa}{u}$$

ergibt sich die nichtlineare Diffusionsgleichung:

$$\dot{u} = \kappa \Delta (\ln u) + \kappa \cdot M \cdot J \cdot \delta(x - x_0)$$

oder umgestellt:

$$\frac{\dot{u}}{\kappa} = \nabla \cdot \left( \frac{\nabla u}{u} \right) + M \cdot J \cdot \delta(x - x_0)$$

Da der Diffusionskoeffizient $D(u)$ und damit $\kappa$ die Dimension einer Fläche pro Zeit besitzen muss ($[\kappa] = \frac{\text{m}^2}{\text{s}}$), verknüpft sich die Wirkungsgeschwindigkeit $c$ ($[\text{m}/\text{s}]$) aus Postulat 2 mit der minimalen Substratskala $l_0$ ($[\text{m}]$) aus Postulat 1:

$$\kappa = c \cdot l_0 $$

c und $l_0$ sind in dieser Theorie keine Konstanten mehr, sie hängen aber beide von der Erregung ab. Deshalb kann der Wert von $\kappa$ mit den heute gemessenen Werten berechnet werden

$$\kappa \approx (2.998 \cdot 10^8 \, \text{m/s}) \cdot (1.616 \cdot 10^{-35} \, \text{m}) \approx 4.85 \cdot 10^{-27} \, \frac{\text{m}^2}{\text{s}}$$


Die Erregung einer Fehlstelle ist gemäss meiner  Simulationen für Eddington und Shapiro (Link zum Code):
$$ J = \frac{4G}{c^2} = 2.96 \cdot 10^{-27} \frac{m}{kg}$$

Gemini sagt, dass bei grossem $\kappa$, kleinem J und kleiner Fehlstellendichte $\rho$ dieser lineare Zusammenhang gilt:

$$ u(t,\rho) = \kappa \cdot J \cdot t \cdot \rho $$

Die Dichte der Baryonischen Masse wird geschätzt auf: $$\rho \approx 4{,}2 \cdot 10^{-28} \text{ kg/m}^3$$
das Alter des Universums wird geschätzt auf:

$$ t = 4.35 \cdot 10^{17} \text{ s}$$

Damit ist u heute, weit weg von einer Fehlstelle mit den astronomischen und physikalischen Kennzahlen:
* $J = \frac{4G}{c^2} \approx 2{,}97 \cdot 10^{-27} \, \frac{\text{m}}{\text{kg}}$
* $\rho \approx 4{,}2 \cdot 10^{-28} \, \frac{\text{kg}}{\text{m}^3}$
* $t \approx 4{,}35 \cdot 10^{17} \, \text{s}$

Ergibt sich der heute im freien Raum akkumulierte Erregungswert zu:

$$u_{\text{heute}} \approx 2.63 \cdot 10^{-63} [1]$$

Das betrachten wir wie einen Erregungs-Teppich; die heutige Welt, in der wir Physik betreiben.

### Systemgleichung
Wenn wir folgendes annehmen: Anzahl Fehlstellen ist proportional zur barionischen Masse und dass sich das Substrat in alle 3 Raumdimensionen mit wachsendem u linear ausbreitet, so kann man das System so beschreiben:

$$\dot u = \kappa \Delta \bigl(\ln u\bigr) + \frac{\kappa J W M}{u^3}$$

Dabei ist W die Kopplung zwischen der Erregung und der Ausdehnung des Substrates. Ich nehme an, dass W konstant ist, so kann W mit den heutigen Schätzwerten bestimmt werden:

$$W = \rho_{heute} \cdot u_{heute}^3 = (1{,}0517 \times 10^{-28} \text{ kg/m}^3) \cdot (2{,}63 \times 10^{-63})^3 = $$

$$ 1.91 \cdot 10^{-216} \frac{kg}{m^3}$$


Weil die Dichte mit der dritten Potenz abnimmt kommt es zu einer starken Verlangsamung der Expansion.

#### Ohne Zurückgreifen auf interpretierte Messungen

Wir können uns noch von J trennen und die Masse nicht mehr in kg messen:

$$\frac{\dot{u}}{\kappa} = \Delta (\ln u) + \frac{\lambda \cdot M}{u^3}$$

Wobei hier M eine Massäquivalente Zählzahl ist. $\lambda$ hat dann die Einheit $\frac {1} {m^2}$

### Wellengleichung Ansatz 2

$$\frac{u^2}{\alpha^2} \frac{\partial^2 u}{\partial t^2} - \nabla^2 u = \frac{\lambda}{u^3} n(\mathbf{x})$$

- $u(\mathbf{x}, t)$: Dimensionsloses Erregungsfeld $[1]$
- $\alpha$: Fundamentale Geschwindigkeitskonstante $[\text{m}/\text{s}]$. Wenn wir $u_{heute}$ auf 1 normieren, ist $\alpha$ 299'792'458 $\text{ m/s}$
- $\lambda$: Fundamentale Koppel-Länge des Substrats 1.55 $\cdot 10^{-53}$ $[\text{m}]$
- $n(\mathbf{x}) = \sum_i w_i \delta^3(\mathbf{x} - \mathbf{x}_i)$: Koordinaten-Teilchendichte $[1/\text{m}^3]$, gewichtet mit $w_N = 1$ und $w_e \approx \frac{1}{1836}$.

### Wellengleichung Ansatz 3
Im Ansatz 2 wird die Welle nicht von der Substrat-Dichte beeinflusst. Das müssen wir korrigieren:

$$\nabla \cdot \left( \frac{1}{u^5} \nabla u \right) + \frac{1}{2\alpha^2} \frac{\partial^2}{\partial t^2} \left( \frac{1}{u^2} \right) = - \frac{\lambda}{u^3} n(\mathbf{x}, t)$$

oder mit $\Phi = \frac{1}{u^2}$

$$\nabla^2 \left( \Phi^2 \right) - \frac{2}{\alpha^2} \frac{\partial^2 \Phi}{\partial t^2} = 4\lambda \, \mathbf{\Phi^{3/2}} \, n(\mathbf{x}, t)$$

### Gedanken

$\lambda$ zu bestimmen ist sehr schwierig. Wir können die Messungen und Schätzungen der aktuellen Physik verwenden, aber diese basieren z.T. auf den Erkenntnissen der $\lambda$CDM-Theorie (Alter und Grösse des beobachtbaren Universums), was eine falsche Basis für diese Theorie ist. Ich sehe momentan aber keinen anderen Weg, als mal diese Werte zu nehmen und von dort aus Anpassungen zu machen. Hier gehen wir davon aus, dass c früher grösser war, das beobachtete Volumen also viel grösser ist und das Universum älter als aktuell geschätzt ist.

Wir haben eine Gleichung mit 2 Unbekannten. Von $\lambda$ kennen wir den J-Anteil (genau vermessen), für W braucht es eine aktuelle mittlere Dichte der Materie und das Alter des Universums.
Schön wäre es, wenn das ab-Initio hergeleitet werden könnte, aber bei t=0 haben wir eine Singularität

$ h \cdot c $ oder $ l_{planck} \cdot c $ als kosmologische Konstante!

Schwere Masse = Träge Masse (Äquivalenzprinzip). Das deutet doch darauf hin, dass die Massenträgheit von u abhängt (Machsches Prinzip)


### Wellencharakter
Damit sich eine schnelle Lageänderung von Fehlstellen als Welle im Substrat fortpflanzen kann, braucht es eine Wellengleichung.

$$\ddot{u}(x, t) - c^2 \nabla^2 u(x, t) = q \cdot \delta(x - x_0)$$

c ist nicht konstant, sondern

$$ c = \frac {\alpha}{u} $$

Wir haben nicht nur eine Quelle, sondern viele mit einer mittleren Dichte $\rho$. Zusammen mit Postulat 9 gilt im Kontinuum

$$\ddot{u}(x, t) - \nabla \cdot \left( \frac{\alpha^2}{u(x, t)^2} \nabla u(x, t) \right) = \frac{q}{\beta^3 \cdot u(x, t)^3}$$

Aus dem "heutigen" c und u (Diffusionsgleichung) kommen wir auf $\alpha$:

$$\alpha \approx 7{,}88 \cdot 10^{-55} \text{ m/s}$$

## Relativität
Wenn ein Prozess, welcher sich von uns aus gesehen bewegt, Licht erzeugt, so erregt er dort eine Welle im substrat. Wie schnell sich das Licht von dort aus bewegt, hängt also nicht von seiner Geschwindigkeit ab, nur die Wellenform wird beeinflusst. Es gibt eine Verschiebung der Frequenz, nicht der Geschwindigkeit.

## Massen im Substrat

$$\frac{d}{dt}\left( \frac{m_0 \, \mathbf{v}}{\sqrt{1 - \dfrac{u^2 v^2}{\alpha^2}}} \right) = m_0 \frac{\alpha^2}{u^3} \left[ \nabla u + \mathbf{f}_{\text{dyn}}(\mathbf{v}, u) \right]$$

$$\mathbf{f}_{\text{dyn}}(\mathbf{v}, u) \approx - \frac{2 (\mathbf{v} \cdot \nabla u)}{c(u)^2} \mathbf{v} + \frac{v^2}{c(u)^2} \nabla u = - \frac{2 u^2 (\mathbf{v} \cdot \nabla u)}{\alpha^2} \mathbf{v} + \frac{u^2 v^2}{\alpha^2} \nabla u$$