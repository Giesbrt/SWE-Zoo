#import "../template/lib.typ": tablefigure

= Zusammenspiel mit anderen Systemen

Die Zoo-Verwaltung ist ein eigenständiges System, das alle Kernaufgaben (Tiere, Gehege, Personal, Fütterung, Behandlungen) selbst abdeckt. Zusätzlich bestehen Schnittstellen zu Fremdsystemen, die dem Austausch von Daten dienen. Die Schnittstelle S1 ist verpflichtend. Die Schnittstellen S2 bis S6 sind optionale Erweiterungen, ohne die das Produkt vollständig nutzbar bleibt.

/S1/ *Datei-Import und -Export (Muss):* Daten können in einem lesbaren Dateiformat (z.B. CSV) einzeln oder gesamt exportiert und wieder importiert werden (siehe /LD150/). Die Schnittstelle dient dem Datenaustausch und der Datensicherung. Datenrichtung: eingehend und ausgehend.

/S2/ *Benutzerverwaltung der Stadt Karlsruhe (Kann):* Die Anmeldung und die Zuordnung der Benutzerrollen (siehe /LD140/) können über den zentralen Verzeichnisdienst des Trägers erfolgen (Single Sign-on), sodass keine eigenen Passwörter verwaltet werden müssen. Datenrichtung: eingehend.

/S3/ *Personalsystem des Trägers (Kann):* Die Stammdaten der Mitarbeiter (Personalnummer, Name, Kontaktdaten) für Pfleger und Ärzte (siehe /LD70/, /LD80/) können aus dem Personalsystem der Stadt Karlsruhe übernommen werden. Datenrichtung: eingehend.

/S4/ *Zootierdatenbank ZIMS (Species360) und EAZA-Zuchtbücher (Kann):* Tierdaten wie Herkunft, Geburt, Abgabe und Transfer können mit der internationalen Zootierdatenbank und den Zuchtbüchern der Erhaltungszuchtprogramme abgeglichen werden. Datenrichtung: eingehend und ausgehend.

/S5/ *Kassen- und Ticketsystem sowie Gastronomie-Kassen (Kann):* Besucherzahlen und die Öffnungszeiten der Restaurants (siehe /LD130/) können aus den Kassensystemen des Zoos übernommen werden. Datenrichtung: eingehend.

/S6/ *Zoo-Website und Besucher-Info (Kann):* Öffentliche Tierinformationen (z.B. Tierart, Herkunft, Fütterungszeiten) werden für die Website und Besucher-Info bereitgestellt. Es werden keine internen Daten wie Gesundheitsdaten oder Personaldaten veröffentlicht. Datenrichtung: ausgehend, nur lesend.
