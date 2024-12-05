#import "../Layout/titelseite.typ": titelseite
#import "../Layout/Typographie.typ": datumsformat
#import "../Metadaten.typ": abschluss, autor, matrikelnummer, titel, betreuer, korreferenten, ort, datum 

#show: titelseite.with(
  bilder_oben: {
    image("../Bilder/fhm_Logo_CMYK_30mm.svg", width: 66mm)
    // Firmenlogo (optional)
    // #image("Bilder/Unternehmenslogo.jpg", width: 55mm)
  },
  überschrift: [#abschluss;thesis],
  autor: autor,
  matrikelnummer: matrikelnummer,
  titel: titel,
  betreuer_und_korreferenten: [
    Betreuer der Arbeit: #betreuer \
    #if korreferenten.len() == 1 [
      Korreferent: #korreferenten.at(0)
    ] else if korreferenten.len() > 1 [
      Korreferenten: #korreferenten.join(", ")
    ]
  ],
  datumszeile: [#ort, den #datetime.today().display(datumsformat)],
  bilder_unten: image("../Bilder/MB_CMYK.svg", width: 82mm),
)