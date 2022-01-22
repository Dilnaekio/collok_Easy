-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : sam. 22 jan. 2022 à 17:40
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
-- Structure de la table `accommodations_rooms`
--

CREATE TABLE `accommodations_rooms` (
  `id_accommodation` int(11) NOT NULL,
  `id_room` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `accommodations_rooms`
--

INSERT INTO `accommodations_rooms` (`id_accommodation`, `id_room`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 6),
(1, 7),
(1, 8),
(1, 9),
(1, 12),
(1, 15),
(1, 17);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `accommodations_rooms`
--
ALTER TABLE `accommodations_rooms`
  ADD PRIMARY KEY (`id_accommodation`,`id_room`),
  ADD KEY `id_room` (`id_room`);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `accommodations_rooms`
--
ALTER TABLE `accommodations_rooms`
  ADD CONSTRAINT `accommodations_rooms_ibfk_1` FOREIGN KEY (`id_accommodation`) REFERENCES `accommodations` (`id_accommodation`),
  ADD CONSTRAINT `accommodations_rooms_ibfk_2` FOREIGN KEY (`id_room`) REFERENCES `rooms` (`id_room`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
