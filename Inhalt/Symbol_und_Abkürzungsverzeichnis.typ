#import "../Abhängigkeiten.typ": *
    
#let Abkürzungen = (
  (
    key: "CAD",
    short: "CAD",
    long: "Computer-Aided-Design",
    description: "Softwaresysteme zur Unterstützung der Konstruktion",
    group: "Abkürzungen",
  ),
  (
    key: "CAM",
    short: "CAM",
    long: "Computer-Aided-Manufacturing",
    description: "Softwaresysteme zur Unterstützung der Fertigung",
    group: "Abkürzungen",
  ),
  (
    key: "F-quer",
    short:  $F_#sym.perp$,
    long: "Querkraft",
    description: "Die Kraft quer zur Referenzrichtung",
    plural: "F-quer",
    longplural: "Querkräfte",
    group: "Symbole",
  ),
  (
    key: "F-längs",
    short:  $F_#sym.parallel$,
    long: "Längskraft",
    description: "Die Kraft längs zur Referenzrichtung",
    plural: "F-längs",
    longplural: "Längskräfte",
    group: "Symbole",
  ),
)

#register-glossary(Abkürzungen)

= Symbol- und Abkürzungsverzeichnis
#print-glossary(
  Abkürzungen,
  disable-back-references: true,
)