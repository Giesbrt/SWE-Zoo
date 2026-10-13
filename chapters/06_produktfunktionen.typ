#import "req.typ": req, rref
#import "../template/lib.typ": tablefigure

= Produktfunktionen

#req("LF10") Der Benutzer kann Tiere mit ihren Stammdaten (Tierart, Herkunft, Geburtsdatum, Geschlecht, Gesundheitsstatus) über eine grafische Oberfläche anlegen, suchen, bearbeiten und löschen.

#req("LF20") Der Benutzer kann Gehege, Ställe, Bereiche und Gebäude anlegen, bearbeiten und löschen sowie deren Kapazität und Zustand erfassen.

#req("LF30") Der Benutzer kann Tiere per Auswahlliste einem Gehege zuweisen; einem Tier ist zu jedem Zeitpunkt genau ein Gehege zugeordnet.

#req("LF40") Der Benutzer kann Fütterungen für ein Tier erfassen: Datum, Uhrzeit, Futtermittel, Menge und zuständiger Pfleger. Wiederkehrende Fütterungen lassen sich als Fütterungsplan anlegen, der regelmäßig anfallende Termine vorgibt.

#req("LF50") Der Benutzer kann den Futtermittelbestand verwalten (Art, Lagerort, Menge, Mindestbestand); Unterschreitungen des Mindestbestands werden automatisch gemeldet.

#req("LF60") Der Benutzer kann tierärztliche Behandlungen zu einem Tier erfassen (Datum, Diagnose, Maßnahme, Arzt); die Behandlungshistorie ist chronologisch abrufbar.

#req("LF70") Der Benutzer kann Personal (Tierpfleger, Zootierärzte) anlegen und Bereichen sowie einzelnen Tieren zuordnen. Qualifikationen und Zuständigkeiten des Personals werden gespeichert.

#req("LF80") Das System zeigt zu jedem Tier alle zugeordneten Informationen (Gehege, Fütterungen, Behandlungen, Pfleger) direkt an.

#req("LF90") Die Suchfunktion unterstützt Wildcards und Mehrfach-Filter für Tiere, Tierarten, Pfleger, Gehege und Behandlungen.

#req("LF100") Alle Listen (Tiere, Gehege, Personal usw.) lassen sich alphabetisch oder nach weiteren Kriterien (z.B. Bereich, Tierart) sortieren.

#req("LF110") Der Benutzer kann Berichte und Übersichten ausgeben, z.B. den Gehege-Belegungsplan, die Fütterungshistorie eines Tieres oder die Behandlungshistorie.

#req("LF120") Der Benutzer kann die Zoohierarchie (Bereiche → Gehege → Tiere), die taxonomische Einordnung einer Tierart (Klasse, Ordnung, Familie, Art) sowie die zugehörigen Tierinformationen einsehen und pflegen.

#req("LF130") Das System stellt Import- und Exportfunktionen für alle Kerndaten in einem lesbaren Format (z.B. CSV) bereit, einzeln und gesamt (siehe #rref("S1")).

#req("LF140") Der Benutzer kann Restaurants (Name, Standort, Öffnungszeiten) anlegen, bearbeiten und löschen.
