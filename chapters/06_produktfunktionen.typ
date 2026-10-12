#import "req.typ": req, rref
#import "../template/lib.typ": tablefigure

= Produktfunktionen

#req("LF10") Der Benutzer kann Tiere mit ihren Stammdaten (Tierart, Herkunft, Geburtsdatum, Geschlecht, Gesundheitsstatus) über eine grafische Oberfläche anlegen, suchen, bearbeiten und löschen.

#req("LF20") Der Benutzer kann Gehege, Ställe, Bereiche und Gebäude anlegen, bearbeiten und löschen sowie deren Kapazität und Zustand erfassen.

#req("LF30") Der Benutzer kann Tiere einem Gehege zuweisen. Beim Zuweisen wählt er aus einer Liste aller vorhandenen Gehege aus. Einem Tier ist zu jedem Zeitpunkt genau ein Gehege zugeordnet.

#req("LF40") Der Benutzer kann Fütterungen für ein Tier erfassen: Datum, Uhrzeit, Futtermittel, Menge und zuständiger Pfleger. Wiederkehrende Fütterungen lassen sich als Fütterungsplan anlegen und automatisch einplanen.

#req("LF50") Der Benutzer kann den Futtermittelbestand verwalten (Futtermittelart, Lagerort, Menge, Mindestbestand). Das System zeigt an, welche Futtermittel den Mindestbestand unterschreiten.

#req("LF60") Der Benutzer kann tierärztliche Behandlungen und Untersuchungen zu einem Tier erfassen: Datum, Diagnose, Maßnahme und behandelnder Arzt. Die Behandlungshistorie eines Tieres ist chronologisch abrufbar.

#req("LF70") Der Benutzer kann Personal (Tierpfleger, Zootierärzte) anlegen und Bereichen sowie einzelnen Tieren zuordnen. Qualifikationen und Zuständigkeiten des Personals werden gespeichert.

#req("LF80") Durch Navigationsmöglichkeiten werden alle einem Tier zugeordneten Informationen (Gehege, Fütterungen, Behandlungen, Pfleger) direkt angezeigt.

#req("LF90") Die Suchfunktion ermöglicht das Suchen nach Tieren, Tierarten, Pflegern, Gehegen und Behandlungen. Die Suche unterstützt Wildcards und filtert nach mehreren Kriterien gleichzeitig.

#req("LF100") Alle Listen (Tiere, Gehege, Personal usw.) lassen sich alphabetisch oder nach weiteren Kriterien (z.B. Bereich, Tierart) sortieren.

#req("LF110") Der Benutzer kann Berichte und Übersichten ausgeben, z.B. den Gehege-Belegungsplan, die Fütterungshistorie eines Tieres oder die Behandlungshistorie.

#req("LF120") Der Benutzer kann die Zoohierarchie (Bereiche → Gehege → Tiere) und die taxonomische Einordnung einer Tierart (Klasse, Ordnung, Familie, Art) einsehen und pflegen.

#req("LF130") Das System stellt Import- und Exportfunktionen für alle Kerndaten in einem lesbaren Format (z.B. CSV) bereit — einzeln und gesamt (siehe #rref("S1")).
