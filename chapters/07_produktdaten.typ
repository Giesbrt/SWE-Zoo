#import "req.typ": req, rref
#import "../template/lib.typ": tablefigure

= Produktdaten

Die folgenden Daten werden dauerhaft in einer relationalen Datenbank gespeichert (siehe Kapitel Zielbestimmung).

#req("LD10") *Tiere:* Name, Tierart, Geschlecht, Geburtsdatum, Herkunft, Gesundheitsstatus und weitere Tierinformationen. Jedes Tier ist genau einem Gehege zugeordnet.

#req("LD20") *Tierarten (Taxonomie und Tierinformationen):* Bezeichnung (deutsch und wissenschaftlich), taxonomische Einordnung in der Hierarchie Klasse - Ordnung - Familie - Art sowie beschreibende Tierinformationen (natürlicher Lebensraum, Verhalten, Erhaltungsstatus nach IUCN, ggf. Schutzprogramm).

#req("LD30") *Bereiche:* Name (z.B. Afrika-Savanne, Affenhaus) und zugeordnete Gehege. Bereiche können dem Zoo oder dem angegliederten Tierpark Oberwald angehören.

#req("LD40") *Gehege:* Bezeichnung, Typ, Kapazität, Zustand und der zugehörige Bereich. Einem Gehege können Tiere und Ställe zugeordnet werden, maximal bis zur angegebenen Kapazität.

#req("LD50") *Ställe (Innengehege):* Bezeichnung, Kapazität und das zugehörige Gehege sowie ggf. das Gebäude, in dem sie liegen.

#req("LD60") *Gebäude:* Bezeichnung, Gebäudeart (Tierhaus, Verwaltungsgebäude, Restaurant, Lager) und Standort im Zoo.

#req("LD70") *Pfleger:* Name, Personalnummer, Kontaktdaten, Qualifikationen sowie Zuordnung zu Bereichen und Tieren.

#req("LD80") *Ärzte (Zootierärzte):* Name, Personalnummer, Kontaktdaten, Fachgebiete sowie Zuordnung zu Tieren.

#req("LD90") *Personalstruktur:* Organisatorische Einheit (Zooleitung, Tierpflege-Abteilung je Bereich, Tierärztlicher Dienst, Gastronomie/Infrastruktur, Verwaltung) und Vorgesetztenbeziehung der Mitarbeiter.

#req("LD100") *Futter:* Futterart, Einheit, Lagerbestand und Lagerort. Futterarten sind den Tierarten zugeordnet, für die sie geeignet sind.

#req("LD110") *Fütterungen:* Tier, Futter, Menge, geplanter Zeitpunkt, durchführender Pfleger sowie Protokoll der tatsächlichen Durchführung (Zeitpunkt, Menge, Bemerkung).

#req("LD120") *Tierärztliche Behandlungen und Untersuchungen:* Tier, behandelnder Arzt, Datum, Diagnose, Maßnahme, Medikation und Ergebnis. Sie bilden die Gesundheitshistorie eines Tieres.

#req("LD130") *Restaurants:* Name, Gebäude bzw. Standort im Zoo und Öffnungszeiten.

#req("LD140") *Benutzer und Rollen:* Benutzerkonto, Rolle (Pfleger, Arzt, Verwaltungsangestellter, Management, Administrator) und die zugehörigen Berechtigungen.

#req("LD150") *Import-/Exportdateien:* Der Datenaustausch erfolgt in einem lesbaren Dateiformat (z.B. CSV).

== Zuordnungen und Hierarchien

*Zuordnungen:* Tier–Gehege (n:1), Tier–Tierart, Pfleger–Bereich/Tier, Arzt–Tier, Futter–Tierart, Fütterung–Tier/Futter/Pfleger, Gehege/Stall–Gebäude, Restaurant–Gebäude.

*Hierarchien:* Zoo/Tierpark → Bereich → Gehege → Tier (bzw. Stall); Taxonomie: Klasse → Ordnung → Familie → Art; Personalstruktur: Zooleitung → Abteilungen → Mitarbeiter.
