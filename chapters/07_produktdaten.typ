#import "../template/lib.typ": tablefigure

= Produktdaten

Die folgenden Daten werden dauerhaft in einer relationalen Datenbank gespeichert (siehe Kapitel Zielbestimmung).

/LD10/ *Tiere:* Name, Tierart, Geschlecht, Geburtsdatum, Herkunft, Gesundheitsstatus und weitere Tierinformationen. Jedes Tier ist genau einem Gehege zugeordnet.

/LD20/ *Tierarten (Taxonomie):* Bezeichnung (deutsch und wissenschaftlich) und taxonomische Einordnung in der Hierarchie Klasse - Ordnung - Familie - Art.

/LD30/ *Bereiche:* Name (z.B. Afrika-Savanne, Affenhaus) und zugeordnete Gehege. Bereiche können dem Zoo oder dem angegliederten Tierpark Oberwald angehören.

/LD40/ *Gehege:* Bezeichnung, Typ, Kapazität, Zustand und der zugehörige Bereich. Einem Gehege sind beliebig viele Tiere und Ställe zugeordnet, höchstens jedoch bis zur Kapazität des Geheges.

/LD50/ *Ställe (Innengehege):* Bezeichnung, Kapazität und das zugehörige Gehege sowie ggf. das Gebäude, in dem sie liegen.

/LD60/ *Gebäude:* Bezeichnung, Gebäudeart (Tierhaus, Verwaltungsgebäude, Restaurant, Lager) und Standort im Zoo.

/LD70/ *Pfleger:* Name, Personalnummer, Kontaktdaten, Qualifikationen sowie Zuordnung zu Bereichen und Tieren.

/LD80/ *Ärzte (Zootierärzte):* Name, Personalnummer, Kontaktdaten, Fachgebiete sowie Zuordnung zu Tieren.

/LD90/ *Personalstruktur:* Organisatorische Einheit (Zooleitung, Tierpflege-Abteilung je Bereich, Tierärztlicher Dienst, Gastronomie/Infrastruktur, Verwaltung) und Vorgesetztenbeziehung der Mitarbeiter.

/LD100/ *Futter:* Futterart, Einheit, Lagerbestand und Lagerort. Futterarten sind den Tierarten zugeordnet, für die sie geeignet sind.

/LD110/ *Fütterungen:* Tier, Futter, Menge, geplanter Zeitpunkt, durchführender Pfleger sowie Protokoll der tatsächlichen Durchführung (Zeitpunkt, Menge, Bemerkung).

/LD120/ *Tierärztliche Behandlungen und Untersuchungen:* Tier, behandelnder Arzt, Datum, Diagnose, Maßnahme, Medikation und Ergebnis. Sie bilden die Gesundheitshistorie eines Tieres.

/LD130/ *Restaurants:* Name, Gebäude bzw. Standort im Zoo und Öffnungszeiten.

/LD140/ *Benutzer und Rollen:* Benutzerkonto, Rolle (Pfleger, Arzt, Verwaltungsangestellter, Management, Administrator) und die zugehörigen Berechtigungen.

/LD150/ *Import-/Exportdateien:* Der Datenaustausch erfolgt in einem lesbaren Dateiformat (z.B. CSV).

== Zuordnungen und Hierarchien

Die Produktdaten enthalten folgende Zuordnungen:

- Tier - Gehege (ein Gehege enthält mehrere Tiere, ein Tier lebt in genau einem Gehege)
- Tier - Tierart (jedes Tier gehört genau einer Tierart an)
- Pfleger - Bereich und Pfleger - Tier
- Arzt - Tier (über Behandlungen und Untersuchungen)
- Futter - Tierart und Fütterung - Tier, Futter, Pfleger
- Gehege/Stall - Gebäude
- Restaurant - Gebäude

Die Produktdaten bilden folgende Hierarchien ab:

- Zoo/Tierpark - Bereich - Gehege - Tier (bzw. Gehege - Stall)
- Taxonomie: Klasse - Ordnung - Familie - Art
- Personalstruktur: Zooleitung - Abteilungen - Mitarbeiter
