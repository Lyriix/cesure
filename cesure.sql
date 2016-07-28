-- phpMyAdmin SQL Dump
-- version 4.4.10
-- http://www.phpmyadmin.net
--
-- Host: localhost:8889
-- Generation Time: Jul 28, 2016 at 04:20 AM
-- Server version: 5.5.42
-- PHP Version: 7.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cesure`
--
CREATE DATABASE IF NOT EXISTS `cesure` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `cesure`;

-- --------------------------------------------------------

--
-- Table structure for table `tab_cesure`
--

DROP TABLE IF EXISTS `tab_cesure`;
CREATE TABLE `tab_cesure` (
  `num_cesure` int(10) unsigned NOT NULL,
  `filiere` varchar(255) NOT NULL,
  `majeure` varchar(255) NOT NULL,
  `ville` varchar(255) NOT NULL,
  `descriptif` text NOT NULL,
  `duree_mois` int(11) NOT NULL DEFAULT '0',
  `entreprise` varchar(255) NOT NULL,
  `pays` varchar(255) NOT NULL,
  `continent` varchar(255) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=51 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tab_cesure`
--

INSERT INTO `tab_cesure` (`num_cesure`, `filiere`, `majeure`, `ville`, `descriptif`, `duree_mois`, `entreprise`, `pays`, `continent`) VALUES
(1, 'ETI', 'Image', 'Kagoshima', 'Reconstruction de scène 3D à partir de capteurs et caméras', 12, 'Kagoshima University', 'Japon', ''),
(3, 'ETI', 'Informatique', 'Luxembourg', 'Deloitte - IT Risk Consultant', 12, 'Deloitte Luxembourg', 'Luxembourg', ''),
(4, 'ETI', 'Informatique', 'Singapour', 'data Mining support for Yield Improvement Activities', 6, 'Infineon Technologies', 'Singapour', ''),
(2, 'ETI', 'Informatique', 'Munich', 'data Mining support for Yield Improvement Activities', 6, 'Neubiberg', 'Singapour', ''),
(5, 'ETI', 'Informatique', 'San José', 'sécurité des objets communicants en tant que développeur java card ', 12, 'jNet ThingX Corp', 'Etats-Unis', ''),
(6, 'ETI', 'Informatique-Image', 'Berlin', 'Travail sur machine machine learning/Développement d''application tablette', 12, 'Fraunhofer Institut', 'Allemagne', ''),
(7, 'ETI', 'Image', 'Ann Arbor', 'IRM processing', 12, 'School of Dentistry, UMich', 'Etats-Unis', ''),
(8, 'ETI', 'Electronique-Informatique', 'Munich', 'Safety electronics department - Sécurité passagers', 12, 'BMW Group', 'Allemagne', ''),
(9, 'ETI', 'Electronique', 'Limerick', 'département d application', 12, 'Analog Devices BV Limited', 'Angleterre', ''),
(10, 'ETI', 'Robotique', 'Cork', 'Systèmes embarqués', 12, 'Analog Devices', 'Angleterre', ''),
(11, 'ETI', 'Informatique', 'Camarillo', 'QA related activities on software', 12, 'DP Technology', 'Etats-Unis', ''),
(12, 'ETI', 'Image', 'Anvers', 'Cross media color reproduction approaches ', 12, 'Agfa Graphics', 'Belgique', ''),
(13, 'ETI', 'Informatique', 'Hengelo', 'Investigate usage and advantage of a virtual network in the INAETICS project', 12, 'Thales Nederland', 'Pays-Bas', ''),
(13, 'ETI', 'Informatique', 'Hengelo', 'Create a matlab interface for Apache Avro', 12, 'Thales Nederland', 'Pays-Bas', ''),
(14, 'ETI', 'Informatique', 'Austin', '', 12, 'Metadot Corporation, Austin,TX', 'Etats-Unis', ''),
(15, 'ETI', 'Image', 'Chapel Hill', 'Image processing, medical imaging,3D data publishing and technical software development', 12, 'Kitware Inc.', 'Etats-Unis', ''),
(16, 'ETI', 'Electronique', 'Munich', '', 12, 'Infineon', 'Allemagne', ''),
(17, 'ETI', 'Informatique', 'Lausanne', '', 12, 'Tamedia', 'Suisse', ''),
(18, 'CGP', 'Formulation', 'Düsseldorf', 'formulation de colorations pour cheveux', 6, 'Henkel', 'Allemagne', ''),
(18, 'CGP', 'Formulation', 'Düsseldorf', 'formulation de dentifrices', 6, 'Henkel', 'Allemagne', ''),
(19, 'CGP', 'Formulation', 'Bracknell', 'formulation de produits phytosanitaires', 12, 'Syngenta', 'Angleterre', ''),
(20, 'CGP', 'Formulation', 'Anvers', 'Nano encapsulation pour impression offset', 12, 'Agfa', 'Belgique', ''),
(21, 'CGP', 'Formulation', 'Lemförde', 'améliorer la coulée d une poudre', 12, 'BASF', 'Allemagne', ''),
(22, 'CGP', '', 'Hsinchu', 'theranostic drug', 12, 'NationalChiaoThungUniversity', 'Taïwan', ''),
(23, 'CGP', 'PFE', 'Glasgo', '', 5, 'Strathclyde university', 'Angleterre', ''),
(24, 'CGP', 'Formulation', 'Utrecht', 'Development of new cleaning system', 12, 'Diversey - Sealedair ', 'Pays-Bas', ''),
(25, 'CGP', 'Orga', 'Francfort', 'Synthèse chimie organique', 6, 'Bayer Cropscience', 'Allemagne', ''),
(26, 'CGP', 'Polymères et plastiques', 'Bergen op Zoom', 'Application de l AFM (Atomic Force Microscopy) aux polymères et plastiques', 12, 'Sabic-Analyse', 'Pays-Bas', ''),
(27, 'CGP', '', 'Hsinchu', 'Bio-impression 3D de tissu vivants', 12, 'NationalChiaoTunguniversity', 'Taïwan', ''),
(28, 'CGP', 'Polymères', 'Düsseldorf', 'Synthèse de polymères', 12, 'Henkel', 'Allemagne', ''),
(29, 'CGP', '', 'Tsukuba', 'Working on thin film process (CVD/ALD) and characterization for eletronic applications -', 12, 'Air Liquide Laboratories', 'Japon', ''),
(30, 'CGP', 'Polymères', 'Geleen', 'Synthèse de catalyseur pour polymérisation (EPDM).', 12, 'Lanxess Elastomers B. V', 'Pays-Bas', ''),
(31, 'CGP', 'Formulation', 'Monheim am Rhein', 'Formulation agrochimie', 12, 'Bayer CropScience GmbH', 'Allemagne', ''),
(32, 'CGP', 'Analyse', 'Warfield', 'Analyse de produits, agrochimie', 12, 'Syngenta-Analyse', 'Angleterre', ''),
(33, 'CGP', 'GP', 'King of Prussia', '', 12, 'Arkema', 'Etats-Unis', ''),
(34, 'CGP', 'Analyse', 'Stevenage', ' Bioanalyses en laboratoire de pharmacocinétique (DMPK)', 12, 'GSK', 'Angleterre', ''),
(34, 'CGP', 'Orga', 'Stevenage', 'Chimie organique', 12, 'GSK', 'Angleterre', ''),
(34, 'CGP', 'Analyse', 'Stevenage', 'Bioanalyses en laboratoire de pharmacocinétique (DMPK)Département : maladies des voies respiratoires', 12, 'GSK', 'Angleterre', ''),
(35, 'CGP', 'Polymères-Formulation', 'Little Newsham', 'Synthèse de polymères', 12, 'AkzoNobel', 'Angleterre', ''),
(36, 'CGP', 'Polymères', 'Kakogawa', ' Development of binder for lithium ion battery ', 12, 'Sumitomo Chemical', 'Japon', ''),
(37, 'CGP', 'Formulation', 'King of Prussia', 'Formulation de peinture', 12, 'Arkema', 'Etats-Unis', ''),
(37, 'CGP', 'Fluorocarbon', 'King of Prussia', '', 12, 'Arkema', 'Etats-Unis', ''),
(37, 'CGP', 'GP', 'King of Prussia', 'Unité pilote et développement de procédés', 12, 'Arkema', 'Etats-Unis', ''),
(38, 'CGP', 'Analyse', 'Monheim am Rhein', 'Analyses LC/LC-MS', 12, 'Bayer CropScience ', 'Allemagne', ''),
(39, 'CGP', 'Orga', 'Cambridge', 'Synthèse orga (conception médicaments pour la schizophrénie)', 12, 'Broad Institute', 'Etats-Unis', ''),
(39, 'CGP', 'Analyse', 'Cambridge', 'Chimie Analytique', 12, 'Broad Institute', 'Etats-Unis', ''),
(40, 'CGP', 'Formulation', 'Hambourg', 'Formulation des silicones pour application dans les adhésifs', 12, 'Tesa', 'Allemagne', ''),
(41, 'CGP', 'GP-Polymères', 'Rheinmünster', 'Trinseo (Dow Chemicals) - Génie des Procédés et Polymères -', 12, 'Trinseo Rheinmünster', 'Allemagne', ''),
(42, 'CGP', 'GP', 'Middelbourg', 'Amélioration d un procédé', 12, 'EASTMAN', 'Pays-Bas', ''),
(43, 'CGP', 'Formulation-Polymères', 'Düsseldorf', 'Synthèse et formulation de polymères', 12, 'Henkel', 'Allemagne', ''),
(44, 'CGP', '', 'Darmstadt', 'HPLC-MS matériaux OLED', 12, 'Merck', 'Allemagne', ''),
(45, 'CGP', 'SA', 'Penzberg', 'Analyse de protéines(anticorps) utilisées pour diagnostiques de maladies. Analyse par HPLC-MS', 12, 'Roche', 'Allemagne', '');

