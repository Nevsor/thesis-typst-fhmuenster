#import "../Abhängigkeiten.typ": *

#let font = "Times New Roman"
#let sans-font = "Calibri"

// #let font = "New Computer Modern"
// #let sans-font = "New Computer Modern Sans"

#let datumsformat = "[day].[month].[year]"

#let typographie(body) = {
  set par(
    leading: 0.65em,
    justify: true,
    first-line-indent: 0.5cm,
    spacing: 0.65em,
  )

  set text(
    lang: "de",
    size: 11pt,
    font: font,
  )

  show heading: set text(font: sans-font)

  show link: it => {
    set text(fill: rgb("#0000EE"))
    // show: underline
    show: box

    it
  }

  body
}

