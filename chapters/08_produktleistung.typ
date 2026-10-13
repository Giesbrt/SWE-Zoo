#import "req.typ": req, rref
#import "../template/lib.typ": tablefigure

= Produktleistung

#req("LL10") Die Software verfügt über eine grafische Benutzeroberfläche und ist ohne spezielle Vorkenntnisse bedienbar.

#req("LL20") Das System verwaltet den Tierbestand des Zoologischen Stadtgartens Karlsruhe (ca. 6.800 Tiere, 326 Tierarten) und des Tierparks Oberwald; die Datenmenge ist prinzipiell unbegrenzt.

#req("LL30") Analoges gilt für Pfleger, Ärzte, Gehege (mindestens mehrere Hundert) sowie Fütterungseinträge und Behandlungen (mindestens mehrere Tausend pro Jahr).

#req("LL40") Suchanfragen und Listenansichten liefern Ergebnisse in unter drei Sekunden, auch bei vollständig befüllter Datenbank.

#req("LL50") Der Zugriff ist rollenbasiert geschützt (siehe #rref("LD140")): Gesundheits- und Personalstammdaten nur für berechtigte Rollen; alle Zugriffe werden protokolliert.

#req("LL60") Das Produkt läuft auf aktuellen Windows- und Linux-Betriebssystemen.
