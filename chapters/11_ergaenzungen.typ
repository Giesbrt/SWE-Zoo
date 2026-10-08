#import "../template/lib.typ": tablefigure

= Ergänzungen

*Plattform:* Das Produkt läuft auf Windows 10/11 und aktuellen Linux-Distributionen. Eine Weboberfläche ist nicht gefordert.

*Datenschutz:* Personenbezogene Daten der Mitarbeiter (Pfleger, Ärzte) unterliegen der DSGVO. Das System speichert nur die für den Betrieb notwendigen Personaldaten und schränkt den Zugriff auf berechtigte Rollen ein (siehe /LD140/).

*Qualität der Import- und Exportfunktionen* (/LF130/) wird durch folgende Tests nachgewiesen:

- Einlesen fehlerhafter Dateien: Das System weist fehlerhafte Datensätze zurück und importiert fehlerfreie Datensätze korrekt.
- Close-Loop-Test: Exportierte Daten werden reimportiert und mit dem Ausgangsbestand verglichen — beide müssen identisch sein.
- Zweifacher Close-Loop-Test: Der Close-Loop-Test wird ein zweites Mal auf dem reimportierten Datenbestand durchgeführt.

*Entwicklungsumgebung:* Die eingesetzte Programmiersprache und das Datenbanksystem werden im Pflichtenheft festgelegt.
