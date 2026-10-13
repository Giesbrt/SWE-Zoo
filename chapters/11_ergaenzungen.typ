#import "../template/lib.typ": tablefigure

= Ergänzungen

*Plattform:* Das Produkt läuft auf Windows 10/11 und aktuellen Linux-Distributionen. Eine Weboberfläche ist nicht gefordert.

*Datenschutz:* Personenbezogene Mitarbeiterdaten unterliegen der DSGVO; das System speichert nur betriebsnotwendige Daten und beschränkt den Zugriff auf berechtigte Rollen (→ /LD140/).

*Die Qualität der Import- und Exportfunktionen* (/LF130/) wird durch folgende Tests nachgewiesen:

- Einlesen fehlerhafter Dateien: fehlerhafte Datensätze werden zurückgewiesen, fehlerfreie korrekt importiert.
- Close-Loop-Test: exportierte Daten werden reimportiert und müssen mit dem Ausgangsbestand identisch sein.
- Zweifacher Close-Loop-Test: der Close-Loop-Test wird auf dem reimportierten Datenbestand wiederholt.

*Entwicklungsumgebung:* Programmiersprache und Datenbanksystem werden im Pflichtenheft festgelegt.
