// LTeX: enabled=false
#import "template/lib.typ": caption-with-source, dhbw-ka-adapter
#import "glossary.typ": abbreviations, glossary
#import "appendix.typ": appendices

#show: dhbw-ka-adapter.with(
  lang: "de",

  // Wether to display a signature line for the statutory declaration
  digital-submission: true,

  // Set to false if you also submit a printed copy of your thesis. Important for the statutory declaration
  digital-only: true,

  // Set to false if you do not need a confidentiality clause
  confidentiality-clause: false,

  // Add AI tools used for this thesis here, according to 4.6 of "Leitlinien für Wissenschaftliche Arbeiten in Bachelorstudiengängen Studienbereich Technik"

  // Long title, displayed on cover slide
  title-long: "Lastenheft für eine Zooverwaltung des Karlsruher Zoos",

  // Shorter title, displayed in header of each file
  title-short: "Lastenheft für eine Zooverwaltung",

  thesis-type: "Lastenheft",
  examination: "Bachelor of Science (B.Sc.)",
  study: "Computer Science",

  authors: (
    (
      firstname: "Dominic",
      lastname: "Neufeld",
      matriculation-number: "0000000",
      course: "TINF25B1",
      // remove if you do not have a signature image
      //signature: image("assets/placeholder-signature.png"),
    ), // make sure to keep this comma after the first author if there is only one author!
    (
      firstname: "Vsevolod",
      lastname: "Iorhov",
      matriculation-number: "0000000",
      course: "TINF25B1",
    ),
    (
      firstname: "Max",
      lastname: "Franken",
      matriculation-number: "0000000",
      course: "TINF25B1",
    ),
  ),

  signature-city: "Karlsruhe",

  // Set to specific date with "24.12.2026"
  submission-date: datetime.today().display("[day].[month].[year]"),

  processing-period-weeks: 12,
  university-supervisor: "Richard Lutz",
)

// You can now start writing :)

//#include "chapters/basic_formatting.typ"
#include "chapters/01_zielbestimmung.typ"
#include "chapters/02_produkteinsatz.typ"
#include "chapters/03_zielgruppen.typ"
#include "chapters/04_zusammenspiel.typ"
#include "chapters/05_Verfuegbarkeitsbetrachtungen.typ"
#include "chapters/06_produktfunktionen.typ"
#include "chapters/07_produktdaten.typ"
#include "chapters/08_produktleistung.typ"
#include "chapters/09_benutzungsoberfläche.typ"
#include "chapters/10_qualitaetsanforderungen.typ"
#include "chapters/11_ergaenzungen.typ"

