// Diese Datei fasst alle Abhängigkeiten zu externen Paketen zusammen, damit
// diese nur einmal auftauchen und einfacher aktualisiert werden können.

 // Setzen von Zahlen und Einheiten
#import "@preview/metro:0.3.0": *

// Erweiterte Möglichkeiten die Nummerierung von Formeln, Abbildunge, etc zu beeinflussen.
#import "@preview/i-figured:0.2.4" 

// Formatierung von Quelltexten
#import "@preview/codly:1.1.1": codly, codly-init 
#import "@preview/codly-languages:0.1.3": codly-languages 

// Umflossene Abbildungen, etc.
#import "@preview/wrap-it:0.1.1": wrap-content 

// Latex-Logo
#import "@preview/metalogo:1.0.2": LaTeX 

// Symbol- und Abkürzungsverzeichnis
#import "@preview/glossarium:0.5.1": make-glossary, register-glossary, print-glossary, gls, glspl

// Plots mit GnuPlot
#import "@preview/neoplot:0.0.2"

#import "@preview/oasis-align:0.2.0": *