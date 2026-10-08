# Zoo-Verwaltung – Projektkontext & Lastenheft-Grundlagen

## Aufgabe (aus Vorlesungsfolien SWE1, DHBW)

Erstellt in **Dreiergruppen** ein Lastenheft für die Applikation **Zoo-Verwaltung** mit folgenden Kernelementen:

> Tiere, Pfleger, Ärzte, Gehege, Ställe, Bereiche, Gebäude, Futter, Fütterungen,
> Tierinformationen, Restaurants uvm. + **Zuordnungen + Hierarchien**

---

## Kontext: Zoologischer Stadtgarten Karlsruhe

### Eckdaten
| Eigenschaft | Wert |
|---|---|
| Gegründet | 9. September 1865 (einer der ältesten Zoos Deutschlands) |
| Fläche gesamt | 22 Hektar (davon 9 ha Zoo) |
| Tierbestand | ca. 6.800 Tiere, 326 Arten |
| Jahresbesucher | ca. 1.125.000 (2025) |
| Träger | Stadt Karlsruhe |
| Förderverein | „Zoofreunde Karlsruhe e.V." |
| Zusatzanlage | Tierpark Oberwald (16 ha, robuste Wildtiere wie Bison, Przewalski-Pferde) |

### Bereiche & Anlagen (relevant für die Software)
- **Afrika-Savanne** (Neueröffnung 2023) – Großsäuger, Giraffen, Zebras
- **Eisbärenanlage** (seit 2000) – arktische Tiere
- **Affenhaus** – Schimpansen, Primaten
- **Exotenhaus** – Reptilien, Amphibien
- **Himalaya-Bergwelt** – Schneeleoparden, Kleine Pandas
- **Wasseranlagen** – Pinguine, Robben
- **Rosengarten** (15.000 Rosen), **Japanischer Garten**
- **Restaurants / Gastronomie** auf dem Gelände
- **Tierpark Oberwald** (angegliedert, eigene Verwaltung)

### Organisatorische Einheiten (Hierarchien)
- Zooleitung / Zoodirektion
- Tierpflege-Abteilungen je Bereich
- Tierärztlicher Dienst (Zootierärzte)
- Gastronomie / Infrastruktur
- Verwaltung / Administration

---

## Lastenheft – Allgemeine Struktur (nach R. Lutz, KIT/IAI / DHBW SWE1)

Das Lastenheft enthält **11 Pflichtpunkte**:

| Nr. | Abschnitt | Kernfrage |
|---|---|---|
| 1 | **Zielbestimmung** | Welche Ziele soll das Produkt erreichen? |
| 2 | **Produkteinsatz (Anwendungsbereich)** | In welchen Bereichen wird es eingesetzt? |
| 3 | **Zielgruppen, Benutzerrollen, Verantwortlichkeiten** | Wer nutzt es wie? Welche Rechte? |
| 4 | **Zusammenspiel mit anderen Systemen** | Integration, Anbindung, Abhängigkeiten |
| 5 | **Verfügbarkeitsbetrachtungen** | Wann muss das Produkt verfügbar sein? |
| 6 | **Produktfunktionen** (/LF10/, /LF20/, …) | Hauptfunktionen (keine Implementierungsdetails) |
| 7 | **Produktdaten** (/LD10/, /LD20/, …) | Dauerhaft zu speichernde Daten |
| 8 | **Nichtfunktionale Anforderungen / Produktleistungen** (/LL10/, …) | Sicherheit, Geschwindigkeit, Benutzbarkeit, Datenmengen |
| 9 | **Benutzungsoberfläche** | Layout, Fenster, Menühierarchien, Barrierefreiheit |
| 10 | **Qualitätsanforderungen** | Tabelle: Funktionalität / Zuverlässigkeit / Effizienz / Benutzbarkeit / Wartbarkeit / Portabilität |
| 11 | **Ergänzungen** | Spezielle Tests, Normen, Plattformanforderungen |

### Qualitätstabelle (Vorlage)
| Produktqualität | sehr gut | gut | normal | nicht relevant |
|---|---|---|---|---|
| Funktionalität | | | | |
| Zuverlässigkeit | | | | |
| Effizienz | | | | |
| Benutzbarkeit (auch Gestaltung) | | | | |
| Wartbarkeit | | | | |
| Übertragbarkeit (Portabilität) | | | | |

### Nummerierungskonventionen
- Funktionen: `/LF10/`, `/LF20/`, … (Lastenheft-Funktion)
- Daten: `/LD10/`, `/LD20/`, … (Lastenheft-Datum)
- Leistungen: `/LL10/`, `/LL20/`, … (Lastenheft-Leistung)

---

## Referenz: Filmverwaltungs-Lastenheft (Vorlesungsbeispiel)

Das Filmverwaltungsbeispiel dient als Vorlage für Aufbau und Detailtiefe.

### Struktur des Beispiel-Lastenhefts
**1. Zielbestimmung** – Verwaltung von Filmen + Datenträgern über grafische GUI; zwei Datenspeicher-Versionen (Textdatei / relationale DB)

**2. Produkteinsatz** – Verwaltung von Filmen und zugehörigen Elementen sowie Datenträgern

**3. Zielgruppen / Rollen / Verantwortlichkeiten**
- Zielgruppe: Privatpersonen oder Angestellte mit durchschnittlichen PC-Kenntnissen
- Rollen: normaler Benutzer (Vollzugriff eigene Daten) + Administrator (alle Daten, Installation, Backup)

