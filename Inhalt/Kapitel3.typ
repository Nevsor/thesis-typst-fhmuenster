#import "../Abhängigkeiten.typ": *

= Bilder einbinden

== Abbildungen

=== Abbildung an festem Ort

#align(
  center,
  figure(
    image("../Bilder/fhm_Logo_CMYK_30mm.svg"),
    caption: "FH-Logo",
  ),
)
#lorem(50)

=== Umflossene Abbildungen

#wrap-content(
  figure(
    image("../Bilder/fhm_Logo_CMYK_30mm.svg", width: 70mm),
    caption: "FH-Logo",
  ),
  lorem(100),
)

=== Abbildung als Gleitobjekt

#place(auto, float: true)[
  #figure(
    image("../Bilder/fhm_Logo_CMYK_30mm.svg"),
    caption: "FH-Logo",
     
  )<float>
]

Gleitobjekte wie @fig:float "fließen" immer zum oberen Rand (`top`), unteren Rand (`bottom`) oder dem näheren dieser beiden Ränder (`auto`).

=== Abbildungen mit fletcher

#import "@preview/fletcher:0.5.2" as fletcher: diagram, node, edge

#let colors = (maroon, olive, eastern)

#diagram(	
  edge-stroke: 1pt,
	node-corner-radius: 5pt,
	edge-corner-radius: 8pt,
	mark-scale: 80%,

	node((0,0), [input], fill: colors.at(0)),
	node((2,+1), [memory unit (MU)], fill: colors.at(1)),
	node((2, 0), align(center)[arithmetic & logic \ unit (ALU)], fill: colors.at(1)),
	node((2,-1), [control unit (CU)], fill: colors.at(1)),
	node((4,0), [output], fill: colors.at(2), shape: fletcher.shapes.hexagon),

	edge((0,0), "r,u,r", "-}>"),
	edge((2,-1), "r,d,r", "-}>"),
	edge((2,-1), "r,dd,l", "--}>"),
	edge((2,1), "l", (1,-.5), marks: ((inherit: "}>", pos: 0.65, rev: false),)),

	for i in range(-1, 2) {
		edge((2,0), (2,1), "<{-}>", shift: i*5mm, bend: i*20deg)
	},

	edge((2,-1), (2,0), "<{-}>"),)

=== Plots mit CeTZ-Plot

#import "@preview/cetz:0.3.1": canvas, draw
#import "@preview/cetz-plot:0.1.0": plot

#let style = (stroke: black, fill: rgb(0, 0, 200, 75))

#let f1(x) = calc.sin(x)
#let fn = (
  ($ x - x^3"/"3! $, x => x - calc.pow(x, 3)/6),
  ($ x - x^3"/"3! - x^5"/"5! $, x => x - calc.pow(x, 3)/6 + calc.pow(x, 5)/120),
  ($ x - x^3"/"3! - x^5"/"5! - x^7"/"7! $, x => x - calc.pow(x, 3)/6 + calc.pow(x, 5)/120 - calc.pow(x, 7)/5040),
)

#set text(size: 10pt)

#canvas({
  import draw: *

  // Set-up a thin axis style
  set-style(axes: (stroke: .5pt, tick: (stroke: .5pt)),
            legend: (stroke: none, orientation: ttb, item: (spacing: .3), scale: 80%))

  plot.plot(size: (12, 8),
    x-tick-step: calc.pi/2,
    x-format: plot.formats.multiple-of,
    y-tick-step: 2, y-min: -2.5, y-max: 2.5,
    legend: "inner-north",
    {
      let domain = (-1.1 * calc.pi, +1.1 * calc.pi)

      for ((title, f)) in fn {
        plot.add-fill-between(f, f1, domain: domain,
          style: (stroke: none), label: title)
      }
      plot.add(f1, domain: domain, label: $ sin x  $,
        style: (stroke: black))
    })
})

== Quelltext

#lorem(50)#footnote[Fußnote]

#v(1em)

#figure(caption: [Beispielquelltext])[
  ```c
  /* Kommentar */
  for (int i = 0; i < 100; i++) {
    printf("Beispiel");
  }
  ```
]

#v(1em)

#figure(caption: [Beispielquelltext 2])[
  ```java
  public static void annoyMe(final String bar) {
  while(true)
    System.out.println("I'm an annoying method...");
  }
  ```
]