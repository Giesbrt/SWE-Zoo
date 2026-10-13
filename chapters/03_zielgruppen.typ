#import "../template/lib.typ": tablefigure

= Zielgruppen, Benutzerrollen, Verantwortlichkeiten

== Zielgruppen
Zielgruppe sind die Mitarbeiter des Karlsruher Zoos (Tierpfleger, Zootierärzte, Verwaltungsangestellte, Management); durchschnittliche Computerkenntnisse werden vorausgesetzt.

== Benutzerrollen und Verantwortlichkeiten

#table(
  columns: (1.4fr, 2.6fr),
  stroke: 0.5pt,
  table.header([*Rolle*], [*Zugriffsrechte*]),
  [Tierpfleger],          [Fütterungen erfassen; Tier- und Gehegedaten lesen],
  [Zootierarzt],          [Behandlungen und Gesundheitsdaten lesen / schreiben; Tierdaten lesen],
  [Verwaltungsangestellte],[Stammdaten (Tiere, Personal, Gehege, Futter) anlegen und bearbeiten; keine Gesundheitsdaten],
  [Management],           [Lesezugriff auf alle Daten; Berichte abrufen],
  [Administrator],        [Vollzugriff; Benutzerverwaltung, Installation, Backup],
)