-- --------------------------------------------------------

--
-- Table structure for table `tab_eleve`
--

DROP TABLE IF EXISTS `tab_eleve`;
CREATE TABLE `tab_eleve` (
  `ID` int(10) unsigned NOT NULL,
  `nom` varchar(255) NOT NULL,
  `prenom` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `filiere` varchar(255) NOT NULL DEFAULT '0',
  `num_cesure` int(11) NOT NULL DEFAULT '0',
  `mdp` text NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=113 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tab_eleve`
--

INSERT INTO `tab_eleve` (`ID`, `nom`, `prenom`, `email`, `filiere`, `num_cesure`, `mdp`) VALUES
(1, 'Robert', 'Albane', 'albane.robert@cpe.fr', 'ETI', 1, '0000'),
(2, 'Colas', 'Cyril', 'cyril.colas@cpe.fr', 'ETI', 2, '0000'),
(3, 'Lefebvre', 'Hippolyte', 'hippolyte.lefebvre@cpe.fr', 'ETI', 3, '0000'),
(4, 'Colas', 'Cyril', 'cyril.colas@cpe.fr', 'ETI', 4, '0000'),
(5, 'Monge', 'Pia', 'pia.monge@cpe.fr', 'ETI', 5, '0000'),
(6, 'Berthelon', 'Guillaume', 'guillaume.berthelon@cpe.fr', 'ETI', 5, '0000'),
(7, 'Di Folco', 'Maxime', 'maxime.difolco@cpe.fr', 'ETI', 6, '0000'),
(8, 'Hoang', 'Valentin', 'valentin.hoang@cpe.fr', 'ETI', 6, '0000'),
(9, 'Maigre', 'Lucas', 'lucas.maigre@cpe.fr', 'ETI', 6, '0000'),
(10, 'Belloir', 'Corentin', 'corentin.belloir@cpe.fr', 'ETI', 6, '0000'),
(11, 'Mirabel', 'Clement', 'clement.mirabel@cpe.fr', 'ETI', 7, '0000'),
(12, 'D-aure', 'Antoine', 'antoine.d-aure@cpe.fr', 'ETI', 8, '0000'),
(13, 'Michaud', 'Julien', 'julien.michaud@cpe.fr', 'ETI', 9, '0000'),
(14, 'Perel', 'Vincent', 'vincent.perel@cpe.fr', 'ETI', 10, '0000'),
(15, 'Farineau', 'Camille', 'camille.farineau@cpe.fr', 'ETI', 11, '0000'),
(16, 'Bensimon', 'Nathan', 'nathan.bensimon@cpe.fr', 'ETI', 12, '0000'),
(17, 'Randu', 'Edouard', 'edouard.randu@cpe.fr', 'ETI', 13, '0000'),
(18, 'Ranc', 'Nicolas', 'nicolas.ranc@cpe.fr', 'ETI', 13, '0000'),
(19, 'Chamard', 'Thibaut', 'thibaut.chamard@cpe.fr', 'ETI', 14, '0000'),
(20, 'Loudghiri', 'Ahmed', 'ahmed.loudghiri@cpe.fr', 'ETI', 14, '0000'),
(21, 'Chassagnard', 'Mayeul', 'mayeul.chassagnard@cpe.fr', 'ETI', 15, '0000'),
(22, 'Jeannin', 'Mayeul', 'mayeuljeannin@hotmail.fr', 'ETI', 16, '0000'),
(23, 'Deffobis', 'Donatien', 'donatien.deffobis@cpe.fr', 'ETI', 17, '0000'),
(24, 'Eggert Griscelli', 'Katarina', 'katarina.eggert-griscelli@cpe.fr', 'CGP', 18, '0000'),
(25, 'Gomez', 'Rebecca', 'rebecca.gomez@cpe.fr', 'CGP', 18, '0000'),
(26, 'Beaufume', 'Emilie', 'emilie.beaufume@cpe.fr', 'CGP', 19, '0000'),
(27, 'Huet', 'Stanislas', 'stanislas.huet@cpe.fr', 'CGP', 20, '0000'),
(28, 'Dupeux', 'Tristan', 'tristan.dupeux@cpe.fr', 'CGP', 21, '0000'),
(29, 'Perieteanu', 'Marina', 'marina.perieteanu@cpe.fr', 'CGP', 22, '0000'),
(30, 'Perieteanu', 'Marina', 'marina.perieteanu@cpe.fr', 'CGP', 23, '0000'),
(31, 'Languedoc', 'Benjamin', 'benjamin.languedoc@cpe.fr', 'CGP', 24, '0000'),
(32, 'Bachy', 'Lorianne', 'lorianne.bachy@cpe.fr', 'CGP', 24, '0000'),
(33, 'Betonni', 'Leo', 'leo.bettoni@cpe.fr', 'CGP', 25, '0000'),
(34, 'Girod', 'Robin', 'robin.girod@cpe.fr', 'CGP', 26, '0000'),
(35, 'Auge', 'Thomas', 'thomasauge@hotmail.com', 'CGP', 27, '0000'),
(36, 'Tugnoli', 'Rudy', 'rudy.tugnoli@cpe.fr', 'CGP', 28, '0000'),
(37, 'Denavit', 'Mirabelle', 'mirabelle.denavit@cpe.fr', 'CGP', 29, '0000'),
(38, 'Petit', 'Julien', 'julien.petit@cpe.fr', 'CGP', 30, '0000'),
(39, 'Houel', 'Lucie', 'lucie.houel@cpe.fr', 'CGP', 31, '0000'),
(40, 'Guironnet', 'Alexandre', 'alexandre.guironnet@cpe.fr', 'CGP', 32, '0000'),
(41, 'Cunin', 'Marion', 'cunin.marion@gmail.com', 'CGP', 33, '0000'),
(42, 'Malsert', 'Barbara', 'barbara.malsert@cpe.fr', 'CGP', 34, '0000'),
(43, 'Touzet', 'Megane', 'meganetouzet@hotmail.fr', 'CGP', 34, '0000'),
(44, 'Thoulouze', 'Loric', 'loric.thoulouze@cpe.fr', 'CGP', 34, '0000'),
(45, 'Sala', 'Alexandre', 'alexandre.sala@cpe.fr', 'CGP', 35, '0000'),
(46, 'Manaranche', 'Manon', 'manaranche.m@hotmail.fr', 'CGP', 36, '0000'),
(47, 'Rubella', 'Floriane', 'floriane.rubella@cpe.fr', 'CGP', 37, '0000'),
(48, 'Galuchot', 'Baptiste', 'baptiste.galuchot@cpe.fr', 'CGP', 37, '0000'),
(49, 'Criquioche', 'Pauline', 'pauline.criquioche@cpe.fr', 'CGP', 37, '0000'),
(50, 'Vincent', 'cecile', 'cecile.vincent@cpe.fr', 'CGP', 38, '0000'),
(51, 'Gamby', 'Emma', 'emma.gamby@cpe.fr', 'CGP', 39, '0000'),
(52, 'Fabris', 'Anne', 'anne.fabris@cpe.fr', 'CGP', 39, '0000'),
(53, 'Sauvat', 'Marlene', 'marlene.sauvar@cpe.fr', 'CGP', 40, '0000'),
(54, 'Lefebvre', 'Julien', 'julien.lefebvre.1@cpe.fr', 'CGP', 41, '0000'),
(55, 'Pavard', 'Paul-Alexis', 'paulalexis2510@hotmail.fr', 'CGP', 42, '0000'),
(56, 'Wassink', 'Dirk', 'dirk.wassink@cpe.fr', 'CGP', 43, '0000'),
(57, 'Kelche', 'Claire-Marie', 'claire-marie.kelche@cpe.fr', 'CGP', 44, '0000'),
(58, 'Valette', 'Lea', 'lea.valette@cpe.fr', 'CGP', 45, '0000'),
(112, 'Girot', 'Charly', 'lyriix@live.fr', 'ETI', 0, 'bb0b6647e93b6fb3593e649f301d6c4b49990a8a'),
(111, 'Girot', 'Charly', 'lyriix@live.fr', 'ETI', 0, 'bb0b6647e93b6fb3593e649f301d6c4b49990a8a');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tab_cesure`
--
ALTER TABLE `tab_cesure`
  ADD KEY `num_cesure` (`num_cesure`);

--
-- Indexes for table `tab_eleve`
--
ALTER TABLE `tab_eleve`
  ADD KEY `ID` (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tab_cesure`
--
ALTER TABLE `tab_cesure`
  MODIFY `num_cesure` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=51;
--
-- AUTO_INCREMENT for table `tab_eleve`
--
ALTER TABLE `tab_eleve`
  MODIFY `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=113;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
