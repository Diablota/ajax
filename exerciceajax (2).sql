-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  mer. 27 mars 2019 à 09:43
-- Version du serveur :  10.1.34-MariaDB
-- Version de PHP :  7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `exerciceajax`
--

-- --------------------------------------------------------

--
-- Structure de la table `continent`
--

CREATE TABLE `continent` (
  `id` int(11) NOT NULL,
  `libelle` varchar(50) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `continent`
--

INSERT INTO `continent` (`id`, `libelle`) VALUES
(1, 'europe'),
(2, 'oceanie'),
(3, 'afrique');

-- --------------------------------------------------------

--
-- Structure de la table `pays`
--

CREATE TABLE `pays` (
  `id` int(11) NOT NULL,
  `libelle` varchar(25) COLLATE utf8_bin NOT NULL,
  `continentId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `pays`
--

INSERT INTO `pays` (`id`, `libelle`, `continentId`) VALUES
(1, 'france', 1),
(2, 'Allemagne', 1),
(3, 'australie', 2),
(4, 'nouvelle-zelande', 2),
(5, 'benin', 3),
(6, 'cameroun', 3);

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

CREATE TABLE `utilisateur` (
  `id` int(11) NOT NULL,
  `nom` varchar(25) COLLATE utf8_bin NOT NULL,
  `prenom` varchar(25) COLLATE utf8_bin NOT NULL,
  `villeId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `utilisateur`
--

INSERT INTO `utilisateur` (`id`, `nom`, `prenom`, `villeId`) VALUES
(1, 'jean', 'claude', 1),
(2, 'dazdaz', 'dazdaz', 2),
(3, 'dazdaz', 'dazdaz', 2),
(4, 'AAAA', 'AAAAAAA', 5),
(5, '', '', 0),
(6, '', '', 0),
(7, 'fezfzefe', 'Laetitia', 1),
(8, 'fezfzefe', 'Laetitia', 1),
(9, 'fezfzefe', 'Laetitia', 1),
(10, 'BONNET', 'a', 6),
(11, 'BONNET', 'a', 6),
(12, 'BONNET', 'a', 6),
(13, 'BONNET', 'a', 6),
(14, 'BONNET', 'a', 6),
(15, 'BONNET', 'a', 6),
(16, 'BONNET', 'a', 6),
(17, 'BONNET', 'a', 6),
(18, 'BONNET', 'a', 6),
(19, 'BONNET', 'a', 6),
(20, 'BONNET', 'a', 6),
(21, 'BONNET', 'a', 6),
(22, 'BONNET', 'a', 6),
(23, 'BONNET', 'a', 6),
(24, 'BONNET', 'a', 6),
(25, 'BONNET', 'a', 6),
(26, 'BONNET', 'a', 6),
(27, 'BONNET', 'a', 6),
(28, 'BONNET', 'a', 6),
(29, 'BONNET', 'a', 6),
(30, 'BONNET', 'a', 6),
(31, 'BONNET', 'a', 6),
(32, 'BONNET', 'a', 6),
(33, 'BONNET', 'a', 6),
(34, 'BONNET', 'a', 6),
(35, 'BONNET', 'a', 6),
(36, 'dazdaz', 'a', 2),
(37, 'dazdaz', 'a', 2),
(38, 'dazdaz', 'a', 2),
(39, 'dazdaz', 'a', 2),
(40, 'dazdaz', 'a', 2),
(41, 'dazdaz', 'a', 2),
(42, 'dazdaz', 'a', 2),
(43, 'dazdaz', 'a', 2),
(44, 'dazdaz', 'a', 2),
(45, 'dazdaz', 'a', 2),
(46, 'dazdaz', 'a', 2),
(47, 'dazdaz', 'a', 2),
(48, 'dazdaz', 'a', 2),
(49, 'dazdaz', 'a', 2),
(50, 'dazdaz', 'a', 2),
(51, 'dazdaz', 'a', 2),
(52, 'dazdaz', 'a', 2),
(53, 'dazdaz', 'a', 2),
(54, 'dazdaz', 'a', 2),
(55, 'dazdaz', 'a', 2),
(56, 'BONNET', 'AAAAAAA', 3),
(57, 'BONNET', 'AAAAAAA', 3),
(58, 'BONNET', 'AAAAAAA', 3),
(59, '', '', 1),
(60, '', '', 1),
(61, '', '', 1),
(62, '', '', 1),
(63, '', '', 1),
(64, '', '', 1),
(65, '', '', 1),
(66, '', '', 1),
(67, '', '', 1),
(68, '', '', 1),
(69, '', '', 1),
(70, '', '', 5),
(71, '', '', 5),
(72, '', '', 5),
(73, '', '', 5),
(74, '', '', 5),
(75, '', '', 5),
(76, '', '', 5),
(77, '', '', 5),
(78, 'ijgfxv', 'kijhgh', 10),
(79, 'ijgfxv', 'kijhgh', 10),
(80, 'ijgfxv', 'kijhgh', 10),
(81, 'ijgfxv', 'kijhgh', 10),
(82, 'ijgfxv', 'kijhgh', 10),
(83, 'ijgfxv', 'kijhgh', 10),
(84, 'ijgfxv', 'kijhgh', 10),
(85, 'ijgfxv', 'kijhgh', 10),
(86, 'ijgfxv', 'kijhgh', 10),
(87, 'ijgfxv', 'kijhgh', 10),
(88, '', '', 5),
(89, '', '', 5),
(90, '', '', 5),
(91, '', '', 5),
(92, '', '', 5),
(93, '', '', 5),
(94, '', '', 5),
(95, '', '', 5),
(96, '', '', 5),
(97, '', '', 5),
(98, '', '', 5),
(99, '', '', 5),
(100, 'dfsdefl', '', 2),
(101, 'dfsdefl', '', 2),
(102, 'dfsdefl', '', 2),
(103, 'dfsdefl', '', 2),
(104, 'dfsdefl', '', 2),
(105, 'dfsdefl', '', 2),
(106, 'dfsdefl', '', 2),
(107, 'dfsdefl', '', 2),
(108, 'dfsdefl', '', 2),
(109, 'fezfzefe', 'Laetitia', 6),
(110, 'BONNET', 'Laetitia', 2);

-- --------------------------------------------------------

--
-- Structure de la table `ville`
--

CREATE TABLE `ville` (
  `id` int(11) NOT NULL,
  `libelle` varchar(25) COLLATE utf8_bin NOT NULL,
  `paysId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Déchargement des données de la table `ville`
--

INSERT INTO `ville` (`id`, `libelle`, `paysId`) VALUES
(1, 'nancy', 1),
(2, 'metz', 1),
(3, 'francfort', 2),
(4, 'sarrebruck', 2),
(5, 'sydney', 3),
(6, 'melbourne', 3),
(7, 'nelson', 4),
(8, 'napier', 4),
(9, 'cotonou', 5),
(10, 'parakou', 5),
(11, 'loum', 6),
(12, 'kumbo', 6);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `continent`
--
ALTER TABLE `continent`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `pays`
--
ALTER TABLE `pays`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD UNIQUE KEY `continent` (`id`);

--
-- Index pour la table `ville`
--
ALTER TABLE `ville`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `continent`
--
ALTER TABLE `continent`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `pays`
--
ALTER TABLE `pays`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT pour la table `ville`
--
ALTER TABLE `ville`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
