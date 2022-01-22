-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : sam. 22 jan. 2022 à 17:41
-- Version du serveur : 10.4.22-MariaDB
-- Version de PHP : 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `collok_easy`
--

-- --------------------------------------------------------

--
-- Structure de la table `countries_languages`
--

CREATE TABLE `countries_languages` (
  `id_country` int(11) NOT NULL,
  `id_language` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `countries_languages`
--

INSERT INTO `countries_languages` (`id_country`, `id_language`) VALUES
(73, 1);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `countries_languages`
--
ALTER TABLE `countries_languages`
  ADD PRIMARY KEY (`id_country`,`id_language`),
  ADD KEY `id_language` (`id_language`);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `countries_languages`
--
ALTER TABLE `countries_languages`
  ADD CONSTRAINT `countries_languages_ibfk_1` FOREIGN KEY (`id_country`) REFERENCES `countries` (`id_country`),
  ADD CONSTRAINT `countries_languages_ibfk_2` FOREIGN KEY (`id_language`) REFERENCES `languages` (`id_language`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
