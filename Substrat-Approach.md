Substrat-Approach

Ich arbeite an einer Analogie zur Allgemeinen Relativitätstheorie,
ähnlich der Gordon-Metrik oder zu Ideen von Lorentz und FitzGerald, also in einem flachen Raum.

Folgende Postulate:
1. Es existiert ein feststehendes, flaches Substrat mit einer fundamentalen physikalischen Auflösungsgrenze (Korrelationslänge $l_0$).
2. Licht oder allgemein jede Wirkung breitet sich darin mit einer lokalen Geschwindigkeit c aus
3. Materie ist eine topologische Fehlstelle im Substrat
4. Die einzelnen Fehlstellen interagieren miteinander, unter Berücksichtigung der Interaktionsgeschwindigkeit
5. Die Anwesenheit von Fehlstellen regen das Substrat an.
6. Das angeregte Substrat kann Wirkungen schlechter transportieren
7. Substrat-Anregungen werden wie jede andere Wirkung propagiert
8. Sich bewegende Fehlstellen verzerren das Substrat und erregt es zusätzlich
9. Ein erregtes Substrat nimmt mehr Raum ein
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

Da der Diffusionskoeffizient $D(u)$ und damit $\kappa$ die Dimension einer Fläche pro Zeit besitzen muss ($[\kappa] = \frac{\text{m}^2}{\text{s}}$), verknüpft sich die Wirkungsgeschwindigkeit $c$ ($[\text{m}/\text{s}]$) aus Postulat 2 mit der minimalen Substratskala $l_0$ ($[\text{m}]$) aus Postulat 1:

$$\kappa = c \cdot l_0 \approx (2{,}998 \cdot 10^8 \, \text{m/s}) \cdot (1{,}616 \cdot 10^{-35} \, \text{m}) \approx 4{,}85 \cdot 10^{-27} \, \frac{\text{m}^2}{\text{s}}$$


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

$$u_{\text{heute}} \approx 2{,}63 \cdot 10^{-63} [1]$$

Das betrachten wir wie einen Erregungs-Teppich, die heutige Welt, in der wir Physik betreiben.

### Wellencharakter
Damit sich eine schnelle Lageänderung von Fehlstellen als Welle im Substrat fortpflanzen kann, braucht es eine Wellengleichung.

$$\ddot{u}(x, t) - c^2 \nabla^2 u(x, t) = q \cdot \delta(x - x_0)$$

Mit der Nichtlinearität von c:

Gemäß den Postulaten 1 und 2 verknüpft der Parameter $\kappa$ die fundamentale Längenskala $l_0$ mit der Ausbreitungsgeschwindigkeit:$$\kappa = c \cdot l_0 \implies c = \frac{\kappa}{l_0}$$Nach Postulat 6 sinkt die Transportfähigkeit des Substrats umgekehrt proportional mit der lokalen Erregung $u(x,t)$. Die konstante Geschwindigkeit $c$ wird somit durch die feldabhängige Funktion $c(u)$ ersetzt:$$c(u) = \frac{\kappa}{l_0 \cdot u(x,t)}$$Ersetzen wir $c$ durch $c(u)$ in der Wellengleichung:$$\ddot{u}(x, t) - \left(\frac{\kappa}{l_0 \cdot u(x, t)}\right)^2 \nabla^2 u(x, t) = q \cdot \delta\big(x - x_0(t)\big)$$Schritt 2: Spezifikation der Quellstärke $q$Die Quellstärke $q$ beschreibt die Anregung des Substrats durch die Fehlstelle. Analog zur Diffusionsgleichung wird sie über die Masse $M$, die fundamentale Anregungskopplung $J$ und die Substratkonstante $\kappa$ definiert:$$q = \kappa \cdot M \cdot J$$Einsetzen von $q$ ergibt:$$\ddot{u}(x, t) - \left(\frac{\kappa}{l_0 \cdot u(x, t)}\right)^2 \nabla^2 u(x, t) = \kappa \cdot M \cdot J \cdot \delta\big(x - x_0(t)\big)$$Schritt 3: Operator- und KurznotationZur besseren Lesbarkeit wenden wir zwei wissenschaftliche Konventionen an:Ersetzung des Nabla-Quadrats durch das Laplace-Symbol ($\nabla^2 \equiv \Delta$).Unterdrückung der expliziten Argumente $(x,t)$ beim Feld $u$ sowie $x_0(t) \to x_0$.Daraus folgt die finale, kompakte Feldgleichung:$$\ddot{u} - \left(\frac{\kappa}{l_0 u}\right)^2 \Delta u = \kappa \cdot M \cdot J \cdot \delta(x - x_0)$$

