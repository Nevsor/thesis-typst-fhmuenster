#import "Typographie.typ": sans-font

#let titelseite(
  bilder_oben: [],
  überschrift: [],
  autor: [],
  matrikelnummer: [],
  titel: [],
  betreuer_und_korreferenten: [],
  datumszeile: [],
  bilder_unten: [],
  hauptteil
) = {

  set page(
    margin: (top: 1cm, bottom: 0.7cm, left: 4.6cm, right: 3.6cm),
  )

  set align(right)

  align(center)[#bilder_oben]

  v(1fr)

  text(size: 25pt, font: sans-font, weight: "bold")[#überschrift]

  v(3cm)

  text(size: 17pt)[#autor]

  v(0.1cm)

  text(size: 12pt)[Matrikelnummer: #matrikelnummer]

  v(2cm)
    
  text(size: 17pt)[#smallcaps(titel)]

  v(2cm)

  text(14pt)[#betreuer_und_korreferenten]

  v(2.3cm)

  datumszeile

  v(1fr)

  align(center)[#bilder_unten]

}