**4. Zusammenspiel mit anderen Systemen** – Standalone-System, keine externe Verbindung

**5. Verfügbarkeit** – Produkt soll Mitte nächsten Jahres verfügbar sein

**6. Produktfunktionen**
- /LF10/ GUI-gestütztes Hinzufügen, Suchen, Löschen, Ändern von Filmen + Datenträgern
- /LF20/ Navigation zeigt zugehörige Elemente eines Films direkt
- /LF30/ Suchfunktion mit Wildcard-Unterstützung (Filme, Darsteller, Regisseure, …)
- /LF40/ Darstellung in Listen
- /LF50/ Alphabetische Sortierung aller Listen
- /LF60/ Zuordnung per Auswahlliste aus bestehenden Elementen
- /LF70/ Zuordnung von Filmen zu Datenträgern per Auswahlliste
- /LF80/ Import- und Exportfunktionen (einzeln und gesamt)

**7. Produktdaten**
- /LD10/ Speicherung in lesbarer Datei (V1) + relationale DB (V2)
- /LD20/ Gilt für Datenträger, Darsteller, Regisseure, Synchronsprecher
- /LD30/ Import-/Exportdateien in lesbarem Format

**8. Produktleistungen**
- /LL10/ Intuitive grafische Benutzeroberfläche
- /LL20/ Privatpersonen: ca. 1.000 Filme; Firmen: prinzipiell unbegrenzt
- /LL30/ Analoge Mengen für Datenträger, Regisseure, etc.
- /LL40/ Lauffähig auf MS Windows und UNIX-Derivaten

**9. Benutzungsoberfläche** – Windows-ähnliche Oberfläche

**10. Qualitätsanforderungen** – Funktionalität: sehr gut; Benutzbarkeit: sehr gut; Zuverlässigkeit/Wartbarkeit/Portabilität: gut; Effizienz: normal

**11. Ergänzungen** – Tests: Einlesen fehlerhafter Dateien, Close-Loop-Test, Zweifacher Close-Loop-Test

---

## Hinweise für Zoo-Verwaltung (eigenes Lastenheft)

### Relevante Entitäten (aus Aufgabenstellung)
- **Tiere** – Tierinformationen, Tierart, Herkunft, Gesundheitsstatus
- **Tierarten / Taxonomie** – Hierarchie (Klasse → Ordnung → Familie → Art)
- **Gehege** – Typ, Kapazität, Zustand
- **Ställe / Innengehege** – zugeordnet zu Gehegen
- **Bereiche** – z.B. Afrika-Savanne, Affenhaus (Hierarchie: Bereich → Gehege)
- **Gebäude** – Tierhäuser, Verwaltungsgebäude, Restaurants
- **Pfleger** – Qualifikationen, Zuordnung zu Bereichen/Tieren
- **Ärzte (Zootierärzte)** – Untersuchungen, Behandlungen
- **Futter** – Futterarten, Lagerbestand
- **Fütterungen** – Zeitplan, Menge, Tier, Pfleger
- **Restaurants** – Standort im Zoo, Öffnungszeiten

### Besondere Anforderungen aus der Aufgabe
- **Zuordnungen**: Tiere ↔ Gehege, Pfleger ↔ Tiere/Bereiche, Ärzte ↔ Tiere, Futter ↔ Tiere
- **Hierarchien**: Zoobereiche → Gehege → Tier; Taxonomie der Tierarten; Personalstruktur

### Mögliche Benutzerrollen
| Rolle | Rechte |
|---|---|
| Tierpfleger | Eigene Fütterungen eintragen, Tierinfos lesen |
| Zootierarzt | Gesundheitsdaten lesen/schreiben, Untersuchungen erfassen |
| Bereichsleiter | Alles im eigenen Bereich verwalten |
| Zooadministrator | Vollzugriff auf alle Daten |
| (optional) Besucher-Info | Lesezugriff auf öffentliche Tierinfos |

### Typische Funktionen (/LF)
- Tiere anlegen, suchen, bearbeiten, löschen
- Gehege und Bereiche verwalten (Zuordnung Tier → Gehege)
- Fütterungsplan erstellen und protokollieren
- Tierärztliche Behandlungen erfassen
- Personal (Pfleger, Ärzte) verwalten und Bereichen zuordnen
- Futterbestand verwalten
- Berichte / Übersichten (z.B. Belegungsplan der Gehege)

---

## Analyse-Ansatz (objektorientiert, nach Vorlesung)

Für die spätere Analysephase vorzubereiten:

1. **Use-Case-Diagramm** – Welche Funktionen sollen realisiert werden?
2. **Klassen-Diagramm (ohne Assoziationen)** – Welche Objekte/Klassen gibt es?
3. **Klassen-Diagramm (mit Assoziationen + Multiplizitäten)** – Wie hängen sie zusammen?
4. **Package-Diagramm** – Welche Module sollen realisiert werden?

---

## Quellen
- `infos/Allg_Lastenheft_2021-10-18.pdf` – Allgemeine Lastenheft-Theorie (R. Lutz, KIT/IAI)
- `infos/Aufg-Filmverwaltung_Lastenheft_2022-11-08.pdf` – Beispiel-Lastenheft Filmverwaltung + Analyse (R. Lutz, KIT-CN/IAI)
- Wikipedia: Zoologischer Stadtgarten Karlsruhe
