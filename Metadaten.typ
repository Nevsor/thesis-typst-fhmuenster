#let titel = "Titel der Abschlussthesis"
#let abschluss = "Bachelor"
#let studiengang = "Maschinenbauinformatik"
#let betreuer = "Prof. Dr. Musterfrau"
#let korreferenten = ("Prof. Dr. Mustermann",)
#let autor = "Max Mustermann"
#let matrikelnummer = "123456"
#let datum = datetime.today()
#let ort = "Steinfurt"
#let schlüsselwörter = ("Hier", "Schlüsselwörter", "einfügen")

// Optional: Unternehmenslogo auf Titelseite
#let unternehmenslogo = none
// #let unternehmenslogo = "Bilder/logo_hier_einfügen.svg"

// Optional: Sperrvermerk
// #let sperrvermerk_bis = none
#let sperrvermerk_bis = datetime(
  year: datum.year() + 4,
  month: datum.month(),
  day: datum.day(),
)