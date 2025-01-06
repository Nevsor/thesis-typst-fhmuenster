#import "Typographie.typ": sans-font
#import "../Abhängigkeiten.typ": oasis-align

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

  align(center,
    if bilder_oben.len() == 1 {
      bilder_oben.at(0)
    }
    else if bilder_oben.len() == 2 {
      oasis-align(int-dir:-1,
        bilder_oben.at(0),
        bilder_oben.at(1)
      )
    }
  )

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