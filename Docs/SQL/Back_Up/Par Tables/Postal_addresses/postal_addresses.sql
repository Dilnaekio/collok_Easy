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
-- Structure de la table `postal_addresses`
--

CREATE TABLE `postal_addresses` (
  `id_postal_address` int(11) NOT NULL,
  `street_name_address` varchar(100) NOT NULL,
  `street_number_address` varchar(15) DEFAULT NULL,
  `place_address` varchar(20) NOT NULL,
  `floor_number_address` varchar(10) DEFAULT NULL,
  `accommodation_number_address` varchar(10) DEFAULT NULL,
  `id_city` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `postal_addresses`
--

INSERT INTO `postal_addresses` (`id_postal_address`, `street_name_address`, `street_number_address`, `place_address`, `floor_number_address`, `accommodation_number_address`, `id_city`) VALUES
(1, 'Rue du moulin de Sémalen', '55', 'Résidence - Les lycé', '3e', '26', 13339);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `postal_addresses`
--
ALTER TABLE `postal_addresses`
  ADD PRIMARY KEY (`id_postal_address`),
  ADD KEY `id_city` (`id_city`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `postal_addresses`
--
ALTER TABLE `postal_addresses`
  MODIFY `id_postal_address` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `postal_addresses`
--
ALTER TABLE `postal_addresses`
  ADD CONSTRAINT `postal_addresses_ibfk_1` FOREIGN KEY (`id_city`) REFERENCES `cities` (`id_city`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
