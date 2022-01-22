-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : sam. 22 jan. 2022 à 17:37
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
-- Structure de la table `languages`
--

CREATE TABLE `languages` (
  `id_language` int(11) NOT NULL,
  `name_language` varchar(50) NOT NULL,
  `original_name_language` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `languages`
--

INSERT INTO `languages` (`id_language`, `name_language`, `original_name_language`) VALUES
(1, 'Français', 'Français'),
(2, 'Anglais', 'English'),
(3, 'Mandarin', 'Deutsch '),
(4, 'Hindi', 'हिन्दी '),
(5, 'Espagnol', 'español'),
(6, 'Arabe', 'عربى'),
(7, 'Bengali', 'বাংলা'),
(8, 'Russe', 'Русский язык '),
(9, 'Portugais', 'Português '),
(10, 'Indonésien', 'Bahasa Indonesia'),
(11, 'Ourdou', 'اُردُو'),
(12, 'Japonais', '日本語'),
(13, 'Swahili', 'Kiswahili'),
(14, 'Marathi', 'मराठी '),
(15, 'Télougou', 'తెలుగు'),
(16, 'Turc', 'Türkçe'),
(17, 'Cantonais', '广州话'),
(18, 'Tamoul', 'தமிழ்'),
(19, 'Pendjabi Occidental', 'ਪੰਜਾਬੀ '),
(20, 'Wu', '吴语'),
(21, 'Coréen', '한국어'),
(22, 'Vietnamien', 'Tiếng Việt'),
(23, 'Haoussa', 'هَرْشَن هَوْسَ'),
(24, 'Javanais', 'Basa Jawa'),
(25, 'Arabe égyptien', 'عربى'),
(26, 'Italien', NULL),
(27, 'Thaï', NULL),
(28, 'Gujarati', NULL),
(29, 'Kannada', NULL),
(30, 'Persan', NULL),
(31, 'Bhodjpouri', NULL),
(32, 'Minnan', NULL),
(33, 'Philippin', NULL);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id_language`),
  ADD UNIQUE KEY `name_language` (`name_language`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `languages`
--
ALTER TABLE `languages`
  MODIFY `id_language` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
