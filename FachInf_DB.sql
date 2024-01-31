-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 31. Jan 2024 um 11:40
-- Server-Version: 10.4.14-MariaDB
-- PHP-Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `ausbildungsinhalte`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `ausbildungsberufe`
--

CREATE TABLE `ausbildungsberufe` (
  `id` int(11) NOT NULL,
  `berufsbezeichnung` varchar(64) COLLATE latin1_german1_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_german1_ci;

--
-- Daten für Tabelle `ausbildungsberufe`
--

INSERT INTO `ausbildungsberufe` (`id`, `berufsbezeichnung`) VALUES
(1, 'Fachinformatiker/-innen Fachrichtung Anwendungsentwicklung'),
(2, 'Fachinformatiker/-innen Fachrichtung Systemintegration'),
(3, 'Fachinformatiker/-innen Fachrichtung Daten- und Prozessanalyse'),
(4, 'Fachinformatiker/-innen Fachrichtung Digitale Vernetzung'),
(5, 'IT-System-Elektroniker und IT-System-Elektronikerin');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `fragekomplex`
--

CREATE TABLE `fragekomplex` (
  `id` int(11) NOT NULL,
  `fragekomplex` text COLLATE latin1_german1_ci NOT NULL,
  `pruefungsteil` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_german1_ci;

--
-- Daten für Tabelle `fragekomplex`
--

INSERT INTO `fragekomplex` (`id`, `fragekomplex`, `pruefungsteil`) VALUES
(1, 'Planen, Vorbereiten und Durchführen von Arbeitsaufgaben in Abstimmung mit den kundenspezifischen Geschäfts- und Leistungsprozessen (§ 4 Absatz 2 Nummer 1)', 1),
(2, 'Informieren und Beraten von Kunden und Kundinnen', 1),
(3, 'Beurteilen marktgängiger IT-Systeme und kundenspezifischer Lösungen', 1),
(4, 'Entwickeln, Erstellen und Betreuen von IT-Lösungen', 1),
(5, 'Durchführen und Dokumentieren von qualitätssichernden Maßnahmen', 1),
(6, 'Umsetzen, Integrieren und Prüfen von Maßnahmen zur IT-Sicherheit und zum Datenschutz ', 1),
(7, 'Erbringen der Leistungen und Auftragsabschluss', 1),
(8, 'Informieren und Beraten von Kunden und Kundinnen', 2),
(9, 'Beurteilen marktgängiger IT-Systeme und kundenspezifischer Lösungen', 2),
(10, 'Entwickeln, Erstellen und Betreuen von IT-Lösungen', 2),
(11, 'Durchführen und Dokumentieren von qualitätssichernden Maßnahmen ', 2),
(12, 'Umsetzen, Integrieren und Prüfen von Maßnahmen zur IT-Sicherheit und zum Datenschutz ', 2),
(13, 'Betreiben von IT-Systemen', 3),
(14, 'Inbetriebnehmen von Speicherlösungen', 3),
(15, 'Programmieren von Softwarelösungen', 3),
(16, 'Konzipieren und Umsetzen von kundenspezifischen Softwareanwendungen', 3),
(17, 'Sicherstellen der Qualität von Softwareanwendungen', 3),
(18, 'Berufsausbildung sowie Arbeits- und Tarifrecht', 4),
(19, 'Aufbau und Organisation des Ausbildungsbetriebes ', 4),
(20, 'Sicherheit und Gesundheitsschutz bei der Arbeit', 4),
(21, 'Umweltschutz', 4),
(22, 'Vernetztes Zusammenarbeiten unter Nutzung digitaler Medien ', 4);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `lernfelddetail`
--

CREATE TABLE `lernfelddetail` (
  `id` int(11) NOT NULL,
  `lernfeld` int(11) DEFAULT NULL,
  `text` text COLLATE latin1_german1_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_german1_ci;

--
-- Daten für Tabelle `lernfelddetail`
--

INSERT INTO `lernfelddetail` (`id`, `lernfeld`, `text`) VALUES
(1, 1, 'Die Schülerinnen und Schüler verfügen über die Kompetenz, ihr Unternehmen hinsichtlich seiner Wertschöpfungskette zu präsentieren und ihre eigene Rolle im Betrieb\r\nzu beschreiben.\r\nDie Schülerinnen und Schüler informieren sich, auch anhand des Unternehmensleitbildes,\r\nüber die ökonomischen, ökologischen und sozialen Zielsetzungen des Unternehmens.\r\nSie analysieren die Marktstruktur in ihrer Branche und ordnen das Unternehmen als komplexes\r\nSystem mit seinen Markt- und Kundenbeziehungen ein. Sie beschreiben die Wertschöpfungskette\r\nund ihre eigene Rolle im Betrieb.\r\nDabei erkunden sie die Leistungsschwerpunkte sowie Besonderheiten ihres Unternehmens\r\nund setzen sich mit der Organisationsstruktur (Aufbauorganisation) und Rechtsform auseinander.\r\nSie informieren sich über den eigenen Handlungs- und Entscheidungsspielraum im\r\nUnternehmen (Vollmachten) sowie über Fort- und Weiterbildungsmaßnahmen.\r\nSie planen und erstellen, auch im Team, adressatengerecht multimediale Darstellungen zu\r\nihrem Unternehmen.\r\nDie Schülerinnen und Schüler präsentieren ihre Ergebnisse.\r\nSie überprüfen kriteriengeleitet die Qualität ihres Handlungsproduktes und entwickeln gemeinsam\r\nVerbesserungsmöglichkeiten.\r\nSie reflektieren die eigene Rolle und das eigene Handeln im Betrieb.'),
(2, 2, 'Die Schülerinnen und Schüler verfügen über die Kompetenz, die Ausstattung eines\r\nArbeitsplatzes nach Kundenwunsch zu dimensionieren, anzubieten, zu beschaffen\r\nund den Arbeitsplatz an die Kunden zu übergeben.\r\nDie Schülerinnen und Schüler nehmen den Kundenwunsch für die Ausstattung eines Arbeitsplatzes\r\nvon internen und externen Kunden entgegen und ermitteln die sich daraus\r\nergebenden Anforderungen an Soft- und Hardware. Aus den dokumentierten Anforderungen\r\nleiten sie Auswahlkriterien für die Beschaffung ab. Sie berücksichtigen dabei die Einhaltung\r\nvon Normen und Vorschriften (Zertifikate, Kennzeichnung) für den Betrieb und die\r\nSicherheit von elektrischen Geräten und Komponenten.\r\nSie vergleichen die technischen Merkmale relevanter Produkte anhand von Datenblättern\r\nund Produktbeschreibungen zur Vorbereitung einer Auswahlentscheidung (Nutzwertanalyse).\r\nDabei beachten sie insbesondere informationstechnische und energietechnische\r\nKenngrößen sowie Aspekte der Ergonomie und der Nachhaltigkeit (Umweltschutz, Recycling).\r\nSie wenden Recherchemethoden an und werten auch fremdsprachliche Quellen aus.\r\nSie ermitteln die Energieeffizienz unterschiedlicher Arbeitsplatzvarianten und dokumentieren\r\ndiese.\r\nSie vergleichen mögliche Bezugsquellen (quantitativer und qualitativer Angebotsvergleich)\r\nund bestimmen den Lieferanten.\r\nAuf Basis der ausgewählten Produkte und Lieferanten erstellen sie mit vorgegebenen Zuschlagssätzen\r\nein Angebot für die Kunden.\r\nSie schließen den Kaufvertrag ab und organisieren den Beschaffungsprozess unter Berücksichtigung\r\nvon Lieferzeiten. Sie nehmen die bestellten Komponenten in Empfang und dokumentieren\r\ndabei festgestellte Mängel.\r\nSie bereiten die Übergabe der beschafften Produkte vor, integrieren IT-Komponenten, konfigurieren\r\ndiese und nehmen sie unter Berücksichtigung der Arbeitssicherheit in Betrieb. Sie\r\nübergeben den Arbeitsplatz an die Kunden und erstellen ein Übergabeprotokoll.\r\nSie bewerten die Durchführung des Kundenauftrags und reflektieren ihr Vorgehen. Dabei\r\nberücksichtigen sie die Kundenzufriedenheit und formulieren Verbesserungsvorschläge.'),
(3, 3, 'Die Schülerinnen und Schüler verfügen über die Kompetenz, eine Netzwerkinfrastruktur\r\nzu analysieren sowie Clients zu integrieren.\r\nDie Schülerinnen und Schüler erfassen im Kundengespräch die Anforderungen an die Integration\r\nvon Clients (Soft- und Hardware) in eine bestehende Netzwerkinfrastruktur und\r\nleiten Leistungskriterien ab.\r\nSie informieren sich über Strukturen und Komponenten des Netzwerkes und erfassen deren\r\nEigenschaften und Standards. Dazu verwenden sie technische Dokumente, auch in\r\nfremder Sprache. Sie nutzen physische sowie logische Netzwerkpläne und beachten betriebliche\r\nSicherheitsvorgaben.\r\nSie planen die Integration in die bestehende Netzwerkinfrastruktur indem sie ein anforderungsgerechtes\r\nKonzept auch unter ökologischen und wirtschaftlichen Gesichtspunkten\r\n(Energieeffizienz) erstellen.\r\nSie führen auf der Basis der Leistungskriterien die Auswahl von Komponenten durch. Sie\r\nkonfigurieren Clients und binden diese in das Netzwerk ein.\r\nSie prüfen systematisch die Funktion der konfigurierten Clients im Netzwerk und protokollieren\r\ndas Ergebnis.\r\nSie reflektieren den Arbeitsprozess hinsichtlich möglicher Optimierungen und diskutieren\r\ndas Ergebnis in Bezug auf Wirtschaftlichkeit und Ökologie.'),
(4, 4, 'Die Schülerinnen und Schüler informieren sich über Informationssicherheit (Schutzziele)\r\nund rechtliche Regelungen sowie die Einhaltung von betrieblichen Vorgaben zur Bestimmung\r\ndes Schutzniveaus für den eigenen Arbeitsbereich.\r\nSie planen eine Schutzbedarfsanalyse, indem sie gemäß der IT-Sicherheitsleitlinie des Unternehmens\r\nSchutzziele des Grundschutzes (Vertraulichkeit, Integrität, Verfügbarkeit) in ihrem\r\nArbeitsbereich ermitteln und eine Klassifikation von Schadensszenarien vornehmen.\r\nSie entscheiden über die Gewichtung möglicher Bedrohungen unter Berücksichtigung der\r\nSchadenszenarien.\r\nDazu führen sie eine Schutzbedarfsanalyse in ihrem Arbeitsbereich durch, nehmen Bedrohungsfaktoren\r\nauf und dokumentieren diese.\r\nDie Schülerinnen und Schüler bewerten die Ergebnisse der Schutzbedarfsanalyse und gleichen\r\ndiese mit der IT-Sicherheitsleitlinie des Unternehmens ab. Sie empfehlen Maßnahmen\r\nund setzen diese im eigenen Verantwortungsbereich um.\r\nSie reflektieren den Arbeitsablauf und übernehmen Verantwortung im IT-Sicherheitsprozess.'),
(5, 5, 'Die Schülerinnen und Schüler verfügen über die Kompetenz, Informationen mittels Daten abzubilden, diese Daten zu verwalten und dazu Software anzupassen.\r\nDie Schülerinnen und Schüler informieren sich innerhalb eines Projektes über die Abbildung\r\nvon Informationen mittels Daten. Dabei analysieren sie Daten hinsichtlich Herkunft, Art,\r\nVerfügbarkeit, Datenschutz, Datensicherheit und Speicheranforderung und berücksichtigen\r\nDatenformate und Speicherlösungen.\r\nSie planen die Anpassung einer Anwendung zur Verwaltung der Datenbestände und entwickeln\r\nTestfälle. Dabei entscheiden sie sich für ein Vorgehen.\r\nDie Schülerinnen und Schüler implementieren die Anpassung der Anwendung, auch im\r\nTeam und erstellen eine Softwaredokumentation.\r\nSie testen die Funktion der Anwendung und beurteilen deren Eignung zur Bewältigung der\r\ngestellten Anforderungen.\r\nSie evaluieren den Prozess der Softwareentwicklung.'),
(6, 6, 'Die Schülerinnen und Schüler verfügen über die Kompetenz, Serviceanfragen einzuordnen,\r\nFehlerursachen zu ermitteln und zu beheben.\r\nDie Schülerinnen und Schüler nehmen Serviceanfragen entgegen (direkter und indirekter\r\nKundenkontakt). Sie analysieren Serviceanfragen und prüfen deren vertragliche Grundlage\r\n(Service-Level-Agreement). Sie ermitteln die Reaktionszeit und dokumentieren den Status\r\nder Anfragen im zugrundeliegenden Service-Management-System.\r\nDurch systematisches Fragen ordnen die Schülerinnen und Schüler Serviceanfragen unter\r\nBerücksichtigung des Support-Levels und fachlicher Standards ein.\r\nSie ermitteln Lösungsmöglichkeiten im Rahmen des Support-Levels. Auf dieser Basis bearbeiten\r\nsie das Problem und dokumentieren den Bearbeitungsstatus. Sie kommunizieren\r\nmit den Prozessbeteiligten situationsgerecht, auch in einer Fremdsprache, und passen sich\r\nden unterschiedlichen Kommunikationsanforderungen an (Kommunikationsmodelle, Deeskalationsstrategien).\r\nSie reflektieren den Bearbeitungsprozess der Serviceanfragen und ihr Verhalten in Gesprächssituationen.\r\nDie Schülerinnen und Schüler diskutieren die Servicefälle und schlagen\r\nMaßnahmen zur Qualitätssteigerung vor.'),
(7, 7, 'Die Schülerinnen und Schüler verfügen über die Kompetenz, die physische Welt und IT-Systeme funktional zu einem cyber-physischen System zusammenzuführen.\r\nDie Schülerinnen und Schüler analysieren ein cyber-physisches System bezüglich eines\r\nKundenauftrags zur Ergänzung und Inbetriebnahme weiterer Komponenten.\r\nSie informieren sich über den Datenfluss an der Schnittstelle zwischen physischer Welt\r\nund IT-System sowie über die Kommunikation in einem bestehenden Netzwerk. Sie verschaffen\r\nsich einen Überblick über die Energie-, Stoff- und Informationsflüsse aller am System\r\nbeteiligten Geräte und Betriebsmittel.\r\nDie Schülerinnen und Schüler planen die Umsetzung des Kundenwunsches, indem sie Kriterien\r\nfür die Auswahl von Energieversorgung, Hardware und Software (Bibliotheken, Protokolle)\r\naufstellen. Dazu nutzen sie Unterlagen der technischen Kommunikation und passen\r\ndiese an.\r\nSie führen Komponenten mit dem cyber-physischen System funktional zusammen.\r\nSie prüfen systematisch die Funktion, messen physikalische Betriebswerte, validieren den\r\nEnergiebedarf und protokollieren die Ergebnisse.\r\nDie Schülerinnen und Schüler reflektieren den Arbeitsprozess hinsichtlich möglicher Optimierungen\r\nund diskutieren das Ergebnis in Bezug auf Betriebssicherheit und Datensicherheit.'),
(8, 8, 'Die Schülerinnen und Schüler besitzen die Kompetenz, Daten aus dezentralen Quellen\r\nzusammenzuführen, aufzubereiten und zur weiteren Nutzung zur Verfügung zu\r\nstellen.\r\nDie Schülerinnen und Schüler ermitteln für einen Kundenauftrag Datenquellen und analysieren\r\ndiese hinsichtlich ihrer Struktur, rechtlicher Rahmenbedingungen, Zugriffsmöglichkeiten\r\nund -mechanismen.\r\nSie wählen die Datenquellen (heterogen) für den Kundenauftrag aus.\r\nSie entwickeln Konzepte zur Bereitstellung der gewählten Datenquellen für die weitere Verarbeitung\r\nunter Beachtung der Informationssicherheit.\r\nDie Schülerinnen und Schüler implementieren arbeitsteilig, auch ortsunabhängig, ihr Konzept\r\nmit vorhandenen sowie dazu passenden Entwicklungswerkzeugen und Produkten.\r\nSie übergeben ihr Endprodukt mit Dokumentation zur Handhabung, auch in fremder Sprache,\r\nan die Kunden.\r\nSie reflektieren die Eignung der eingesetzten Entwicklungswerkzeuge hinsichtlich des arbeitsteiligen\r\nEntwicklungsprozesses und die Qualität der Dokumentation.'),
(9, 9, 'Die Schülerinnen und Schüler verfügen über die Kompetenz, Netzwerke und Dienste\r\nzu planen, zu konfigurieren und zu erweitern.\r\nDie Schülerinnen und Schüler ermitteln die Anforderungen an ein Netzwerk in Kommunikation\r\nmit den Kunden. Sie informieren sich über Eigenschaften, Funktionen und Leistungsmerkmale\r\nder Netzwerkkomponenten und Dienste nach Kundenanforderung, auch unter\r\nBerücksichtigung sicherheitsrelevanter Merkmale. Dabei wenden sie Recherchemethoden\r\nan und werten auch fremdsprachliche Quellen aus\r\nSie planen die erforderlichen Dienste und dafür notwendige Netzwerke sowie deren Infrastruktur\r\nunter Berücksichtigung interner und externer Ressourcen.\r\nDazu vergleichen sie Konzepte hinsichtlich ihrer Nachhaltigkeit sowie der technischen und\r\nwirtschaftlichen Eignung.\r\nSie installieren und konfigurieren Netzwerke sowie deren Infrastruktur und implementieren\r\nDienste. Sie gewährleisten die Einhaltung von Standards, führen Funktionsprüfungen sowie\r\nMessungen durch und erstellen eine Dokumentation.\r\nDie Schülerinnen und Schüler beurteilen die Netzwerke sowie deren Infrastruktur und die\r\nDienste hinsichtlich der gestellten Anforderungen, Datensicherheit und Datenschutz.\r\nSie reflektieren ihre Lösung unter Berücksichtigung der Kundenzufriedenheit, Zukunftsfähigkeit\r\nund Vorgehensweise.'),
(10, 10, 'Die Schülerinnen und Schüler verfügen über die Kompetenz, Benutzeroberflächen für softwarebasierte Arbeitsabläufe und Geschäftsprozesse zu gestalten und zu entwickeln.\r\nDie Schülerinnen und Schüler informieren sich über die vorhandenen betrieblichen Abläufe\r\nund Geschäftsprozesse.\r\nSie stellen diese modellhaft dar und leiten Optimierungsmöglichkeiten ab.\r\nSie gestalten und entwickeln mit agilen Methoden die Benutzeroberflächen für unterschiedliche\r\nEndgeräte und Betriebssysteme und stellen die vollständige Abbildung des Informationsflusses\r\nunter Berücksichtigung der Prozessbeschreibung sicher.\r\nDie Schülerinnen und Schüler stellen die Funktionalität der Softwarelösung her und nutzen\r\nhierzu bereits vorhandene Bibliotheken und Module.\r\nSie überprüfen das Produkt auf Datenschutzkonformität und Benutzerfreundlichkeit.\r\nDie Schülerinnen und Schüler testen die funktionale Richtigkeit. Sie quantifizieren die Reduktion\r\nder Prozesskosten des digitalisierten, optimierten Geschäftsprozesses und stellen\r\ndiese den Entwicklungskosten gegenüber.'),
(11, 11, 'Die Schülerinnen und Schüler verfügen über die Kompetenz, modulare Komponenten\r\nzur informationstechnischen Verarbeitung von Arbeitsabläufen und Geschäftsprozessen\r\nzu entwickeln und deren Qualität zu sichern.\r\nDie Schülerinnen und Schüler leiten aus den Informationsobjekten der vorgegebenen Prozessbeschreibungen\r\nder Kunden die dazu notwendigen Datenstrukturen und Funktionalitäten\r\nab.\r\nSie planen modulare Softwarekomponenten und beschreiben deren Funktionsweise mit Diagrammen\r\nund Modellen.\r\nSie wählen eine Methode zur Softwareentwicklung aus. Dabei beachten sie, dass Planung,\r\nRealisierung und Tests iterativ in Abstimmung mit den Kunden erfolgen.\r\nDie Schülerinnen und Schüler realisieren, auch im Team, die Softwarekomponenten und\r\nbinden diese an Datenquellen an. Sie dokumentieren die Schnittstellen.\r\nSie testen die erforderliche Funktionalität, indem sie Testfälle formulieren und automatisierte\r\nTestverfahren anwenden.\r\nDie Schülerinnen und Schüler beurteilen die Funktionalität anhand festgelegter Kriterien\r\nder Kunden und leiten Maßnahmen zur Überarbeitung der erstellten Module ein.'),
(12, 12, 'Die Schülerinnen und Schüler verfügen über die Kompetenz, einen Kundenauftrag\r\nzur Anwendungsentwicklung vollständig durchzuführen und zu bewerten.\r\nDie Schülerinnen und Schüler führen in Zusammenarbeit mit den Kunden eine Anforderungsanalyse\r\ndurch und leiten daraus Projektziele, Anforderungen, gewünschte Ergebnisse,\r\nSchulungsbedarfe und Rahmenbedingungen ab.\r\nAuf dieser Basis planen und kalkulieren sie ein Projekt mit den dazugehörigen personellen\r\nund technischen Ressourcen.\r\nDie Schülerinnen und Schüler entwickeln Lösungsvarianten, vergleichen diese anhand festgelegter\r\nKriterien sowie unter Berücksichtigung von Datenschutz und Datensicherheit. Sie\r\nwählen mit den Kunden die beste Lösung aus. Für den vereinbarten Auftrag erstellen sie\r\nein Dokument über die zu erbringenden Leistungen und ein Angebot.\r\nDie Schülerinnen und Schüler implementieren die gewünschte Lösung. Dabei nutzen sie\r\nMaßnahmen zur Qualitätssicherung. Sie präsentieren den Kunden das Projektergebnis und\r\nführen eine Schulung durch. Sie übergeben den Kunden das Produkt sowie die Dokumentation.\r\nDie Schülerinnen und Schüler bewerten das Projektergebnis auch hinsichtlich Zielerreichung,\r\nWirtschaftlichkeit, Skalierbarkeit und Verlässlichkeit.\r\nSie reflektieren die Projektdurchführung und das Projektergebnis auch unter Berücksichtigung\r\nder kritisch-konstruktiven Kundenrückmeldungen.'),
(13, 13, 'Die Schülerinnen und Schüler verfügen über die Kompetenz, Serverdienste bereitzustellen,\r\nzu administrieren und zu überwachen.\r\nDie Schülerinnen und Schüler informieren sich über Serverdienste sowie Plattformen.\r\nSie wählen diese gemäß den Kundenanforderungen aus. Dabei berücksichtigen sie auch\r\nVerfügbarkeit, Skalierbarkeit, Administrierbarkeit, Wirtschaftlichkeit und Sicherheit.\r\nSie planen die Konfiguration der ausgewählten Dienste und erstellen Konzepte zur Einrichtung,\r\nAktualisierung, Datensicherung und Überwachung.\r\nSie implementieren die Dienste unter Berücksichtigung betrieblicher Vorgaben und Lizenzierungen.\r\nSie wenden Testverfahren an, überwachen die Dienste und empfehlen den Kunden\r\nMaßnahmen bei kritischen Zuständen. Sie dokumentieren ihre Ergebnisse.\r\nSie automatisieren Administrationsprozesse in Abhängigkeit kundenspezifischer Rahmenbedingungen,\r\ntesten und optimieren die Automatisierung.\r\nDie Schülerinnen und Schüler reflektieren ihre Lösung und beurteilen sie hinsichtlich der\r\nKundenanforderungen.'),
(14, 14, 'Die Schülerinnen und Schüler verfügen über die Kompetenz, mit Hilfe einer Risikoanalyse\r\nden Schutzbedarf eines vernetzten Systems zu ermitteln und Schutzmaßnahmen\r\nzu planen, umzusetzen und zu dokumentieren.\r\nDie Schülerinnen und Schüler bereiten sich auf ein Kundengespräch zur Identifizierung eines\r\nSchutzbedarfes vor. Hierzu informieren sie sich über Informationssicherheit in vernetzten\r\nSystemen.\r\nSie ermitteln im Kundengespräch die Schutzziele, analysieren die Systeme hinsichtlich der\r\nAnforderungen an die Informationssicherheit und benennen Risiken.\r\nDie Schülerinnen und Schüler planen unter Beachtung betrieblicher IT-Sicherheitsleitlinien\r\nund rechtlicher Regelungen die Vorkehrungen und Maßnahmen zur Minimierung der Wahrscheinlichkeit\r\neines Schadenseintritts.\r\nSie implementieren die Maßnahmen unter Berücksichtigung technischer und organisatorischer\r\nRahmenbedingungen.\r\nSie prüfen die Sicherheit des vernetzten Systems und bewerten das erreichte Sicherheitsniveau\r\nin Bezug auf die Kundenanforderungen, eingesetzter Maßnahmen und Wirtschaftlichkeit.\r\nSie erstellen eine Dokumentation und informieren die Kunden über die Ergebnisse\r\nder Risikoanalyse.\r\nDie Schülerinnen und Schüler reflektieren den Arbeitsprozess hinsichtlich möglicher Optimierungen\r\nund diskutieren das Ergebnis in Bezug auf den Begriff der relativen Sicherheit\r\ndes vernetzten Systems.'),
(15, 15, 'Die Schülerinnen und Schüler verfügen über die Kompetenz, einen Kundenauftrag\r\nzur Systemintegration vollständig durchzuführen und zu bewerten.\r\nDie Schülerinnen und Schüler führen in Zusammenarbeit mit den Kunden eine Anforderungsanalyse\r\ndurch und leiten daraus Projektziele, Anforderungen, gewünschte Ergebnisse,\r\nSchulungsbedarfe und Rahmenbedingungen ab.\r\nAuf dieser Basis planen und kalkulieren sie ein Projekt mit den dazugehörigen personellen\r\nund technischen Ressourcen.\r\nDie Schülerinnen und Schüler entwickeln Lösungsvarianten, vergleichen diese anhand festgelegter\r\nKriterien sowie unter Berücksichtigung von Datenschutz und Datensicherheit. Sie\r\nwählen mit den Kunden die beste Lösung aus. Für den vereinbarten Auftrag erstellen sie\r\nein Dokument über die zu erbringenden Leistungen und ein Angebot.\r\nDie Schülerinnen und Schüler implementieren die gewünschte Lösung. Dabei nutzen sie\r\nMaßnahmen zur Qualitätssicherung. Sie präsentieren den Kunden das Projektergebnis und\r\nführen eine Schulung durch. Sie übergeben den Kunden das Produkt sowie die Dokumentation.\r\nDie Schülerinnen und Schüler bewerten das Projektergebnis auch hinsichtlich Zielerreichung,\r\nWirtschaftlichkeit, Skalierbarkeit und Verlässlichkeit.\r\nSie reflektieren die Projektdurchführung und das Projektergebnis auch unter Berücksichtigung\r\nder kritisch-konstruktiven Kundenrückmeldungen.'),
(16, 16, 'Die Schülerinnen und Schüler verfügen über die Kompetenz, maschinelles Lernen zur\r\nProblemlösung anzuwenden und den Lernfortschritt des Entscheidungssystems zu\r\nbegleiten.\r\nDie Schülerinnen und Schüler stellen Einsatzmöglichkeiten des maschinellen Lernens dar.\r\nAuf dieser Basis entscheiden sie über die betriebswirtschaftlich sinnvolle Eignung maschinellen\r\nLernens bezüglich kundenspezifischer Problemstellungen.\r\nSie führen die benötigten Daten zusammen. Dazu analysieren sie freie und kommerzielle\r\nDatenquellen und wählen diese nach Eignung zur Lösung der Aufgabe durch maschinelles\r\nLernen aus. Die Schülerinnen und Schüler berücksichtigen datenschutzrechtliche, moralische\r\nund wirtschaftliche Aspekte.\r\nSie legen für die Aufgabenstellung maschinellen Lernens adäquate Werkzeuge und Systeme\r\nfest.\r\nSie bereiten das ausgewählte System technisch vor und implementieren die Schnittstellen\r\nzum Datenimport.\r\nDie Schülerinnen und Schüler überwachen die technische Funktionsfähigkeit im Hinblick\r\nauf den Lernfortschritt des Systems.\r\nSie reflektieren die Wirksamkeit des angelernten Entscheidungssystems. Dabei diskutieren\r\nsie auch datenschutzrechtliche, moralische und wirtschaftliche Aspekte.'),
(17, 17, 'Die Schülerinnen und Schüler verfügen über die Kompetenz, durch Prozess- und Datenanalyse\r\ndigitale Geschäftsmodelle zu entwickeln.\r\nDie Schülerinnen und Schüler leiten aus einer kundenspezifischen Prozessdarstellung den\r\nzur Digitalisierung des Prozesses benötigten Informationsfluss ab. Dabei analysieren sie\r\nbereits vorhandene Prozessdaten mit einem vorgegebenen Auswertungsverfahren.\r\nSie planen mögliche technische Lösungen zur Digitalisierung des Prozesses und wählen\r\nauch unter betriebswirtschaftlichen Gesichtspunkten eine Umsetzungsvariante aus.\r\nDie Schülerinnen und Schüler implementieren die gewählte Lösung für den digitalisierten\r\nProzess und dokumentieren diese, auch fremdsprachlich, für die Kunden.\r\nSie begleiten die Kunden bei der Prozesstransformation, bewerten gemeinsam mit ihnen\r\ndas Ergebnis und passen die Prozessdarstellung an.\r\nSie reflektieren die Prozessgestaltung hinsichtlich ökonomischer und ökologischer Aspekte.'),
(18, 18, 'Die Schülerinnen und Schüler verfügen über die Kompetenz, einen Kundenauftrag\r\nzur Prozess- und Datenanalyse vollständig durchzuführen und zu bewerten.\r\nDie Schülerinnen und Schüler führen in Zusammenarbeit mit den Kunden eine Anforderungsanalyse\r\ndurch und leiten daraus Projektziele, Anforderungen, gewünschte Ergebnisse,\r\nSchulungsbedarfe und Rahmenbedingungen ab.\r\nAuf dieser Basis planen und kalkulieren sie ein Projekt mit den dazugehörigen personellen\r\nund technischen Ressourcen.\r\nDie Schülerinnen und Schüler entwickeln Lösungsvarianten, vergleichen diese anhand festgelegter\r\nKriterien sowie unter Berücksichtigung von Datenschutz und Datensicherheit. Sie\r\nwählen mit den Kunden die beste Lösung aus. Für den vereinbarten Auftrag erstellen sie\r\nein Dokument über die zu erbringenden Leistungen und ein Angebot.\r\nDie Schülerinnen und Schüler implementieren die gewünschte Lösung. Dabei nutzen sie\r\nMaßnahmen zur Qualitätssicherung. Sie präsentieren den Kunden das Projektergebnis und\r\nführen eine Schulung durch. Sie übergeben den Kunden das Produkt sowie die Dokumentation.\r\nDie Schülerinnen und Schüler bewerten das Projektergebnis auch hinsichtlich Zielerreichung,\r\nWirtschaftlichkeit, Skalierbarkeit und Verlässlichkeit.\r\nSie reflektieren die Projektdurchführung und das Projektergebnis auch unter Berücksichtigung\r\nder kritisch-konstruktiven Kundenrückmeldungen.'),
(19, 19, 'Die Schülerinnen und Schüler verfügen über die Kompetenz, cyber-physische Systeme\r\nzu entwickeln, Sensoren und Aktoren zu integrieren sowie Software und Schnittstellen\r\nzu implementieren.\r\nDie Schülerinnen und Schüler analysieren einen Kundenauftrag zur Entwicklung eines cyber-\r\nphysischen Systems.\r\nSie informieren sich über Interaktionsmöglichkeiten zwischen Mensch, Maschine und künstlicher\r\nIntelligenz. Sie wählen eine Umsetzungsvariante für die Realisierung des Kundenauftrags\r\naus.\r\nDie Schülerinnen und Schüler planen das cyber-physische System. Sie stimmen Komponenten,\r\nVernetzung, Programmierung und Interaktionen aufeinander ab. Dabei prüfen sie\r\nauch den Einsatz von internen und externen Netzwerken und Diensten.\r\nSie vernetzen die Komponenten, programmieren und konfigurieren Schnittstellen zur Datenübertragung\r\nund Visualisierung. Die Schülerinnen und Schüler realisieren die Interaktion\r\nzwischen Mensch, Maschine und künstlicher Intelligenz in dem cyber-physischen System.\r\nDabei entwickeln sie Testkonzepte zur Überprüfung und Gewährleistung der Funktion des\r\nGesamtsystems und wenden diese an.\r\nSie erstellen technische Dokumentationen, auch multimedial, zur Bedienung und Wartung\r\ndes Systems und übergeben diese an die Kunden.\r\nSie bewerten in Kommunikation mit den Kunden das cyber-physische System auch hinsichtlich\r\nWirtschaftlichkeit, Skalierbarkeit und Verlässlichkeit.\r\nDie Schülerinnen und Schüler reflektieren die Interaktion zwischen Mensch, Maschine und\r\nkünstlicher Intelligenz und diskutieren auch ethisch-moralische Aspekte des Einsatzes von\r\nkünstlicher Intelligenz.'),
(20, 20, 'Die Schülerinnen und Schüler verfügen über die Kompetenz, mit Hilfe einer Risikoanalyse\r\nden Schutzbedarf eines vernetzten Systems zu ermitteln und Schutzmaßnahmen\r\nzu planen, umzusetzen und zu dokumentieren.\r\nDie Schülerinnen und Schüler bereiten sich auf ein Kundengespräch zur Identifizierung eines\r\nSchutzbedarfes vor. Hierzu informieren sie sich über Informationssicherheit in vernetzten\r\nSystemen.\r\nSie ermitteln im Kundengespräch die Schutzziele, analysieren die Systeme hinsichtlich der\r\nAnforderungen an die Informationssicherheit und benennen Risiken.\r\nDie Schülerinnen und Schüler planen unter Beachtung betrieblicher IT-Sicherheitsleitlinien\r\nund rechtlicher Regelungen die Vorkehrungen und Maßnahmen zur Minimierung der Wahrscheinlichkeit\r\neines Schadenseintritts.\r\nSie implementieren die Maßnahmen unter Berücksichtigung technischer und organisatorischer\r\nRahmenbedingungen.\r\nSie prüfen die Sicherheit des vernetzten Systems und bewerten das erreichte Sicherheitsniveau\r\nin Bezug auf die Kundenanforderungen, eingesetzter Maßnahmen und Wirtschaftlichkeit.\r\nSie erstellen eine Dokumentation und informieren die Kunden über die Ergebnisse\r\nder Risikoanalyse.\r\nDie Schülerinnen und Schüler reflektieren den Arbeitsprozess hinsichtlich möglicher Optimierungen\r\nund diskutieren das Ergebnis in Bezug auf den Begriff der relativen Sicherheit\r\ndes vernetzten Systems.'),
(21, 21, 'Die Schülerinnen und Schüler verfügen über die Kompetenz, einen Kundenauftrag\r\nzur Optimierung eines cyber-physischen Systems vollständig durchzuführen und zu\r\nbewerten.\r\nDie Schülerinnen und Schüler führen in Zusammenarbeit mit den Kunden eine Anforderungsanalyse\r\ndurch und leiten daraus Projektziele, Anforderungen, gewünschte Ergebnisse,\r\nSchulungsbedarfe und Rahmenbedingungen ab.\r\nAuf dieser Basis planen und kalkulieren sie ein Projekt mit den dazugehörigen personellen\r\nund technischen Ressourcen.\r\nDie Schülerinnen und Schüler entwickeln Lösungsvarianten, vergleichen diese anhand festgelegter\r\nKriterien sowie unter Berücksichtigung von Datenschutz und Datensicherheit. Sie\r\nwählen mit den Kunden die beste Lösung aus. Für den vereinbarten Auftrag erstellen sie\r\nein Dokument über die zu erbringenden Leistungen und ein Angebot.\r\nDie Schülerinnen und Schüler implementieren die gewünschte Lösung. Dabei nutzen sie\r\nMaßnahmen zur Qualitätssicherung. Sie präsentieren den Kunden das Projektergebnis und\r\nführen eine Schulung durch. Sie übergeben den Kunden das Produkt sowie die Dokumentation.\r\nDie Schülerinnen und Schüler bewerten das Projektergebnis auch hinsichtlich Zielerreichung,\r\nWirtschaftlichkeit, Skalierbarkeit und Verlässlichkeit.\r\nSie reflektieren die Projektdurchführung und das Projektergebnis auch unter Berücksichtigung\r\nder kritisch-konstruktiven Kundenrückmeldungen.'),
(22, 22, 'Die Schülerinnen und Schüler verfügen über die Kompetenz, eine gesicherte und redundante\r\nEnergieversorgung eines IT-Systems unter Berücksichtigung der Betriebssicherheit,\r\ntypischer Netzsysteme und erforderlicher Schutzmaßnahmen zu planen,\r\nzu realisieren und zu dokumentieren.\r\nSie analysieren die Anforderungen der Kunden auch unter Beachtung der Skalierbarkeit\r\nund vergleichen diese mit dem vorhandenen Energieversorgungssystem auch anhand der\r\ntechnischen Dokumentation.\r\nDie Schülerinnen und Schüler planen die Abläufe für die elektrische Inbetriebnahme des\r\nIT-Systems. Dabei dimensionieren sie die elektrische Anlage und berücksichtigen die elektromagnetische\r\nVerträglichkeit.\r\nSie legen die Vorgehensweise zur Auftragserfüllung, Materialdisposition und Abstimmung\r\nmit anderen Beteiligten fest. Sie wählen die Arbeitsmittel aus und stimmen den Arbeitsablauf\r\nmit den Kunden ab.\r\nBei der Installation halten die Schülerinnen und Schüler die Sicherheitsregeln unter Berücksichtigung\r\nder Unfallverhütungsvorschriften beim Arbeiten in und an elektrischen Anlagen\r\nein. Sie achten auf mögliche Gefahren des elektrischen Stromes und wenden Schutzmaßnahmen\r\nan.\r\nDie Schülerinnen und Schüler ergreifen Maßnahmen zur Sicherung der Energieversorgung\r\nbeim kurzzeitigen Ausfall der regulären Stromversorgung (Unterbrechungsfreie Stromversorgung,\r\nNotstromversorgung).\r\nSie erstellen eine technische Dokumentation und unterweisen die Kunden im Umgang mit\r\nder Energieversorgungsanlage.\r\nSie reflektieren mit den Kunden die erzielte Betriebssicherheit und beraten ihn bezüglich\r\nzusätzlicher vorbeugender Maßnahmen.'),
(23, 23, 'Die Schülerinnen und Schüler verfügen über die Kompetenz, mit Hilfe einer Risikoanalyse\r\nden Schutzbedarf eines vernetzten Systems zu ermitteln und Schutzmaßnahmen\r\nzu planen, umzusetzen und zu dokumentieren.\r\nDie Schülerinnen und Schüler bereiten sich auf ein Kundengespräch zur Identifizierung eines\r\nSchutzbedarfes vor. Hierzu informieren sie sich über Informationssicherheit in vernetzten\r\nSystemen.\r\nSie ermitteln im Kundengespräch die Schutzziele, analysieren die Systeme hinsichtlich der\r\nAnforderungen an die Informationssicherheit und benennen Risiken.\r\nDie Schülerinnen und Schüler planen unter Beachtung betrieblicher IT-Sicherheitsleitlinien\r\nund rechtlicher Regelungen die Vorkehrungen und Maßnahmen zur Minimierung der Wahrscheinlichkeit\r\neines Schadenseintritts.\r\nSie implementieren die Maßnahmen unter Berücksichtigung technischer und organisatorischer\r\nRahmenbedingungen.\r\nSie prüfen die Sicherheit des vernetzten Systems und bewerten das erreichte Sicherheitsniveau\r\nin Bezug auf die Kundenanforderungen, eingesetzter Maßnahmen und Wirtschaftlichkeit.\r\nSie erstellen eine Dokumentation und informieren die Kunden über die Ergebnisse\r\nder Risikoanalyse.\r\nDie Schülerinnen und Schüler reflektieren den Arbeitsprozess hinsichtlich möglicher Optimierungen\r\nund diskutieren das Ergebnis in Bezug auf den Begriff der relativen Sicherheit\r\ndes vernetzten Systems.'),
(24, 24, 'Die Schülerinnen und Schüler verfügen über die Kompetenz, für vernetzte IT-Systeme\r\neine Instandhaltung zu planen und durchzuführen sowie Maßnahmen zur Gewährleistung\r\nder Betriebssicherheit umzusetzen.\r\nDie Schülerinnen und Schüler führen in Zusammenarbeit mit den Kunden eine Anforderungsanalyse\r\ndurch und leiten daraus Projektziele, Anforderungen, gewünschte Ergebnisse,\r\nSchulungsbedarfe und Rahmenbedingungen ab.\r\nAuf dieser Basis planen und kalkulieren sie ein Projekt mit den dazugehörigen personellen\r\nund technischen Ressourcen.\r\nDie Schülerinnen und Schüler entwickeln Lösungsvarianten, vergleichen diese anhand festgelegter\r\nKriterien sowie unter Berücksichtigung von Datenschutz und Datensicherheit. Sie\r\nwählen mit den Kunden die beste Lösung aus. Für den vereinbarten Auftrag erstellen sie\r\nein Dokument über die zu erbringenden Leistungen und ein Angebot.\r\nDie Schülerinnen und Schüler implementieren die gewünschte Lösung. Dabei nutzen sie\r\nMaßnahmen zur Qualitätssicherung. Sie präsentieren den Kunden das Projektergebnis und\r\nführen eine Schulung durch. Sie übergeben den Kunden das Produkt sowie die Dokumentation.\r\nDie Schülerinnen und Schüler bewerten das Projektergebnis auch hinsichtlich Zielerreichung,\r\nWirtschaftlichkeit, Skalierbarkeit und Betriebssicherheit.\r\nSie reflektieren die Projektdurchführung und das Projektergebnis auch unter Berücksichtigung\r\nder kritisch-konstruktiven Kundenrückmeldungen.');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `lernfelder`
--

CREATE TABLE `lernfelder` (
  `id` int(11) NOT NULL,
  `kurzbezeichnung` varchar(10) COLLATE latin1_german1_ci NOT NULL DEFAULT '',
  `bezeichung` varchar(128) COLLATE latin1_german1_ci NOT NULL,
  `zeitrichtwert` int(11) DEFAULT NULL,
  `ausbildungsjahr` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_german1_ci;

--
-- Daten für Tabelle `lernfelder`
--

INSERT INTO `lernfelder` (`id`, `kurzbezeichnung`, `bezeichung`, `zeitrichtwert`, `ausbildungsjahr`) VALUES
(1, '1', 'Das Unternehmen und die eigene Rolle im Betrieb', 40, 1),
(2, '2', 'Arbeitsplätze nach Kundenwunsch ausstatten', 80, 1),
(3, '3', 'Clients in Netzwerke einbinden', 80, 1),
(4, '4', 'Schutzbedarfsanalyse im eigenen Arbeitsbereich', 40, 1),
(5, '5', 'Software zur Verwaltung von Daten anpassen', 80, 1),
(6, '6', 'Serviceanfragen bearbeiten', 40, 1),
(7, '7', 'Cyber-physische Systeme ergänzen', 80, 2),
(8, '8', 'Daten systemübergreifend bereitstellen', 80, 2),
(9, '9', 'Netzwerke und Dienste bereitstellen', 80, 2),
(10, '10a', 'Benutzerschnittstellen gestalten und entwickeln', 80, 3),
(11, '11a', 'Funktionalität in Anwendungen realisieren', 80, 3),
(12, '12a', 'Kundenspezifische Anwendungsentwicklung durchführen', 120, 3),
(13, '10b', 'Serverdienste bereitstellen und Administrationsaufgaben automatisieren', 80, 3),
(14, '11b', 'Betrieb und Sicherheit vernetzter Systeme gewährleisten', 80, 3),
(15, '12b', 'Kundenspezifische Systemintegration durchführen', 120, 3),
(16, '10c', 'Werkzeuge des maschinellen Lernens einsetzen', 80, 3),
(17, '11c', 'Prozesse analysieren und gestalten', 80, 3),
(18, '12c', 'Kundenspezifische Prozess- und Datenanalyse durchführen', 120, 3),
(19, '10d', 'Cyber-physische Systeme entwickeln', 80, 3),
(20, '11d', 'Betrieb und Sicherheit vernetzter Systeme gewährleisten', 80, 3),
(21, '12d', 'Kundenspezifisches cyber-physisches System optimieren', 120, 3),
(22, '10(SE)', 'Energieversorgung bereitstellen und die Betriebssicherheit', 80, 3),
(23, '11(SE)', 'Betrieb und Sicherheit vernetzter Systeme gewährleisten', 80, 3),
(24, '12(SE)', 'Instandhaltung planen und durchführen', 80, 3);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `lernfeldzuordnung`
--

CREATE TABLE `lernfeldzuordnung` (
  `beruf` int(11) NOT NULL,
  `lernfeld` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_german1_ci;

--
-- Daten für Tabelle `lernfeldzuordnung`
--

INSERT INTO `lernfeldzuordnung` (`beruf`, `lernfeld`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 7),
(1, 8),
(1, 9),
(1, 10),
(1, 11),
(1, 12),
(2, 1),
(2, 2),
(2, 3),
(2, 4),
(2, 5),
(2, 6),
(2, 7),
(2, 8),
(2, 9),
(2, 13),
(2, 14),
(2, 15),
(3, 1),
(3, 2),
(3, 3),
(3, 4),
(3, 5),
(3, 6),
(3, 7),
(3, 8),
(3, 9),
(3, 16),
(3, 17),
(3, 18),
(4, 1),
(4, 2),
(4, 3),
(4, 4),
(4, 5),
(4, 6),
(4, 7),
(4, 8),
(4, 9),
(4, 19),
(4, 20),
(4, 21),
(5, 1),
(5, 2),
(5, 3),
(5, 4),
(5, 5),
(5, 6),
(5, 7),
(5, 8),
(5, 9),
(5, 22),
(5, 23),
(5, 24);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `pruefungsteile`
--

CREATE TABLE `pruefungsteile` (
  `id` int(11) NOT NULL,
  `bezeichnung` varchar(128) COLLATE latin1_german1_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_german1_ci;

--
-- Daten für Tabelle `pruefungsteile`
--

INSERT INTO `pruefungsteile` (`id`, `bezeichnung`) VALUES
(1, 'Teil 1 Einrichten eines Arbeitsplatzes'),
(2, 'Teil 2 Fachrichtungsübergreifende berufsprofilgebende Fertigkeiten, Kenntnisse und Fähigkeiten'),
(3, 'Teil 2 Anwendungsentwicklung'),
(4, 'Teil 2 Wirtschaft- und Sozialkunde');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `themenkreisdetails`
--

CREATE TABLE `themenkreisdetails` (
  `id` int(11) NOT NULL,
  `detail` text COLLATE latin1_german1_ci NOT NULL,
  `themenkreis` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_german1_ci;

--
-- Daten für Tabelle `themenkreisdetails`
--

INSERT INTO `themenkreisdetails` (`id`, `detail`, `themenkreis`) VALUES
(1, 'Projektplanung mithilfe von Strukturplan, Netzplan, Gantt-Diagramm:\r\n- kritischer Weg, \r\n- Pufferzeiten \r\n- fristgerechte Terminierung \r\n- Lösungsmöglichkeiten bei Terminproblemen \r\n- Meilensteine', 2),
(2, 'Projektphasen', 2),
(3, 'Vorgehensmodelle', 2),
(4, 'Teambildung und -entwicklung', 2),
(5, 'Reflektionsmethoden, z. B. Feedback-Kultur, LessonsLearned', 2),
(9, 'Machbarkeitsanalyse', 3),
(10, 'Stakeholderanalyse', 3),
(11, 'Risikoanalyse', 3),
(12, 'Abklären der Rahmenbedingungen unter Berücksichtigung von Datensicherheit und Datenschutz (wirtschaftlich, technisch, rechtlich, terminlich)', 3),
(13, 'Stammdaten und Bewegungsdaten', 3),
(14, 'Betriebswirtschaftliche Kennzahlen, z. B. Umsatz, Gewinn, Deckungsbeitrag', 3),
(15, 'Kundenkommunikation', 4),
(16, 'Fehlermanagement', 4),
(17, 'Störungs-Management', 4),
(18, 'Supportanfragen', 4),
(19, 'Bearbeitungsstatus, z. B. mittels Ticketsystem', 4),
(20, 'Marktformen, z. B. Monopol, Oligopol, Polypol, Käufer-Verkäufermarkt', 5),
(21, 'Zielgruppendefinition- und Abgrenzung', 5),
(22, 'Angebotsbewertung', 5),
(23, 'Benchmarking', 5),
(24, 'Fragetechnik, aktives Zuhören, bedarfs- und adressatengerechte Präsentation', 6),
(25, 'Eigene Datenerhebung (z. B. Kundenbefragung) ', 6),
(26, 'Auswertung vorhandener Daten (z. B. Anforderung an Büroarbeitsplätze)', 6),
(32, 'Upselling', 7),
(33, 'Medien zur Kundenpräsentation und -information, z. B. Kundengespräch via Webbinare ', 7),
(34, 'Online-Schulungen', 7),
(35, 'Homepage', 7),
(36, 'Kommunikationsmodelle, z. B. •	Sender-/Empfängermodell •	Eisbergmodell 0 4-0hren-Modell', 7),
(37, 'Cross-Selling ', 7),
(38, 'Technische und nicht-technische Texte', 8),
(39, 'Digitale Suchabfragen unter Verwendung von Suchoperatoren', 8),
(40, 'Auswertung von englischen Texten', 8),
(41, 'Qualitätsmerkmale von Präsentationen', 8),
(42, 'Medienkompetenz', 8),
(43, 'Nutzwertanalyse', 9),
(44, 'Vertriebsformen (direkter Vertrieb, indirekter Vertrieb)', 9),
(45, 'Stärken-/SchwächenanaIyse', 9),
(46, 'Funktionale, ökonomische, ökologische, soziale Aspekte\r\n- Hardwareprodukte, z. B. CPU, Motherboard, Speicher, Datenspeicher, Netzteile, Grafikkarte, Peripheriegeräte, Netzwerkkomponenten, WLAN\r\n- Softwareprodukte, z. B. Anwendungen, Betriebssysteme\r\n', 10),
(47, 'Virtualisierungen', 10),
(48, 'Cloudlösungen (Software as a Service, Infrastructure as a Service, Platform as a Service)', 10),
(49, 'Einteilung und Klassifikation von Anwendungssystemen', 11),
(50, 'Benutzeroberfläche', 11),
(51, 'Datenbanksysteme', 11),
(52, 'Kommunikationssysteme', 11),
(53, 'Netzwerkkomponenten, z. B. Router, Switch, Accesspoint', 11),
(54, 'Netzwerkprotokolle, z. B. OSI-Modell, DNS, SMB,', 11),
(55, 'Kenngrößen, Leistungsdaten, Funktionsumfang, z. B. BIOS, UEFI, CPU, RAM, Datenspeicher, RAID, Filesysteme, Grafikkarte, Netzwerkkarte, Router,', 12),
(56, 'Barrierefreier Zugriff auf IT-Systeme', 12),
(57, 'Normen, Vorschriften, Zertifikate, Kennzeichnungen', 12),
(58, 'Energiekenngrößen, Wirkungsgrad', 12),
(59, 'Strom, Spannung, Leistung (P = U * I)', 12),
(60, 'Leistungsaufnahme (W = P * t)', 12),
(61, 'Anschaffungskosten', 13),
(62, 'Betriebskosten', 13),
(63, 'Variable und fixe Kosten', 13),
(64, 'Lizenzkosten', 13),
(65, 'Kostenvergleich (Leasing, Kauf, Miete, Pay-per-use) ', 13),
(66, 'Auslastung und Anpassungsfähigkeit/Erweiterbarkeit, Zukunftssicherheit ', 13),
(67, 'Preis-Leistungs-Verhältnis', 13),
(68, 'Qualitativer und quantitativer Angebotsvergleich ', 13),
(69, 'Nutzwertanalyse', 13),
(70, 'Bedarfsanalyse', 14),
(71, 'Lasten- und Pflichtenheft', 14),
(72, 'Installation und Einrichtung von Systemen, z. B. Betriebssysteme, BIOS, UEFI, Partitionierungen/Formatierungen Netzwerkanbindungen, IP-Konfiguration, Remotedesktop', 14),
(73, 'Geräteklassen, z. B. Desktops, Notebooks, Tablets, Smartphones', 15),
(74, 'Mobile und stationäre Arbeitsplatzsysteme wie PC,', 15),
(75, 'Barrierefreiheit, z. B. Arbeitsplatz mit zweitem Monitor ausstatten, Lautsprecher/Mikrofon zur Verfügung stellen', 15),
(76, 'Anwendungssoftware ', 16),
(77, 'Betriebssysteme', 16),
(78, 'Integrierte Entwicklungsumgebung (IDE)', 16),
(79, 'Standard- oder Individualsoftware', 16),
(80, 'Branchensoftware', 16),
(81, 'Open Source', 16),
(82, 'Proprietäre Software', 16),
(83, 'Anpassbarkeit und Wartbarkeit', 16),
(84, 'Schnittstellen, Interoperabilität ', 16),
(85, 'Kompatibilität', 16),
(86, 'Lizenzarten, z. B. EULA, OEM, GNU ', 17),
(87, 'Pay by Use', 17),
(88, 'Installation und Konfiguration der Hardware', 18),
(89, 'Installation und Konfiguration des Betriebssystems', 18),
(90, 'Arbeiten mit der Kommandozeile, Befehlssyntax, Parameter', 18),
(91, 'Anpassung von Software', 18),
(92, 'Konfiguration, Test, Troubleshooting und Dokumentation von Netzwerkverbindungen, z. B. IP-Adressen, DHCP, WLAN-Zugang, Pre shared key/Enterprise, VPN', 18),
(93, 'Konsolenbefehle für Dateioperationen und Netzwerktroubleshooting, z. B. dir, Ist mkdir, ipconfig, ifconfig, alias, iproute2, arp, del, cp, copy, chrnod, ping, traceroute', 18),
(94, 'Compiler, Linker, Interpreter', 19),
(95, 'Prozedurale und objektorientierte Herangehensweise', 19),
(96, 'Variablen, Datentypen und -strukturen', 19),
(97, 'Kontrollstrukturen, z. B. Verzweigung, Schleife', 19),
(98, 'Prozeduren, Funktionen', 19),
(99, 'Klassen, Vererbung, Methoden', 19),
(100, 'Bibliotheken, Frameworks', 19),
(101, 'Skriptsprachen, z. B. Shell-Skript, Macros', 19),
(102, 'Debugging, formale und inhaltliche Fehler', 19),
(103, 'Abbildung der Kontrollstrukturen mittels Struktogramm, PAP oder Pseudocode als didaktisches Hilfsmittel', 20),
(104, 'UML (Use Case, Klassendiagramm)', 20),
(105, 'Entwurf der Bildschirmausgabemasken (Softwareergonomie, Barrierefreiheit)', 20),
(106, 'Einfache ER-Modelle', 21),
(107, 'SELECT bezogen auf eine Tabelle', 21),
(108, 'Qualitätsbegriff nach ISO 9000', 22),
(109, 'Betriebliche QM-Systeme', 22),
(110, 'QS-Normen', 22),
(111, 'Audit', 22),
(112, 'Zertifizierung', 22),
(113, 'Maßnahmen zur Verbesserung der Prozessqualität', 23),
(114, 'Maßnahmen zur Verbesserung der Arbeitsqualität', 23),
(115, 'Maßnahmen zur Verbesserung der Produkt- und', 23),
(116, 'Qualitätsplanung, Qualitätsziele (Ist-Zustand ermitteln und Ziel-Zustand festlegen)', 23),
(117, 'Qualitätslenkung (Umsetzung der Planphase) ', 23),
(118, 'PDCA — Plan, Do, Check, Act als Qualitätsmanagementzyklus', 23),
(119, 'Kriterien der Softwarequalität, Funktionalität, Zuverlässigkeit, Benutzbarkeit, Effizienz, Änderbarkeit, Übertragbarkeit', 23),
(120, 'Maßnahmen zur Informationssicherheit\r\n- organisatorische Maßnahmen, z. B. IT-Sicherheitsbeauftragter im Betrieb, Erstellung einer z. B. Passwort-Policy\r\n- technische Maßnahmen, z. B. Virenschutzsystem, Firewall, Anti-Spam\r\n- personelle Maßnahmen, Sicherheitsbewusstsein herstellen\r\n', 24),
(121, 'Normen und Branchenstandards zur Informationssicherheit, z. B. \r\n- ISO 2700x\r\n- BSI IT-Grundschutz', 24),
(122, 'Datenschutzgesetze — national und auf EU-Ebene z. B. DSGVO, BDSG\r\n- Definition von personenbezogenen Daten', 24),
(123, 'Schutzbedarfsanalyse nach BSI IT-Grundschutz für \r\n- Anwendungen\r\n- IT-Systeme\r\n- Räume\r\n- Kommunikationsverbindungen\r\n', 25),
(124, 'Bausteine aus dem Grundschutzkatalog', 26),
(125, 'Schutzbedarfskategorien (normal, hoch, sehr hoch)', 26),
(126, 'IT-Sicherheitsmanagementsystem implementieren ', 26),
(127, 'Betrieblicher IT-Sicherheitsbeauftragter', 26),
(128, 'Schaffung eines Sicherheitsbewusstseins bei den Mitarbeitern', 27),
(129, 'IT-Sicherheitsmanagement', 27),
(130, 'Durch technische, infrastrukturelle, organisatorische und personelle Schutzmaßnahmen ', 27),
(131, 'Security by Design', 27),
(132, 'Security by Default', 27),
(133, 'Datensicherung/Backup-Verfahren', 27),
(134, 'Sicherung der Verfügbarkeit, z. B. RAID-Systeme, SAN', 27),
(135, 'Zugangs- und Zugriffskontrolle', 27),
(136, 'Verschlüsselungstechniken, symmetrische und asymmetrische Verschlüsselung, CAS, Zertifikate, Digita e Signaturen, Techniken wie https, TSL', 27),
(137, 'Authentifizierung, Passwort-Policy', 27),
(138, 'Firewall, SSH vs. Telnet', 27),
(139, 'Kaufvertrag', 28),
(140, 'Lizenzvertrag', 28),
(141, 'Servicevertrag', 28),
(142, 'Mietvertrag, Leasing', 28),
(143, 'Werkvertrag, Dienstvertrag', 28),
(144, 'SLA', 28),
(145, 'Vertragsbestandteile, z. B. Leistungsbeschreibung, Termine, Entgelte, Lasten- und Pflichtenheft, Konventionalstrafen ', 28),
(146, ' Verzug', 28),
(147, 'Ökologisch', 29),
(148, 'Ökonomisch (z. B. prozentuale Marge) ', 29),
(149, 'Sozial', 29),
(150, 'Kontinuierliche Prüfung der vertraglich vereinbarten Vorgaben', 30),
(151, 'Berücksichtigung der Stilllegung von Altsystemen und Inbetriebnahme der neuen Systeme ', 30),
(152, 'Aufbewahrung von Archivdaten', 30),
(153, 'Vollständige Dokumentation der erbrachten Leistung', 30),
(154, 'Leistungserbringung vor Ort vs. Remote', 31),
(155, 'Kundenvorgaben bei der Leistungserbringung, z. B.\r\n- Termin und Erfüllungsort \r\n- technische Voraussetzungen (z. B. Betriebssystem, Hersteller) \r\n- Kauf, Miete, Leasing ', 31),
(156, 'Rolloutprozesse\r\n- Vorbereitung (Kunden-Onboarding, Scope festlegen, Formalitäten)\r\n- Rolloutumsetzung (Integration von Schnittstellen, kundenspezifische Entwicklungen)\r\n', 31),
(157, 'Mehrliniensystem, Einliniensystem, Matrixorganisation ', 32),
(158, 'Handlungs- und Entscheidungsspielräume/Vollmachten', 32),
(159, 'Motivierte Herangehensweise und Betonung der Chancen', 33),
(160, 'Identifizierung und Darstellung von Veränderungsschritten', 33),
(161, 'Einbeziehung der Mitarbeiter in den Veränderungsprozess\r\n- Mitarbeiterqualifizierung, z. B. durch BlendedLearning, Multiplikatoren\r\n- Erkennen von Promoter, Bremser, Skeptiker und Widerständler\r\n', 33),
(162, 'Ursachen von Widerständen gegen Veränderungen z.B,\r\n- Angst vor Kompetenzverlust\r\n- Wissenslücken\r\n- Persönliche Historie\r\n', 33),
(163, 'Inhalt des Abnahmeprotokolls, z. B.\r\n- Gegenstand der Abnahme\r\n- Beteiligte Personen\r\n- Ort, Datum und Uhrzeit\r\n', 34),
(164, 'Arten der zu übergebenden Dokumentation, z. B.\r\n- Benutzerdokumentation (Handbuch)\r\n- Schnittstellendokumentation\r\n- Programmdokumentation (Source-Code)\r\n- Netzwerkdokumentation\r\n- Testprotokolle\r\n', 34),
(165, 'Mängel und Mängelarten\r\n- Schlechtleistung, z. B. fehlende Funktionalität \r\n- Falschlieferung, z. B. falsche Softwarepakete ausgeliefert\r\n- Minderlieferung, z. B. nur Teile der Software geliefert\r\n', 34),
(166, 'Bestätigung erbrachter Leistungen', 35),
(167, 'Soll- Ist-Vergleich', 35),
(168, 'Abweichungsanalyse', 35),
(169, 'Lessons Learned', 35),
(170, 'Customer Relationship Management ', 37),
(171, 'Gesetz gegen unlauteren Wettbewerb', 37),
(172, 'AGB-Gesetz', 37),
(173, 'Compliance', 37),
(174, 'Regelkonformität', 37),
(175, 'Präsentationstechniken', 38),
(176, 'Grafische Darstellung (Diagrammarten, Bilderbearbeitung, Videos, multimediale Aufbereitung) ', 38),
(177, 'Visualisierung', 38),
(178, 'Tabellenkalkulation', 38),
(179, 'Präsentationsprogramme', 38),
(180, 'Programme zum Erstellen multimedialer Inhalte', 38),
(181, 'Corporate Identity (Cl)', 38),
(182, 'Datensicherheit, Datenschutz', 39),
(183, 'Ausfallsicherheit, bspw. redundante Systeme', 39),
(184, 'selbstkonfigurierende Systeme Lebenslanges Lernen', 39),
(185, 'Teilhabe, soziale Stabilität', 39),
(186, 'Geräteklassen', 40),
(187, 'Vernetzung, Integration und Modularisierung, Zentralisierung/Dezentralisierung, Embedded Systems ', 40),
(188, 'Smart Grid ', 40),
(189, 'loT, Industrie 4.0 ', 40),
(190, 'KI, autonome Systeme', 40),
(191, 'Big Data', 40),
(192, 'Cloud', 40),
(193, 'Block Chain, Smart Contracts', 40),
(194, 'Augmented Reality', 40),
(195, 'Debugging, Break Point', 41),
(196, 'Software-Test, dynamische und statische Testverfahren (z. B. Black Box, White Box, Review, Extremwertetest) ', 41),
(197, 'Testdaten', 41),
(198, 'Komponententest, Funktionstest, Integrationstest ', 41),
(199, 'Versionsmanagement des Quellcodes', 41),
(200, 'Abbildung der Kontrollstrukturen mittels Struktogramm, PAP oder Pseudocode als didaktisches Hilfsmittel', 42),
(201, 'UML (Use Case, Klassendiagramm)', 42),
(202, 'Entwurf der Bildschirmausgabemasken (Softwareergonomie, Barrierefreiheit)', 42),
(203, 'Relationale und nicht-relationale Datenbanken, NOSQL Datenbanken', 43),
(204, 'Datentypen: Boolesche Werte, Ganzzahl, Gleitkommawerte, Währung, Datumswerte, Texte fester und variabler Länge, BLO, Geokoordinaten ', 43),
(205, 'Normalisieren, 1 . bis 3. Normalform', 43),
(206, 'ER-Diagramm, Attribute, Beziehungen, Kardinalitäten, referenzielle Integrität, Aktualisierungsweitergabe, Löschweitergabe, Primärschlüssel, Fremdschlüsse', 43),
(207, 'Datenbankabfrage, Datenpflege', 43),
(208, 'Tabellenstruktur (CREATE TABLE, ALTER TABLE),\r\nIndex (CREATE INDEX), Manipulation (INSERT, UPDATE, DELETE), Projektion (SELECT FROM) Selektion\r\n(SELECT FROM ... WHERE) und (SELECT ... (SELECT\r\nSortieren (ORDER BY), Gruppieren (GROUP BY, HAVING)\r\n', 43),
(209, 'Abfrage über mehrere Tabellen (JOIN)', 43),
(210, 'Ausdrücke und Bedingungen', 43),
(211, 'Aggregat-Funktionen, z. B. SUM', 43),
(212, 'Open Data, API-Schnittstellen', 43),
(213, 'Verschiedene Prüfverfahren, z. B. Parität, Redundanz ', 44),
(214, 'Software-Test, dynamische und statische Testverfahren (z. B. Black Box, White Box, Review, Extremwertetest, Testdaten)', 44),
(215, 'Debugging, Ablaufverfolgung', 44),
(216, 'Netzwerkanalyse, Bandbreite, Reaktionszeiten', 44),
(217, 'Verbesserungsprozess, PDCA-Zyklus, KVP, Kennzahlen', 45),
(218, 'Kontrollverfahren\r\n- Hardwaretest, z. B. Wareneingangskontrolle, mangelhafte Lieferung, Warenausgangskontrolle, Abnahmeprotokol\r\n- SW-Test, z. B. Testverfahren, Abnahmeprotokoll ', 45),
(219, 'Soll-Ist-Vergleich, Abweichungen erkennen und berechnen', 45),
(220, 'Testdatengeneratoren', 45),
(221, 'Testprotokolle', 45),
(222, 'Imageschaden', 46),
(223, 'Wirtschaftlicher Schaden ', 46),
(224, 'Datenverlust', 46),
(225, 'Datendiebstahl', 47),
(226, 'Digitale Erpressung (Ransomware) ', 47),
(227, 'Identitätsdiebstahl (Phishing)', 47),
(228, 'Richtschnur für Entwickler', 48),
(229, 'Objektive Bewertung der Systeme (IT-Grundschutzmodellierung)', 48),
(230, 'Anwender/Benutzer bei der Auswahl eines geeigneten IT-Sicherheitsprodukts unterstützen (Security by Design)', 48),
(231, 'Private Haushalte', 49),
(232, 'Unternehmen (intern, extern)', 49),
(233, 'Funktionale Anforderungen', 49),
(234, 'Qualitätsanforderungen Anforderungen ', 49),
(235, 'Rahmenbedingungen \r\n- Technologisch \r\n- Organisatorisch \r\n- Rechtlich \r\n- Ethisch', 49),
(236, 'Risikoanalyse', 49),
(237, 'Penetrations-Test', 50),
(238, 'Device Security Check', 50),
(239, 'Identity & Access Management', 50),
(240, 'Schwachstellenanalyse (z. B. Ende-zu-Ende-Verschlüsselung)', 50),
(241, 'Zutrittskontrolle, z. B. \r\n- Alarmanlage \r\n- Videoüberwachung \r\n- Besucherausweise ', 51),
(242, 'Zugangskontrolle, z. B.\r\n- Bildschirmschoner mit Passwortschutz \r\n- Biometrische Verfahren \r\n- Magnet- oder Chipkarte \r\n', 51),
(243, 'Zugriffskontrolle, z. B.\r\n- Verschlüsselung von Datenträgern \r\n- Löschung von Datenträgern\r\n- User/Rollenkonzept\r\n', 51),
(244, 'Log Management', 51),
(245, 'Compliance Reports', 51),
(246, 'IPv4/lPv6', 52),
(247, 'MAC', 52),
(248, 'Routing', 52),
(249, 'Switching', 52),
(250, 'ARP', 52),
(251, 'Ausdehnung', 54),
(252, 'Datenübertragungsrate', 54),
(253, 'Verschlüsselung (preshared key, RADIUS ...)', 54),
(254, 'LAN//WAN/MAN/GAN', 54),
(255, 'Strukturierte Verkabelung', 54),
(256, 'VLAN', 54),
(257, 'Drahtlos: PAN/WLAN', 54),
(258, 'Sicherheitskonzepté und -risiken', 54),
(259, 'Bluetooth', 54),
(260, 'Netzwerktopologie (Fl DV/SI)', 55),
(261, 'Netzwerkplan', 55),
(262, 'TCP/UDP', 56),
(263, 'HTTPS', 56),
(264, 'VPN-ModeIle', 57),
(265, 'Tunneling ', 57),
(266, 'IPSec', 57),
(267, 'DNS', 58),
(268, 'DHCP', 58),
(269, 'Proxy', 58),
(270, 'Echtzeitkommunikation sicherstellen können', 59),
(271, 'Mailserver', 59),
(272, 'Webserver', 59),
(273, 'Groupware', 59),
(274, 'Datenbanken', 59),
(275, 'PDCA-Zyklus', 60),
(276, 'MTBF', 60),
(277, 'ANR', 60),
(278, 'Notfallkonzept (Disaster Recovery)', 60),
(279, 'Elektrotechnisch (USV)', 61),
(280, 'Hardwaretechnisch (Redundanzen), RAID', 61),
(281, 'Softwaretechnisch (Back-ups ..)', 61),
(282, 'SNMP, S.M.A.R.T. u. Ä.', 62),
(283, 'Systemlastanalyse', 62),
(284, 'Predictive Maintenance', 62),
(285, 'Load Balancing', 62),
(286, 'Incident Management (Ticketsystem)', 62),
(287, 'Standard Operation Procedures (SOP)', 63),
(288, 'Service Level Agreement (SLA), Service level 1-3', 63),
(289, 'Berechtigungskonzepte, Organisationsstrukturen (Zugang, Zutritt, Zugriff)', 65),
(290, 'Zugangskontrollen (z. B. Gebäude, Serverraum, Schrank ...)', 66),
(291, 'Usermanagement', 67),
(292, 'Firewall/Webfilter', 67),
(293, 'Portsecurity', 67),
(294, 'Verschlüsselung (TPM)', 67),
(295, 'Fog, Cloud ...', 68),
(296, 'SaaS, XaaS ...', 68),
(297, 'Data Warehouse ', 69),
(298, 'Data Lake', 69),
(299, 'iSCS', 70),
(300, 'SMB', 70),
(301, 'NFS', 70),
(302, 'Ethernet, FibreChanneI', 70),
(303, 'Änderbarkeit ', 71),
(304, 'Benutzbarkeit ', 71),
(305, 'Effizienz', 71),
(306, 'Funktionalität', 71),
(307, 'Übertragbarkeit', 71),
(308, 'Zuverlässigkeit', 71),
(309, 'Normen anwenden', 71),
(310, 'ERM', 72),
(311, 'UML-KIassendiagramm', 72),
(312, 'Mock-up', 72),
(313, 'UML-Aktivitätsdiagramm', 72),
(314, 'UML-Anwendungsfalldiagramm (Fl AE, DP).', 72),
(315, 'UML-Sequenzdiagramm (Fl AE, DP)', 72),
(316, 'UML-Zustandsdiagramm (Fl AE, DP)', 72),
(317, 'Datenaustauschformate (xml, json ...)', 73),
(318, 'Datenbankverbindúng implementieren', 73),
(319, 'SQL', 73),
(320, 'API', 73),
(321, 'Performance, Speicherverbrauch', 74),
(322, 'Portabilität', 74),
(323, 'Framework/Bibliotheken', 74),
(324, 'Programmierparadigma (Skriptsprache, Compilersprache ...)', 74),
(325, 'Einsatz von integrierten Entwicklungsumgebungen ', 74),
(326, 'Aufwand', 74),
(327, 'Know-how/Fachkenntnis', 74),
(328, 'Die Darstellung soll in allgemein verständlichem Programm- oder Pseudocode erfolgen. Der Code soll für Dritte, ohne Kenntnis der verwendeten Programmiersprache, lesbar sein. Der Code muss nicht in der geschriebenen Sprache kompilierbar bzw. ausführbar sein.', 75),
(329, 'Shellprogrammierung (z. B. PowerShell, Bash)', 76),
(330, 'Skriptprogrammierung (z. B. Python ...)', 76),
(331, 'Wasserfallmodell', 77),
(332, 'Iterative Modelle (z. B. Spiralmodell, V-ModeIl) ', 77),
(333, 'Agile Modelle', 77),
(334, 'Top-Down-Entwurf', 78),
(335, 'Bottom-Up-Entwurf', 78),
(336, 'Modularisierung', 78),
(337, 'Editor', 82),
(338, 'IDE', 82),
(339, 'Programmgenerator', 82),
(340, 'Linker', 82),
(341, 'Compiler', 82),
(342, 'Interpreter', 82),
(343, 'Debugger', 82),
(344, 'Testsoftware', 82),
(345, 'Versionsverwaltung', 82),
(346, 'Klassendiagramm', 85),
(347, 'Anwendungsfalldiagramm', 85),
(348, 'Zustandsdiagramm', 85),
(349, 'Aktivitätsdiagramm', 85),
(350, 'Sequenzdiagramm', 85),
(351, 'ER-Modell', 86),
(352, 'Relationales Modell', 86),
(353, 'Observer', 88),
(354, 'Singleton', 88),
(355, 'Factory', 88),
(356, 'MVC', 88),
(357, 'Usability', 90),
(358, 'User-Experience', 90),
(359, 'Pseudocode', 92),
(360, 'Struktogramm', 92),
(361, 'PAP', 92),
(362, 'Vererbung', 93),
(363, 'Polymorphie', 93),
(364, 'Interfaces', 93),
(365, 'Allgemeines Fehlerhandling in Programmen', 93),
(366, 'Lineare Suche', 94),
(367, 'Binäre Suche ', 94),
(368, 'Bubble Sort', 94),
(369, 'Die Darstellung soll in allgemein verständlichem Programm- oder Pseudocode erfolgen. Der Code soll für Dritte, ohne Kenntnis der verwendeten Programmiersprache, lesbar sein. Der Code muss nicht in der geschriebenen Sprache kompilierbar bzw. ausführbar sein.', 95),
(370, 'CSV', 96),
(371, 'XML', 96),
(372, 'JSON', 96),
(373, 'REST', 97),
(374, 'SOAP', 97),
(375, 'Tabellenstruktur (CREATE TABLE, ALTER TABLE) ', 98),
(376, 'Index (CREATE INDEX)', 98),
(377, 'Manipulation (INSERT UPDATE, DELETE)', 98),
(378, 'Projektion (SELECT FROM)', 98),
(379, 'Selektion (SELECT FROM ... WHERE) und (SELECT ... (SELECT ...))\r\n', 98),
(380, 'Sortieren (ORDER BY)', 98),
(381, 'Gruppieren (GROUP BY, HAVING)', 98),
(382, 'Abfrage über mehrere Tabellen', 98),
(383, 'Ausdrücke und Bedingungen', 98),
(384, 'Aggregatfunktionen', 98),
(385, 'Datenschutz (Integrität und Authentizität von Daten, Digitale Signatur, Verschlüsselungsverfahren, ArchiVierung (Systeme, Fristen, Pflichten)\r\n', 99),
(386, 'Datensicherheit (Authentifizierung, Autorisierung, Verschlüsselung)', 99),
(387, 'Constraints', 100),
(388, 'Validierungen', 100),
(389, 'Transaktionssicherheit', 100),
(390, 'Statische und dynamische Testverfahren (z. B. Blackbox-Test, Whitebox-Test, Schreibtischtest, Unit-Test, End to End-Tests, Integrationstests, Belastungstests)\r\n', 103),
(391, 'Testprozess\r\n- Auswahl des Testverfahrens\r\n- Kriterien für Testergebnisse definieren\r\n- Testdaten generieren und auswählen\r\n- Testprotokoll und Auswertung\r\n', 103),
(392, 'Inhalte des Ausbildungsvertrages (§ 10 f. BBiG): \r\n- Vertragspartner\r\n- Dauer der täglichen Arbeitszeit\r\n- Probezeit\r\n- Vergütungs- und Urlaubsregelungen\r\n- Kündigungsbedingungen\r\n- Folgen bei Nichteinhaltung der Rechte und Pflichten\r\n- Geltungsbereich\r\n- Beendigung\r\n- Arbeitszeugnis\r\n- Prüfungen, Abschluss\r\n', 105),
(393, 'Unterschiedliche Lernorte, auf regionaler Ebene', 106),
(394, 'Zusammenwirken von Betrieb und Berufsschule', 106),
(395, 'Berufsbildungsgesetz, Ausbildungsordnung ', 107),
(396, 'Aufgaben der Berufsschule, Berufsschulpflicht', 107),
(397, 'Aufgaben der Kammern', 107),
(398, 'Rahmenlehrplan', 108),
(399, 'Betrieblicher Ausbildungsplan', 108),
(400, 'Zuordnung der Lernziele des Ausbildungsrahmenplans zu den Inhalten des betrieblichen Ausbildungsplans unter Berücksichtigung betrieblicher Besonderheiten', 108),
(401, 'Einsatz- und Versetzungsplan im Betrieb', 108),
(402, 'Rahmenplan für die berufsschulische Ausbildung', 108),
(403, 'Kenntnis der Arbeitnehmerrechte und -pflichten im Betrieb', 109),
(404, 'Kenntnis der wesentlichen Bestimmungen aus den relevanten Rechtsgebieten:\r\n- Berufsbildungsgesetz\r\n- Arbeitsschutzgesetz\r\n- Bundeselterngeld- und Elternzeitgesetz\r\n- Allgemeines Gleichbehandlungsgesetz\r\n- Kündigungsschutzgesetz\r\n- Jugendarbeitsschutzgesetz\r\n- Arbeitsstättenverordnung\r\n- Arbeitszeitgesetz\r\n- Betriebsverfassungsgesetz\r\n- Betriebsvereinbarungen (z. B. betriebliche Arbeitszeitreglung, betriebliches Beurteilungsverfahren) \r\n- Sozialversicherung \r\n- Lohnsteuer\r\n- Mutterschutzgesetz\r\n- Schwerbehindertengesetz\r\n', 109),
(405, 'Arbeitgeberverbände', 110),
(406, 'Industrie- und Handelskammern ', 110),
(407, 'Wirtschaftsverbände', 110),
(408, 'Gewerkschaften', 111),
(409, 'Betriebsräte \r\n- Wahl und Zusammensetzung \r\n- Mitbestimmungs- und Mitwirkungsrechte \r\n- Betriebsversammlung \r\n- Einigungsstelle \r\n- Jugend- und Auszubildendenvertretung', 111),
(410, 'Tarifverträge (z. B. Entgelttarifvertrag, Manteltarifvertrag)', 112),
(411, 'Tarifautonomie, Tarifverhandlung, Tarifbindung, Tarifkonflikt (Arbeitskampf)', 112),
(412, 'Geltungsbereich ', 112),
(413, 'Laufzeit', 112),
(414, 'Brutto/Netto-Entgelt', 113),
(415, 'Lohnsteuer, Kirchensteuer', 113),
(416, 'Sozialabgaben: Krankenversicherung, Arbeitslosenversicherung, Rentenversicherung, Pflegeversicherung', 113),
(417, 'Vermögenswirksame Leistungen ', 113),
(418, 'Steuerklassen', 113),
(419, 'Regelungen und Möglichkeiten für interne und externe Weiterbildung in Betrieb und Branche, evtl. tarifvertragliche Regelungen', 114),
(420, 'Berufliche Fortbildung und Umschulung', 114),
(421, 'Innerbetriebliche Fortbildung', 114),
(422, 'Staatliche Fördermaßnahmen', 114),
(423, 'Visueles Lernen, z. B.: Lernposter mit Mindmaps, Schaubilder, Grafiken erstellen, Videos ansehen, eigene Zusammenfassungen und Lernkarteien schreiben', 115),
(424, 'Auditives Lernen, z. B.: Lerngruppen bilden, Vorträge anhören, Lerninhalte aufnehmen und abspielen ', 115),
(425, 'Kommunikatives Lernen, z. B.: Dialoge, Diskussionen, Lerngruppen, Frage-Antwort-Spiele\r\n', 115),
(426, 'Motorisches Lernen, z. B.: „Learning by Doing\" , Rollenspiele, Gruppenaktivitäten', 115),
(427, 'Zeitmanagementtechniken, flexible Arbeitszeiten ', 116),
(428, 'Moderations- und Präsentationstechniken', 116),
(429, 'Arbeitsplanung- und Projektplanungstechniken', 116),
(430, 'Verschiedene Arbeitstechniken erlernen', 116),
(431, 'Gestaltung eines lernförderlichen und das Lernen integrierenden Arbeitsplatzes', 116),
(432, 'Beschaffung, Auswahl und Auswertung von Fachinformationen', 116),
(433, 'Digitale Lernmedien nutzen und individuell bewerten, z. B..\r\n- Internet\r\n- Apps\r\n- Plattformen (Kommunikation, Information, Videos, Austausch)\r\n- Netzwerke\r\n- Computer Based Training (CBT)\r\n- Web Based Training (WBT)\r\n- Umgang mit mobilen Endgeräten\r\n', 116),
(434, 'IT-Weiterbildung ergänzend zur Ausbildung in den IT-Berufen', 117),
(435, 'Staatliche Fördermaßnahmen', 117),
(436, 'Innerbetriebliche Fortbildung', 117),
(437, 'Umschulungen', 117),
(438, 'Regelungen und Möglichkeiten für interne und externe Weiterbildung in Betrieb und Branche, evtl. tarifvertragliche Regelungen ', 118),
(439, 'Bildungseinrichtungen', 118),
(440, 'Auslandsaufenthalte, z. B. mithilfe von EU-Förderprogrammen', 118),
(441, 'Persönliche Weiterbildung \r\n- Studium von Fachliteratur\r\n- Selbstlernmaterialien\r\n- Fachmessen\r\n', 118),
(442, 'Entwicklung bezüglich\r\n- Eigenständigkeit Verantwortung \r\n- Reflexivität \r\n- Lernkompetenz \r\n- Team- und FührungŠfähigkeit\r\n- Mitgestaltung  \r\n- Kommunikation\r\n', 118),
(443, 'Überbetriebliche Fortbildung', 118),
(444, 'Europass', 118),
(445, 'Mobilitätsprogramme', 118),
(446, 'Europäische Sozialcharta', 118),
(447, 'Potenzialanalyse', 118),
(448, 'Karriereplanung', 118),
(449, 'Möglichkeiten und Grenzen einer Existenzgründung ', 118),
(450, 'Altersvorsorge', 118),
(451, 'Branchenzugehörigkeit', 119),
(452, 'Gesamtwirtschaft, z. B. primärer, sekundärer, tertiärer Sektor, erwerbswirtschaftliche Betriebe ', 119),
(453, 'Produktpalette und Märkte', 119),
(454, 'Gesellschaft bürgerlichen Rechts', 120),
(455, 'Personengesellschaften, z. B. Einzelunternehmen, KG, OHG, GmbH & Co. KG', 120),
(456, 'Kapitalgesellschaften, z. B. GmbH, AG', 120),
(457, 'Staatliche oder kommunale Unternehmen, Unternehmen des öffentlichen Rechts ', 120),
(458, 'Gemeinnützige Organisationen', 120),
(459, 'Unternehmenszentrale, Filialunternehmen, Niederlassungen, Außenstelle', 121),
(460, 'Einlinien- bzw. Mehrlinien-, Stabliniensystem', 121),
(461, 'Spartenorganisation', 121),
(462, 'Matrixorganisation', 121),
(463, 'Arbeitsabläufe und Aufgabenteilung', 121),
(464, 'Konzern', 122),
(465, 'Kartell', 122),
(466, 'Fusion', 122),
(467, 'Produktivität', 123),
(468, 'Wirtschaftlichkeit', 123),
(469, 'Rentabilität', 123),
(470, 'Internationale Spezialisierung, Globalisierung ', 124),
(471, 'Betriebliche und gesamtwirtschaftliche Arbeitsteilung', 124),
(472, 'Möglichkeiten und Grenzen der sozialen Marktwirtschaft', 124),
(473, 'Branchenspezifische Gewerkschaften und Arbeitgeberverbände', 125),
(474, 'Wirtschaftsorganisationen', 125),
(475, 'Berufsständische Vertretungen und Organisationen', 125),
(476, 'Ehrenamtliche Mitwirkung, z. B. Prüfungsausschuss', 125),
(477, 'Vertretung gesamtgesellschaftlicher Interessen', 126),
(478, 'Betriebsverfassungsgesetz', 127),
(479, 'Arbeitnehmervertretung, Betriebsrat', 127),
(480, 'Jugend- und Auszubildendenvertreter und deren Informations-, Beratungs- und Mitbestimmungsrechte\r\n', 127),
(481, 'Betriebsvereinbarungen bzw. Personalvertretung auf Grundlage des Personalvertretungsgesetzes\r\n', 127),
(482, 'Arbeitsschutzgesetz', 128),
(483, 'Arbeitssicherheitsgesetz', 128),
(484, 'Arbeitszeitgesetz', 128),
(485, 'Betriebssicherheitsverordnung', 128),
(486, 'Arbeitsstättenverordnung', 128),
(487, 'Unfallverhütungsvorschriften (UVV)', 128),
(488, 'Berufsgenossenschaften', 128),
(489, 'Arbeitsplatzergonomie', 128),
(490, 'Bildschirmarbeitsplatzverordnung', 128),
(491, 'Aufsichtsbehörde für Arbeitsschutz (Gewerbeaufsicht)', 128),
(492, 'Jugendarbeitsschutzgesetz', 128),
(493, 'Mechanische, elektrische, thermische und chemische Gefahren', 129),
(494, 'Ergonomische, akustische und psychische Gefahren ', 129),
(495, 'Gefahren beachten und ggf. melden', 129),
(496, 'Sicherheitshinweise, Vorschriften und Anweisungen beachten', 129),
(497, 'Besondere Fürsorgepflicht des Arbeitgebers', 129),
(498, 'Ersthelfer am Arbeitsplatz', 129),
(499, 'Ergonomische Arbeitsplatzgestaltung', 129),
(500, 'Augenuntersuchung für Bildschirmarbeitsplätze,', 130),
(501, 'Psychische Gefährdungsbeurteilung', 130),
(502, 'Sachgerechter Umgang mit Gefahrenpotenzialen', 132),
(503, 'Allgemeine und betriebliche Verhaltensregeln ', 132),
(504, 'Notausgänge (Kennzeichnung), Fluchtwege ', 132),
(505, 'im Gebäude/am Arbeitsplatz', 132),
(506, 'Schutzarten elektrischer Betriebsmittel', 132),
(507, 'Schutzklassen', 132),
(508, 'Prüfzeichen, z. B. CE-Zeichen', 132),
(509, 'Schriften, Farben und Zeichen des Arbeitsschutzes', 132),
(510, 'Erste-Hilfe-Maßnahmen', 133),
(511, 'Ersthelfer, Notruf- und Notfallnummern', 133),
(512, 'Meldeketten', 133),
(513, 'Fluchtwege und Sammelplätze', 133),
(514, 'Evakuierung und Dokumentation ', 133),
(515, 'Meldepflicht von Unfällen', 133),
(516, 'Brandursachen durch brennbare Stoffe und Hitzeentwicklung', 134),
(517, 'Brandschutzordnung, z. B. Verbot zur Fahrstuhlnutzung, Schließen von Türen und Fenstern im Gebäude/am Arbeitsplatz', 134),
(518, 'Brandschutzmittel \r\n- Feuerlöscher (Arten, Standort, Bedienungsanleitung, Wirkungsweise), \r\n- Löschdecken\r\n', 134),
(519, 'Verhalten in Brandfällen, z. B. Verbot zur Fahrstuhlnutzung, Schließen von Türen und Fenstern im Gebäude/am Arbeitsplatz', 134),
(520, 'Sammelplätze', 134),
(521, 'Flucht und Rettungswege', 134),
(522, 'Sicherheitszeichen', 134),
(523, 'Brandschutzklassen (A, B, C, D)', 134),
(524, 'Brandmeldung', 134),
(525, 'Schulung', 134),
(526, 'Spezifische Risiken der IT-Prozesse, sowie von ITbeteiligten Prozessen, z. B. USV-Anlagen', 135),
(527, 'Rationelle Energie- und Ressourcenverwendung, z. B..\r\n- unnötige Gerätelaufzeiten vermeiden\r\n- Umgang mit Speicher- und Printmedien \r\n', 135),
(528, 'Green IT', 135),
(529, 'Wiederverwertung (Recycling)', 135),
(530, 'Abfalltrennung und -vermeidung', 135),
(531, 'Branchenspezifische Abfälle \r\n- Erfassung \r\n- Lagerung und Entsorgung von z. B. Datenträgern oder Kabeln', 136),
(532, 'Teilnahme am Dualen System im Hinblick auf Verpackungsentsorgung', 137),
(533, 'Immissionsschutzgesetz, technische Anleitungen,', 137),
(534, 'Im Rahmen von Nachhaltigkeit sind auch Auswirkungen auf Umwelt, Pflanzen, Tiere, Lebensräume zu reflektieren', 138),
(535, 'Berücksichtigen wirtschaftlicher Nachhaltigkeit bereits bei Einkauf und Lieferantenauswahl', 139),
(536, 'Sparsamer und effektiver Umgang mit Roh-, Hilfsund Betriebsstoffen (ggf. erforderliche Kennzeichnung und getrennte Lagerung beachten)', 139),
(537, 'Ressourcenverbrauch und Umweltschutz in Kombination bedenken, z. B. Nutzung von Strom aus regenerativen Quellen', 139),
(538, 'Kreislaufwirtschaftsgesetz (insbes. § 6) ', 140),
(539, 'Papierloses Büro', 140),
(540, 'Verursacherprinzip', 141),
(541, 'Interdisziplinarität, Interkulturalität', 142),
(542, 'Fähigkeit, effektiv, integer und respektvoll mit verschiedenen Teams zusammenzuarbeiten ', 142),
(543, 'Übernahme gemeinsamer Verantwortung für die Zusammenarbeit und Wertschätzung der einzelnen Beiträge jedes Teammitglieds\r\n', 142),
(544, 'Unternehmenswerte beachten und betriebliche', 142),
(545, '(Un-)bewusste Vorurteile erkennen und beseitigen ', 142),
(546, 'Compliance-Regeln kennen und beachten', 142),
(547, 'Standards des BSI beachten und einhalten ', 143),
(548, 'betriebliche Regelungen kennen und beachten ', 143),
(549, 'Reflexion von Erfahrungen in virtuellen Räumen', 143),
(550, 'Im Umgang mit Kommunikation und Information', 143),
(551, 'Nachrichten und Inhalte auch aus Sicht der Empfänger betrachten', 143),
(552, 'Sensibler Umgang mit Adressatenlisten in der digitalen Kommunikation', 143),
(553, 'Die möglichen (auch juristischen) Konsequenzen von Äußerungen über den eigenen Arbeitgeber in sozialen Netzwerken berücksichtigen', 143),
(554, '„Diversity\" gewährleisten und unterschiedliche Perspektiven berücksichtigen\r\n', 144),
(555, 'Aus der Verschiedenheit Vorteile für das Unternehmen ziehen', 144),
(556, 'Gender-Neutralität gewährleisten, aber auch z. B. das dritte Geschlecht berücksichtigen', 144),
(557, 'Im Zentrum ethischer Aspekte steht die Würde aller Menschen sowie deren Integrität. Diese ist für alle direkt und indirekt Betroffenen der IT-Lösungen kurz-, mittel- und langfristig zu gewährleisten.', 144),
(558, 'Im Rahmen von Nachhaltigkeit sind auch Auswirkungen auf alles Lebendige (Umwelt, Pflanzen, Tiere, Lebensräume) zu reflektieren.', 144),
(559, 'Ergänzend dazu sind auch allgemeine und betriebliche Compliance-Regelungen zu berücksichtigen', 144),
(560, '', 144);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `themenkreise`
--

CREATE TABLE `themenkreise` (
  `id` int(11) NOT NULL,
  `themenkreis` text COLLATE latin1_german1_ci NOT NULL,
  `fragekomplaex` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_german1_ci;

--
-- Daten für Tabelle `themenkreise`
--

INSERT INTO `themenkreise` (`id`, `themenkreis`, `fragekomplaex`) VALUES
(2, '01 Merkmale und Methoden des Projektmanagements kennen, beurteilen, ergänzen können\r\n', 1),
(3, '02 Machbarkeit von Projekten beurteilen können', 1),
(4, '03 Arbeitsaufgaben im Rahmen von Geschäfts- und Leistungsprozessen planen, vorbereiten und durchführen', 1),
(5, '01	Marktsituationen bewerten können', 2),
(6, '02 Zielgruppengerechte Bedarfsanalyse durchführen können', 2),
(7, '03	Zielgerichtete Methoden zur Kundenberatung kennen und beurteilen können', 2),
(8, '04	Informationen aufbereiten und präsentieren sowie Quellen auswerten können', 2),
(9, '05	Marketingaktivitäten unterstützen können Nutzwertanalyse', 2),
(10, '01 Marktgängige IT-Systeme kennen, unterscheiden und beurteilen können', 3),
(11, '02 Einsatzbereiche für IT-Systeme identifizieren können', 3),
(12, '03 Leistungsfähigkeit und Energieeffizienz von IT-Systemen bestimmen, analysieren und beurteilen können', 3),
(13, '04 Wirtschaftlichkeit von IT-Systemen bestimmen und beurteilen können', 3),
(14, '01 IT-Systeme unter Berücksichtigung des IT-Umfeldes konzeptionieren, konfigurieren, testen und dokumentieren können', 4),
(15, '02 Bedarfsgerechte Auswahl von Hardware vornehmen und begründen können', 4),
(16, '03 Bedarfsgerechte Auswahl von Software vornehmen und begründen können', 4),
(17, '04 Urheberrechtsgesetz kennen und Lizenzmodelle unterscheiden können', 4),
(18, '05 Aktivitäten bei Installationen und Konfigurationen kennen und beurteilen', 4),
(19, '06 Programmiersprachen mit folgenden Merkmalen kennen, einordnen und unterscheiden können', 4),
(20, '07 Programmierwerkzeuge kennen und anwenden können', 4),
(21, '08 Grundlagen von Datenbanken kennen und anwenden können', 4),
(22, '01 Grundverständnis zu folgenden Fachbegriffen nachweisen', 5),
(23, '02 Maßnahmen des Qualitätsmanagements kennen, planen und anwenden', 5),
(24, '01 Betriebliche Regelungen zur IT-Sicherheit auf Grundschutzniveau im eigenen Arbeitsbereich analysieren, anwenden und ihre Einhaltung überprüfen', 6),
(25, '02 Schutzbedarfsanalyse im eigenen Arbeitsbereich durchführen', 6),
(26, '03 Modellierung eines arbeitsplatzbezogenen', 6),
(27, '04 Umsetzung des arbeitsplatzbezogenen Sicherheitskonzeptes unterstützen können', 6),
(28, '01 Vertragsarten, Vertragsbestandteile und Vertragsstörungen kennen und unterscheiden', 7),
(29, '02 Zielsetzungen des Unternehmens dem Leitbild entnehmen können', 7),
(30, '03 Abstimmen der dokumentierten Vorgaben zur Leistungserbringung während des gesamten Zeitraums mit dem Auftraggeber', 7),
(31, '04 Umsetzungsvarianten der Leistungserbringung kennen', 7),
(32, '05 Leistungserbringung gemäß der Aufbauorganisation des eigenen Unternehmens abstimmen, z. B.', 7),
(33, '06 Veränderungsprozesse planen und unterstützen ', 7),
(34, '07 Leistungsübergabe und Einweisungen planen und dokumentieren', 7),
(35, '08 Leistungserbringung bewerten und dokumentieren können', 7),
(36, '01 Aktives Zuhören, Kommunikationsmodelle (z. B. Telefonkonferenzen, Chat, virtuelle Teambesprechung), Verkaufsgespräche (Anfrage, Angebot, Auftrag), Analyse der Kundenbedürfnisse —> nicht Bestandteil der schriftlichen Prüfung', 8),
(37, '02 Kundenbeziehungen unter Beachtung rechtlicher Regelungen und betrieblicher Grundsätze gestalten', 8),
(38, '03 Instrumente zur Datenauswertung kennen und bedarfsgerecht auswählen sowie Ergebnisse interpretieren können', 8),
(39, '01 Chancen und Risiken der technischen Entwicklungen kennen und identifizieren können', 9),
(40, '02 Veränderungen von Einsatzfeldern kennen und beurteilen können', 9),
(41, '01 Fehler erkennen, analysieren und beheben', 10),
(42, '02 Algorithmen formulieren und Programme entwickeln', 10),
(43, '03 Datenbanken modellieren und erstellen ', 10),
(44, '01 Methoden der Qualitätslenkung anwenden', 11),
(45, '02	Methoden zur Messung der Zielerreichung im', 11),
(46, '01 Schadenspotenziale von IT-Sicherheitsvorfällen einschätzen und Schäden verhindern können', 12),
(47, '02 Präventive IT-Sicherheitsmaßnahmen für verschiedene Bedrohungsszenarien planen und umsetzen', 12),
(48, '03 Ziele zur Entwicklung von IT-Sicherheitskriterien definieren', 12),
(49, '04 Kunden zur IT-Sicherheit beraten', 12),
(50, '05 IT-Sicherheitsmaßnahmen mit verschiedenen Tools überprüfen', 12),
(51, '06 Technische organisatorische Maßnahmen (TOM) kontrollieren', 12),
(52, '01 Schichtenmodelle, z. B. OSI, TCP/IP benennen und zuordnen können', 13),
(53, '02 Netzwerkkomponenten vergleichen und analysieren können', 13),
(54, '03 Netzwerkkonzepte (-topologien, -infrastrukturen) benennen und charakterisieren', 13),
(55, '04 Peer 2 Peer bzw. Client-Server-Konzepte vergleichen und hinsichtlich ihres Einsatzes bewerten können', 13),
(56, '05 Übertragungsprotokolle erläutern und zielgerichtet einsetzen können', 13),
(57, '06 Standortübergreifende und -unabhängige Kommunikation situationsgerecht auswählen und einrichten können', 13),
(58, '07 Netzwerkrelevante Dienste administrieren können DNS', 13),
(59, '08 Anwendungsdienste sicherstellen können', 13),
(60, '09 Risiken identifizieren, Maßnahmen planen und\r\nAusfallwahrscheinlichkeiten berücksichtigen\r\n', 13),
(61, '10 Maßnahmen zur Sicherstellung des Betriebes beurteilen können', 13),
(62, '11 Monitoringsysteme anwenden und Ergebnisse interpretieren können ', 13),
(63, '12 Monitoringergebnisse analysieren und korrektive Maßnahmen bestimmen können', 13),
(64, '13 Erstellen und Erweitern von Handbüchern für Benutzer und Systembetreuer\r\n(Schwerpunkt der praktischen Prüfung)', 13),
(65, '01 Technische und organisatorische Maßnahmen (TOM)', 14),
(66, '02 Möglichkeiten der physischen/hardwaretechnischen Absicherung benennen', 14),
(67, '03 Möglichkeiten der softwaretechnischen Absicherung implementieren können', 14),
(68, '04 Verschiedene Service- und Liefermodelle benennen und bedarfsorientiert auswählen können ', 14),
(69, '05 Daten heterogener Quellen zusammenführen können', 14),
(70, '06 Netzwerkkomponenten und -protokolle beschreiben können', 14),
(71, '01 Anforderungen kundengerecht erfassen können', 15),
(72, '02 Planen mit geeigneten Modellen', 15),
(73, '03 Festlegen von Schnittstellen und vorhandene nutzen', 15),
(74, '04 Situationsgerechte Auswahl einer passenden Programmiersprache begründen können', 15),
(75, '05 Algorithmen in einer Programmiersprache darstellen', 15),
(76, '06 Wiederkehrende Systemabläufe mithilfe von Skripten automatisieren und überwachen können\r\n', 15),
(77, '01 Vorgehensmodelle unterscheiden können', 16),
(78, '02 Strukturierte Analyse- und Designverfahren anwenden können', 16),
(79, '03 Objektorientierte Analyse- und Designverfahren anwenden können', 16),
(80, '04 Programmspezifikationen festlegen, Datenmodelle und Strukturen aus fachlichen Anforderungen ableiten, Schnittstellen festlegen, geeignete Programmiersprachen auswählen', 16),
(81, '05 Konzepte von Programmiersprachen (z. B. strukturiert, prozedural, funktional, objektorientiert) kennen und exemplarisch Programmiersprachen nennen können', 16),
(82, '06 Software-Entwicklungswerkzeuge aufgabenbezogen anwenden können', 16),
(83, '07 Einsatzmöglichkeiten von Programmiersprachen kennen', 16),
(84, '08 Lasten-IPflichtenheft erstellen können', 16),
(85, '09 UML-Diagramme erstellen können', 16),
(86, '10 Datenmodelle erstellen können', 16),
(87, '11 Normalisierung anwenden können (1. bis 3. Normalform)\r\n', 16),
(88, '12 Design-Pattern anwenden können', 16),
(89, '13 Anforderungen an die Softwareergonomie benennen und beurteilen können', 16),
(90, '14 Benutzeroberfläche gestalten können', 16),
(91, '15 Prototypen (Mock-ups) erstellen können', 16),
(92, '16 Algorithmen erstellen können', 16),
(93, '17 Objektorientierte Programmiermethoden anwenden können', 16),
(94, '18 Einfache Such- und Sortier-Algorithmen kennen', 16),
(95, '19 Bestehende Funktionen/Klassen erweitern', 16),
(96, '20 Dateiformate zum Datenaustausch anwenden können und deren Einsatzbereiche kennen', 16),
(97, '21 Möglichkeiten zur Nutzung von Services und', 16),
(98, '22 Datenbankabfrage, Datenpflege mit SQL erstellen können', 16),
(99, '01 Anwendungen unter Berücksichtigung von Datenschutz und Datensicherheit erstellen können', 17),
(100, '02 Datenintegrität mithilfe von technischen Maßnahmen beurteilen und sicherstellen können', 17),
(101, '03 Modultests erstellen und durchführen können (Unit-Tests)', 17),
(102, '04 Grundfunktionalitäten einer Versionsverwaltung in ihrem Einsatz beschreiben und anwenden können, z. B. Branches, Pull, Push, Merge ', 17),
(103, '05 Softwaretests erstellen, durchführen und die Ergebnisse analysieren können\r\n', 17),
(104, '06 Daten und Sachverhalte aus Tests multimedial aufbereiten und situationsgerecht unter Nutzung digitaler Werkzeuge und unter Beachtung der betrieblichen Vorgaben präsentieren ', 17),
(105, '01 Rechte und Pflichten des Auszubildenden und des Ausbildenden', 18),
(106, '02 Vorteile der Ausbildung im dualen System der Berufsbildung', 18),
(107, '03 Aufgaben von Ausbildungsbetrieb, Berufsschule und Kammern im Rahmen der Berufsausbildung', 18),
(108, '04 Ausbildungsrahmenplan, sachliche und zeitliche Gliederung\r\n', 18),
(109, '05 Grundsätze des Individual- und Kollektivarbeitsrechtes', 18),
(110, '06 Arbeitgeberorganisationen', 18),
(111, '07 Arbeitnehmerorganisationen', 18),
(112, '08 Tarifrecht', 18),
(113, '09 Lohn- und Gehaltsformen', 18),
(114, '10 Lebensbegleitendes lernen', 18),
(115, '11 Lerntechniken', 18),
(116, '12 Arbeitstechniken', 18),
(117, '13 Berufliche Fortbildung und Umschulung', 18),
(118, '14 Lebensplanung', 18),
(119, '01 Der Betrieb', 19),
(120, '02 Rechtsformen', 19),
(121, '03 Unternehmensstruktur und Organisationsform ', 19),
(122, '04 Wirtschaftliche Verflechtungen', 19),
(123, '05 Ziele von Betrieben und Unternehmen', 19),
(124, '06 Betriebliche und gesamtwirtschaftliche Arbeitsteilung', 19),
(125, '07 Ziele und Aufgaben von Arbeitgeber- und Arbeitnehmerverbänden', 19),
(126, '08 Ziele und Aufgaben von Behörden und Verwaltungen', 19),
(127, '09 Grundsatz der vertrauensvollen Zusammenarbeit zwischen Arbeitgeber- und Arbeitnehmervertretern', 19),
(128, '01 Gesundheits- und Arbeitsschutzvorschriften', 20),
(129, '02 Gefährdungen und Beanspruchungen wahrnehmen und einschätzen', 20),
(130, '03 Vorsorgeuntersuchungen', 20),
(131, '04 Aufgaben der Sicherheitsbeauftragten', 20),
(132, '05 Vorschriften im betrieblichen und persönlichen Arbeitsablauf', 20),
(133, '06 Verhaltensweisen bei Unfällen', 20),
(134, '07 Verhaltensweisen im Brandfall sowie vorbeugender Brandschutz', 20),
(135, '01 Umweltbelastungen wahrnehmen und vermeiden helfen', 21),
(136, '02 Umgang mit Abfällen', 21),
(137, '03 Öffentliche Systeme und Verordnungen/Gesetze ', 21),
(138, '04 Externe Auswirkungen', 21),
(139, '05 Umweltschonende Ressourcennutzung ', 21),
(140, '06 Abfallvermeidung und -reduzierung ', 21),
(141, '07 Rechtsfolgen bei Nichteinhaltung', 21),
(142, '01 Wertschätzende Zusammenarbeit', 22),
(143, '02 Informationstechnische Schutzziele: Integrität, Vertraulichkeit und Authentizität berücksichtigen ', 22),
(144, '03 Ethische Aspekte und Compliance-Regelungen', 22),
(145, '', 22);

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `ausbildungsberufe`
--
ALTER TABLE `ausbildungsberufe`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `fragekomplex`
--
ALTER TABLE `fragekomplex`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_fragekomplex_pruefungsteile` (`pruefungsteil`);

--
-- Indizes für die Tabelle `lernfelddetail`
--
ALTER TABLE `lernfelddetail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_lernfelddetail_lernfelder` (`lernfeld`);

--
-- Indizes für die Tabelle `lernfelder`
--
ALTER TABLE `lernfelder`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `lernfeldzuordnung`
--
ALTER TABLE `lernfeldzuordnung`
  ADD PRIMARY KEY (`beruf`,`lernfeld`),
  ADD KEY `FK__lernfelder` (`lernfeld`);

--
-- Indizes für die Tabelle `pruefungsteile`
--
ALTER TABLE `pruefungsteile`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indizes für die Tabelle `themenkreisdetails`
--
ALTER TABLE `themenkreisdetails`
  ADD PRIMARY KEY (`id`),
  ADD KEY `themenkreis` (`themenkreis`);

--
-- Indizes für die Tabelle `themenkreise`
--
ALTER TABLE `themenkreise`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fragekomplaex` (`fragekomplaex`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `ausbildungsberufe`
--
ALTER TABLE `ausbildungsberufe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT für Tabelle `fragekomplex`
--
ALTER TABLE `fragekomplex`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT für Tabelle `lernfelddetail`
--
ALTER TABLE `lernfelddetail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT für Tabelle `lernfelder`
--
ALTER TABLE `lernfelder`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT für Tabelle `pruefungsteile`
--
ALTER TABLE `pruefungsteile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT für Tabelle `themenkreisdetails`
--
ALTER TABLE `themenkreisdetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=561;

--
-- AUTO_INCREMENT für Tabelle `themenkreise`
--
ALTER TABLE `themenkreise`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=146;

--
-- Constraints der exportierten Tabellen
--

--
-- Constraints der Tabelle `fragekomplex`
--
ALTER TABLE `fragekomplex`
  ADD CONSTRAINT `FK_fragekomplex_pruefungsteile` FOREIGN KEY (`pruefungsteil`) REFERENCES `pruefungsteile` (`id`);

--
-- Constraints der Tabelle `lernfelddetail`
--
ALTER TABLE `lernfelddetail`
  ADD CONSTRAINT `FK_lernfelddetail_lernfelder` FOREIGN KEY (`lernfeld`) REFERENCES `lernfelder` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints der Tabelle `lernfeldzuordnung`
--
ALTER TABLE `lernfeldzuordnung`
  ADD CONSTRAINT `FK__ausbildungsberufe` FOREIGN KEY (`beruf`) REFERENCES `ausbildungsberufe` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `FK__lernfelder` FOREIGN KEY (`lernfeld`) REFERENCES `lernfelder` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints der Tabelle `themenkreisdetails`
--
ALTER TABLE `themenkreisdetails`
  ADD CONSTRAINT `themenkreisdetails_ibfk_1` FOREIGN KEY (`themenkreis`) REFERENCES `themenkreise` (`id`);

--
-- Constraints der Tabelle `themenkreise`
--
ALTER TABLE `themenkreise`
  ADD CONSTRAINT `themenkreise_ibfk_1` FOREIGN KEY (`fragekomplaex`) REFERENCES `fragekomplex` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
