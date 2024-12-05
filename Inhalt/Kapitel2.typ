#import "../Abhängigkeiten.typ": *

= Aufzählungen, Formeln, Tabellen

== Aufzählungen
- Eins
- Zwei
- Drei

1. Eins
2. Zwei
3. Drei

== Einbinden von Formeln
=== Mathe-Modus
Die Verschiebungsfunktion bei einem vierknotigen Stabelement lautet $u = a_0 + a_1 x + a_2 x^2 + a_3 x^3$.

=== Abgesetzter Mathe-Modus
Die Verschiebungsfunktion bei einem vierknotigen Stabelement lautet
$  u = a_0 + a_1 x + a_2 x^2 + a_3 x^3 $

=== Referenzen auf Gleichungen
Die Beziehung für die Verschiebung $v_3$ am Knoten $3$ ist in @eqt:verschiebung dargestellt @steinke.

$ v_3= num(-1.6667) L F (-sin(phi) + 4 cos(phi))/(E A) $ <verschiebung>

=== Matrizen, Vektoren

$ 
  	arrow(x)^T underline(K) arrow(x) = mat(x_1, x_2, dots.c, x_4) 
    mat(
      k_11, k_12, dots.c, k_(1n);
      k_21, k_22, dots.c, k_(2n);
      dots.v, dots.v, dots.down, dots.v;
      k_41, k_42, dots.c, k_(4n);      
    )
    vec(x_1, x_2, dots.v, x_n)
    = sum_(i=1)^n sum_(j=1)^n k_(i j) x_i x_j
$

Es muss gelten $arrow(x)^T underline(K) arrow(x) > 0$.

=== Richtiges Setzen von Einheiten

Einheiten werden normal (geradestehend) gesetzt. In Typst kann hierfür das Paket _metro_ verwendet werden.

#import "@preview/metro:0.3.0": *
`$E=qty(210000, "N/mm^2")$` ergibt $E=qty(210000, "N/mm^2")$

Weitere Hinweise sind im #link("https://www.fh-muenster.de/maschinenbau/ansprechpartner/pruefungsamt/pruefungsordungen/thesis.php")["Leitfaden Bachelor Thesis"] zu finden.

== Tabellen

Tabellendaten können auch direkt aus einer CSV-Datei geladen werden:

#let daten = csv("../Beispieldaten.csv")

#figure(caption: [Beispieltabelle])[
  #table(
    columns: daten.first().len(),
    ..daten.flatten(),
  )
]<Verweis>

Siehe @tbl:Verweis