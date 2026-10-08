#import "../template/lib.typ": tablefigure

= Qualitätsanforderungen

#table(
  columns: (2.2fr, 1fr, 1fr, 1fr, 1.5fr),
  stroke: 0.5pt,
  table.header(
    [*Produktqualität*], [*sehr gut*], [*gut*], [*normal*], [*nicht relevant*],
  ),
  [Funktionalität],           [X], [],  [],  [],
  [Zuverlässigkeit],          [X], [],  [],  [],
  [Effizienz],                [],  [X], [],  [],
  [Benutzbarkeit (auch Gestaltung)], [X], [], [], [],
  [Wartbarkeit],              [],  [X], [],  [],
  [Übertragbarkeit (Portabilität)], [], [X], [], [],
)
