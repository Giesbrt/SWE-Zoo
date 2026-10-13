#import "../template/lib.typ": tablefigure

= Zusammenspiel mit anderen Systemen

Die Zoo-Verwaltung ist ein eigenständiges System, das alle Kernaufgaben selbst abdeckt. Schnittstelle S1 ist verpflichtend; S2 bis S6 sind optionale Erweiterungen.

/S1/ *Datei-Import und -Export (Muss):* Daten werden in lesbarem Format (z.B. CSV) ex- und importiert, einzeln oder gesamt (→ /LD150/). Bidirektional.

/S2/ *Benutzerverwaltung der Stadt Karlsruhe (Kann):* Anmeldung und Rollenzuordnung (→ /LD140/) über den zentralen Verzeichnisdienst des Trägers (Single Sign-on). Eingehend.

/S3/ *Personalsystem des Trägers (Kann):* Mitarbeiterstammdaten (→ /LD70/, /LD80/) aus dem Personalsystem der Stadt Karlsruhe. Eingehend.

/S4/ *Zootierdatenbank ZIMS und EAZA-Zuchtbücher (Kann):* Abgleich von Tierdaten (Herkunft, Geburt, Transfer) mit ZIMS (Species360) und Erhaltungszuchtprogrammen. Bidirektional.

/S5/ *Kassen- und Ticketsystem (Kann):* Besucherzahlen und Restaurantöffnungszeiten (→ /LD130/) aus den Kassensystemen. Eingehend.

/S6/ *Zoo-Website und Besucher-Info (Kann):* Öffentliche Tierinformationen (Tierart, Herkunft, Fütterungszeiten) für Website und Besucher-Info; keine internen Daten. Ausgehend, nur lesend.
