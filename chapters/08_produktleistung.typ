#import "req.typ": req, rref
#import "../template/lib.typ": tablefigure

= Produktleistung

#req("LL10") Die Software verfügt über eine grafische Benutzeroberfläche und ist ohne Vorkenntnisse in der Software-Entwicklung bedienbar.

#req("LL20") Das System verwaltet den aktuellen Tierbestand des Zoologischen Stadtgartens Karlsruhe (ca. 6.800 Tiere, 326 Tierarten) sowie den des Tierparks Oberwald. Die Anzahl verwalteter Tiere ist nach oben prinzipiell unbegrenzt.

#req("LL30") Analoges gilt für Pfleger, Ärzte, Gehege, Fütterungen und Behandlungen: Die Anzahl der Datensätze ist prinzipiell unbegrenzt.

#req("LL40") Suchanfragen und Listenansichten liefern Ergebnisse in unter drei Sekunden, auch bei vollständig befüllter Datenbank.

#req("LL50") Der Zugriff auf Daten ist rollenbasiert geschützt (siehe #rref("LD140")). Gesundheitsdaten und Personalstammdaten sind nur für berechtigte Rollen lesbar. Alle Zugriffe werden protokolliert.

#req("LL60") Das Produkt läuft auf aktuellen Windows- und Linux-Betriebssystemen.
