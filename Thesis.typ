#import "Layout/Thesis_Layout.typ": thesis
#import "Metadaten.typ" as metadata
#import "Abhängigkeiten.typ": *

#set document(
  title: metadata.titel,
  author: metadata.autor,
  keywords: metadata.schlüsselwörter,
  date: metadata.datum,
)

#show: make-glossary

#show: thesis.with(
  vorspann: {
    include "Inhalt/Titelseite.typ"
    pagebreak()
    pagebreak()
    include "Inhalt/Sperrvermerk.typ"
    include "Inhalt/Eidesstattliche_Erklärung.typ"
    include "Inhalt/Vorwort.typ"
    include "Inhalt/Symbol_und_Abkürzungsverzeichnis.typ"
    include "Inhalt/Abbildungsverzeichnis.typ"
    include "Inhalt/Tabellenverzeichnis.typ"
    include "Inhalt/Quelltextverzeichnis.typ"
  },
  anhang: include "Inhalt/Anhang.typ",
  bibliography: bibliography("LiteraturDB.bib"),
)

#include "Inhalt/Kapitel1.typ"
#include "Inhalt/Kapitel2.typ"
#include "Inhalt/Kapitel3.typ"
#include "Inhalt/Kapitel4.typ"

//...

#include "Inhalt/Zusammenfassung.typ"


