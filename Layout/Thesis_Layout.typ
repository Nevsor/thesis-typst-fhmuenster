#import "../Abhängigkeiten.typ": *

#import "Typographie.typ": sans-font
#import "Hauptteil.typ": hauptteil
#import "Vorspann.typ": vorspann as layout_vorspann
#import "Typographie.typ": font, sans-font, typographie

#let thesis(
  vorspann: [],
  bibliography: [],
  anhang: [],
  body,
) = {

  set page(
    paper: "a4",
    margin: (left: 4.5cm, right: 2.7cm, top: 2cm, bottom: 2cm),
    numbering: none,
  )

  show heading.where(level: 1): it => {
    set text(size: 20pt)

    pagebreak(weak: true)
    v(2.5cm)
    it
    v(0.5cm)
  }

  show: typographie

  show figure.caption: it => {
    it
    v(0.1cm)
  }

  metro-setup(output-decimal-marker: ",")

  show: codly-init
  codly(languages: codly-languages)

  // show math.equation: set text(weight: 400)

  layout_vorspann(vorspann)

  show heading: i-figured.reset-counters
  show figure: i-figured.show-figure
  show math.equation: i-figured.show-equation

  show outline.entry.where(level: 1): it => {
    set text(font: sans-font)
    show repeat: none

    v(16pt, weak: true)
    strong(it)
  }

  outline(indent: auto)

  // Hauptteil
  hauptteil(body)

  bibliography

  set heading(numbering: "A.1")
  counter(heading).update(0)
  anhang
  
}

