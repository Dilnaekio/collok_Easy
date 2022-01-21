-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : ven. 21 jan. 2022 à 16:52
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
-- Structure de la table `accommodations`
--

CREATE TABLE `accommodations` (
  `id_accommodation` int(11) NOT NULL,
  `name_accommodation` varchar(50) NOT NULL,
  `number_collokers_accommodation` int(11) DEFAULT NULL,
  `rent_amount_accommodation` decimal(10,0) DEFAULT NULL,
  `housing_area_accommodation` varchar(20) DEFAULT NULL,
  `id_postal_address` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `accommodations_rooms`
--

CREATE TABLE `accommodations_rooms` (
  `id_accommodation` int(11) NOT NULL,
  `id_room` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `accounts`
--

CREATE TABLE `accounts` (
  `id_account` int(11) NOT NULL,
  `mail_password` varchar(100) NOT NULL,
  `password_account` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `calendars`
--

CREATE TABLE `calendars` (
  `id_calendar` int(11) NOT NULL,
  `day_calendar` datetime NOT NULL,
  `week_calendar` datetime NOT NULL,
  `month_calendar` datetime NOT NULL,
  `year_calendar` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE `categories` (
  `id_category` int(11) NOT NULL,
  `name_category` varchar(30) DEFAULT NULL,
  `description_category` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `cities`
--

CREATE TABLE `cities` (
  `id_city` int(11) NOT NULL,
  `name_city` varchar(120) NOT NULL,
  `cp_city` varchar(25) NOT NULL,
  `id_country` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `connections`
--

CREATE TABLE `connections` (
  `id_connection` int(11) NOT NULL,
  `status_connection` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `countries`
--

CREATE TABLE `countries` (
  `id_country` int(11) NOT NULL,
  `name_country` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `countries_languages`
--

CREATE TABLE `countries_languages` (
  `id_country` int(11) NOT NULL,
  `id_language` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `difficulties`
--

CREATE TABLE `difficulties` (
  `id_difficulty` int(11) NOT NULL,
  `name_difficulty` varchar(50) NOT NULL,
  `description_difficulty` varchar(300) NOT NULL,
  `coefficient_difficulty` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `documents`
--

CREATE TABLE `documents` (
  `id_document` int(11) NOT NULL,
  `name_document` varchar(50) NOT NULL,
  `content_document` varchar(300) NOT NULL,
  `date_upload_document` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `languages`
--

CREATE TABLE `languages` (
  `id_language` int(11) NOT NULL,
  `name_language` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `markets`
--

CREATE TABLE `markets` (
  `id_market` int(11) NOT NULL,
  `mail_market` varchar(50) DEFAULT NULL,
  `phone_market` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `messages`
--

CREATE TABLE `messages` (
  `id_message` int(11) NOT NULL,
  `content_message` varchar(240) DEFAULT NULL,
  `date_upload_message` datetime NOT NULL,
  `id_type_message` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `objectives`
--

CREATE TABLE `objectives` (
  `id_objective` int(11) NOT NULL,
  `name_objective` varchar(60) NOT NULL,
  `description_objective` varchar(300) DEFAULT NULL,
  `date_of_creation_objective` datetime NOT NULL,
  `deadline_objective` datetime DEFAULT NULL,
  `requested_users_assignements_objective` int(11) DEFAULT NULL,
  `users_who_accepted_objective` int(11) DEFAULT NULL,
  `users_who_declined_objective` int(11) DEFAULT NULL,
  `delay_reminder_objective` date DEFAULT NULL,
  `id_category` int(11) DEFAULT NULL,
  `id_priority` int(11) DEFAULT NULL,
  `id_point` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `objectives_calendars`
--

CREATE TABLE `objectives_calendars` (
  `id_objective` int(11) NOT NULL,
  `id_calendar` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `objectives_outgoings`
--

CREATE TABLE `objectives_outgoings` (
  `id_objective` int(11) NOT NULL,
  `id_outgoing` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `objectives_status`
--

CREATE TABLE `objectives_status` (
  `id_objective_status` int(11) NOT NULL,
  `name_objective_status` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `objectives_tasks`
--

CREATE TABLE `objectives_tasks` (
  `id_objective` int(11) NOT NULL,
  `id_task` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `outgoings`
--

CREATE TABLE `outgoings` (
  `id_outgoing` int(11) NOT NULL,
  `bugdet_outgoing` decimal(10,0) DEFAULT NULL,
  `final_expanse_outgoing` decimal(10,0) DEFAULT NULL,
  `difference_outgoing` decimal(10,0) DEFAULT NULL,
  `id_market` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `points`
--

CREATE TABLE `points` (
  `id_point` int(11) NOT NULL,
  `amount_point` int(11) NOT NULL,
  `id_difficulty` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `postal_addresses`
--

CREATE TABLE `postal_addresses` (
  `id_postal_address` int(11) NOT NULL,
  `street_name_address` varchar(100) NOT NULL,
  `street_number_address` varchar(15) DEFAULT NULL,
  `place_address` varchar(20) NOT NULL,
  `foor_number_address` varchar(10) DEFAULT NULL,
  `accommodation_number_address` varchar(10) DEFAULT NULL,
  `id_city` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `postal_addresses_markets`
--

CREATE TABLE `postal_addresses_markets` (
  `id_postal_address` int(11) NOT NULL,
  `id_market` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `priorities`
--

CREATE TABLE `priorities` (
  `id_priority` int(11) NOT NULL,
  `name_rank_priority` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `reviews`
--

CREATE TABLE `reviews` (
  `id_review` int(11) NOT NULL,
  `rating_review` int(11) NOT NULL,
  `content_review` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `rewards`
--

CREATE TABLE `rewards` (
  `id_reward` int(11) NOT NULL,
  `name_reward` varchar(30) NOT NULL,
  `price_reward` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `roles`
--

CREATE TABLE `roles` (
  `id_role` int(11) NOT NULL,
  `name_role` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `rooms`
--

CREATE TABLE `rooms` (
  `id_room` int(11) NOT NULL,
  `name_room` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `sex`
--

CREATE TABLE `sex` (
  `id_sex` int(11) NOT NULL,
  `name_sex` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `tasks`
--

CREATE TABLE `tasks` (
  `id_task` int(11) NOT NULL,
  `estimated_duration_task` datetime DEFAULT NULL,
  `number_user_required_task` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `tracking`
--

CREATE TABLE `tracking` (
  `id_tracking` int(11) NOT NULL,
  `points_date_tracking` datetime NOT NULL,
  `points_movement_tracking` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `tracking_wallets`
--

CREATE TABLE `tracking_wallets` (
  `id_tracking` int(11) NOT NULL,
  `id_wallet` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `types_of_messages`
--

CREATE TABLE `types_of_messages` (
  `id_type_message` int(11) NOT NULL,
  `name_type_message` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id_user` int(11) NOT NULL,
  `last_name_user` varchar(50) NOT NULL,
  `first_name_user` varchar(50) NOT NULL,
  `birthday_user` date NOT NULL,
  `phone_user` varchar(25) DEFAULT NULL,
  `mobile_phone_user` varchar(25) NOT NULL,
  `alias_user` varchar(30) DEFAULT NULL,
  `id_connection` int(11) DEFAULT NULL,
  `id_calendar` int(11) DEFAULT NULL,
  `id_account` int(11) DEFAULT NULL,
  `id_sex` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `users_accommodations`
--

CREATE TABLE `users_accommodations` (
  `id_user` int(11) NOT NULL,
  `id_accommodation` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `users_documents`
--

CREATE TABLE `users_documents` (
  `name_status_action` varchar(20) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_document` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `users_languages`
--

CREATE TABLE `users_languages` (
  `id_user` int(11) NOT NULL,
  `id_language` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `users_messages_received`
--

CREATE TABLE `users_messages_received` (
  `if_read` tinyint(4) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_message` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `users_messages_send`
--

CREATE TABLE `users_messages_send` (
  `if_send` tinyint(4) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_message` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `users_objectives`
--

CREATE TABLE `users_objectives` (
  `id_user` int(11) NOT NULL,
  `id_language` int(11) NOT NULL,
  `id_objective` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `users_reviews`
--

CREATE TABLE `users_reviews` (
  `id_user` int(11) NOT NULL,
  `id_review` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `users_rewards`
--

CREATE TABLE `users_rewards` (
  `date_of_creation` date NOT NULL,
  `author_creation` int(11) DEFAULT NULL,
  `id_user` int(11) NOT NULL,
  `id_reward` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `users_roles`
--

CREATE TABLE `users_roles` (
  `id_user` int(11) NOT NULL,
  `id_role` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `wallets`
--

CREATE TABLE `wallets` (
  `id_wallet` int(11) NOT NULL,
  `points_available` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `wallets_rewards`
--

CREATE TABLE `wallets_rewards` (
  `id_wallet` int(11) NOT NULL,
  `id_reward` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `accommodations`
--
ALTER TABLE `accommodations`
  ADD PRIMARY KEY (`id_accommodation`),
  ADD KEY `id_postal_address` (`id_postal_address`);

--
-- Index pour la table `accommodations_rooms`
--
ALTER TABLE `accommodations_rooms`
  ADD PRIMARY KEY (`id_accommodation`,`id_room`),
  ADD KEY `id_room` (`id_room`);

--
-- Index pour la table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id_account`),
  ADD UNIQUE KEY `mail_password` (`mail_password`);

--
-- Index pour la table `calendars`
--
ALTER TABLE `calendars`
  ADD PRIMARY KEY (`id_calendar`);

--
-- Index pour la table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id_category`);

--
-- Index pour la table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id_city`),
  ADD UNIQUE KEY `name_city` (`name_city`),
  ADD KEY `id_country` (`id_country`);

--
-- Index pour la table `connections`
--
ALTER TABLE `connections`
  ADD PRIMARY KEY (`id_connection`);

--
-- Index pour la table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id_country`),
  ADD UNIQUE KEY `name_country` (`name_country`);

--
-- Index pour la table `countries_languages`
--
ALTER TABLE `countries_languages`
  ADD PRIMARY KEY (`id_country`,`id_language`),
  ADD KEY `id_language` (`id_language`);

--
-- Index pour la table `difficulties`
--
ALTER TABLE `difficulties`
  ADD PRIMARY KEY (`id_difficulty`),
  ADD UNIQUE KEY `name_difficulty` (`name_difficulty`),
  ADD UNIQUE KEY `description_difficulty` (`description_difficulty`);

--
-- Index pour la table `documents`
--
ALTER TABLE `documents`
  ADD PRIMARY KEY (`id_document`);

--
-- Index pour la table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id_language`),
  ADD UNIQUE KEY `name_language` (`name_language`);

--
-- Index pour la table `markets`
--
ALTER TABLE `markets`
  ADD PRIMARY KEY (`id_market`);

--
-- Index pour la table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id_message`),
  ADD KEY `id_type_message` (`id_type_message`);

--
-- Index pour la table `objectives`
--
ALTER TABLE `objectives`
  ADD PRIMARY KEY (`id_objective`),
  ADD KEY `id_category` (`id_category`),
  ADD KEY `id_priority` (`id_priority`),
  ADD KEY `id_point` (`id_point`);

--
-- Index pour la table `objectives_calendars`
--
ALTER TABLE `objectives_calendars`
  ADD PRIMARY KEY (`id_objective`,`id_calendar`),
  ADD KEY `id_calendar` (`id_calendar`);

--
-- Index pour la table `objectives_outgoings`
--
ALTER TABLE `objectives_outgoings`
  ADD PRIMARY KEY (`id_objective`,`id_outgoing`),
  ADD KEY `id_outgoing` (`id_outgoing`);

--
-- Index pour la table `objectives_status`
--
ALTER TABLE `objectives_status`
  ADD PRIMARY KEY (`id_objective_status`);

--
-- Index pour la table `objectives_tasks`
--
ALTER TABLE `objectives_tasks`
  ADD PRIMARY KEY (`id_objective`,`id_task`),
  ADD KEY `id_task` (`id_task`);

--
-- Index pour la table `outgoings`
--
ALTER TABLE `outgoings`
  ADD PRIMARY KEY (`id_outgoing`),
  ADD KEY `id_market` (`id_market`);

--
-- Index pour la table `points`
--
ALTER TABLE `points`
  ADD PRIMARY KEY (`id_point`),
  ADD KEY `id_difficulty` (`id_difficulty`);

--
-- Index pour la table `postal_addresses`
--
ALTER TABLE `postal_addresses`
  ADD PRIMARY KEY (`id_postal_address`),
  ADD KEY `id_city` (`id_city`);

--
-- Index pour la table `postal_addresses_markets`
--
ALTER TABLE `postal_addresses_markets`
  ADD PRIMARY KEY (`id_postal_address`,`id_market`),
  ADD KEY `id_market` (`id_market`);

--
-- Index pour la table `priorities`
--
ALTER TABLE `priorities`
  ADD PRIMARY KEY (`id_priority`),
  ADD UNIQUE KEY `name_rank_priority` (`name_rank_priority`);

--
-- Index pour la table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id_review`);

--
-- Index pour la table `rewards`
--
ALTER TABLE `rewards`
  ADD PRIMARY KEY (`id_reward`);

--
-- Index pour la table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id_role`);

--
-- Index pour la table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id_room`);

--
-- Index pour la table `sex`
--
ALTER TABLE `sex`
  ADD PRIMARY KEY (`id_sex`);

--
-- Index pour la table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id_task`);

--
-- Index pour la table `tracking`
--
ALTER TABLE `tracking`
  ADD PRIMARY KEY (`id_tracking`),
  ADD KEY `id_user` (`id_user`);

--
-- Index pour la table `tracking_wallets`
--
ALTER TABLE `tracking_wallets`
  ADD PRIMARY KEY (`id_tracking`,`id_wallet`),
  ADD KEY `id_wallet` (`id_wallet`);

--
-- Index pour la table `types_of_messages`
--
ALTER TABLE `types_of_messages`
  ADD PRIMARY KEY (`id_type_message`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`),
  ADD UNIQUE KEY `mobile_phone_user` (`mobile_phone_user`),
  ADD UNIQUE KEY `alias_user` (`alias_user`),
  ADD KEY `id_connection` (`id_connection`),
  ADD KEY `id_calendar` (`id_calendar`),
  ADD KEY `id_account` (`id_account`),
  ADD KEY `id_sex` (`id_sex`);

--
-- Index pour la table `users_accommodations`
--
ALTER TABLE `users_accommodations`
  ADD PRIMARY KEY (`id_user`,`id_accommodation`),
  ADD KEY `id_accommodation` (`id_accommodation`);

--
-- Index pour la table `users_documents`
--
ALTER TABLE `users_documents`
  ADD PRIMARY KEY (`id_user`,`id_document`),
  ADD KEY `id_document` (`id_document`);

--
-- Index pour la table `users_languages`
--
ALTER TABLE `users_languages`
  ADD PRIMARY KEY (`id_user`,`id_language`),
  ADD KEY `id_language` (`id_language`);

--
-- Index pour la table `users_messages_received`
--
ALTER TABLE `users_messages_received`
  ADD PRIMARY KEY (`id_user`,`id_message`),
  ADD KEY `id_message` (`id_message`);

--
-- Index pour la table `users_messages_send`
--
ALTER TABLE `users_messages_send`
  ADD PRIMARY KEY (`id_user`,`id_message`),
  ADD KEY `id_message` (`id_message`);

--
-- Index pour la table `users_objectives`
--
ALTER TABLE `users_objectives`
  ADD PRIMARY KEY (`id_user`,`id_language`,`id_objective`),
  ADD KEY `id_language` (`id_language`),
  ADD KEY `id_objective` (`id_objective`);

--
-- Index pour la table `users_reviews`
--
ALTER TABLE `users_reviews`
  ADD PRIMARY KEY (`id_user`,`id_review`),
  ADD KEY `id_review` (`id_review`);

--
-- Index pour la table `users_rewards`
--
ALTER TABLE `users_rewards`
  ADD PRIMARY KEY (`id_user`,`id_reward`),
  ADD KEY `id_reward` (`id_reward`);

--
-- Index pour la table `users_roles`
--
ALTER TABLE `users_roles`
  ADD PRIMARY KEY (`id_user`,`id_role`),
  ADD KEY `id_role` (`id_role`);

--
-- Index pour la table `wallets`
--
ALTER TABLE `wallets`
  ADD PRIMARY KEY (`id_wallet`);

--
-- Index pour la table `wallets_rewards`
--
ALTER TABLE `wallets_rewards`
  ADD PRIMARY KEY (`id_wallet`,`id_reward`),
  ADD KEY `id_reward` (`id_reward`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `accommodations`
--
ALTER TABLE `accommodations`
  MODIFY `id_accommodation` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id_account` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `calendars`
--
ALTER TABLE `calendars`
  MODIFY `id_calendar` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `categories`
--
ALTER TABLE `categories`
  MODIFY `id_category` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `cities`
--
ALTER TABLE `cities`
  MODIFY `id_city` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `connections`
--
ALTER TABLE `connections`
  MODIFY `id_connection` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `countries`
--
ALTER TABLE `countries`
  MODIFY `id_country` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `difficulties`
--
ALTER TABLE `difficulties`
  MODIFY `id_difficulty` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `documents`
--
ALTER TABLE `documents`
  MODIFY `id_document` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `languages`
--
ALTER TABLE `languages`
  MODIFY `id_language` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `markets`
--
ALTER TABLE `markets`
  MODIFY `id_market` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `messages`
--
ALTER TABLE `messages`
  MODIFY `id_message` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `objectives`
--
ALTER TABLE `objectives`
  MODIFY `id_objective` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `objectives_status`
--
ALTER TABLE `objectives_status`
  MODIFY `id_objective_status` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `outgoings`
--
ALTER TABLE `outgoings`
  MODIFY `id_outgoing` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `points`
--
ALTER TABLE `points`
  MODIFY `id_point` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `postal_addresses`
--
ALTER TABLE `postal_addresses`
  MODIFY `id_postal_address` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `priorities`
--
ALTER TABLE `priorities`
  MODIFY `id_priority` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id_review` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `rewards`
--
ALTER TABLE `rewards`
  MODIFY `id_reward` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `roles`
--
ALTER TABLE `roles`
  MODIFY `id_role` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id_room` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `sex`
--
ALTER TABLE `sex`
  MODIFY `id_sex` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id_task` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `tracking`
--
ALTER TABLE `tracking`
  MODIFY `id_tracking` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `types_of_messages`
--
ALTER TABLE `types_of_messages`
  MODIFY `id_type_message` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `wallets`
--
ALTER TABLE `wallets`
  MODIFY `id_wallet` int(11) NOT NULL AUTO_INCREMENT;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `accommodations`
--
ALTER TABLE `accommodations`
  ADD CONSTRAINT `accommodations_ibfk_1` FOREIGN KEY (`id_postal_address`) REFERENCES `postal_addresses` (`id_postal_address`);

--
-- Contraintes pour la table `accommodations_rooms`
--
ALTER TABLE `accommodations_rooms`
  ADD CONSTRAINT `accommodations_rooms_ibfk_1` FOREIGN KEY (`id_accommodation`) REFERENCES `accommodations` (`id_accommodation`),
  ADD CONSTRAINT `accommodations_rooms_ibfk_2` FOREIGN KEY (`id_room`) REFERENCES `rooms` (`id_room`);

--
-- Contraintes pour la table `cities`
--
ALTER TABLE `cities`
  ADD CONSTRAINT `cities_ibfk_1` FOREIGN KEY (`id_country`) REFERENCES `countries` (`id_country`);

--
-- Contraintes pour la table `countries_languages`
--
ALTER TABLE `countries_languages`
  ADD CONSTRAINT `countries_languages_ibfk_1` FOREIGN KEY (`id_country`) REFERENCES `countries` (`id_country`),
  ADD CONSTRAINT `countries_languages_ibfk_2` FOREIGN KEY (`id_language`) REFERENCES `languages` (`id_language`);

--
-- Contraintes pour la table `messages`
--
ALTER TABLE `messages`
  ADD CONSTRAINT `messages_ibfk_1` FOREIGN KEY (`id_type_message`) REFERENCES `types_of_messages` (`id_type_message`);

--
-- Contraintes pour la table `objectives`
--
ALTER TABLE `objectives`
  ADD CONSTRAINT `objectives_ibfk_1` FOREIGN KEY (`id_category`) REFERENCES `categories` (`id_category`),
  ADD CONSTRAINT `objectives_ibfk_2` FOREIGN KEY (`id_priority`) REFERENCES `priorities` (`id_priority`),
  ADD CONSTRAINT `objectives_ibfk_3` FOREIGN KEY (`id_point`) REFERENCES `points` (`id_point`);

--
-- Contraintes pour la table `objectives_calendars`
--
ALTER TABLE `objectives_calendars`
  ADD CONSTRAINT `objectives_calendars_ibfk_1` FOREIGN KEY (`id_objective`) REFERENCES `objectives` (`id_objective`),
  ADD CONSTRAINT `objectives_calendars_ibfk_2` FOREIGN KEY (`id_calendar`) REFERENCES `calendars` (`id_calendar`);

--
-- Contraintes pour la table `objectives_outgoings`
--
ALTER TABLE `objectives_outgoings`
  ADD CONSTRAINT `objectives_outgoings_ibfk_1` FOREIGN KEY (`id_objective`) REFERENCES `objectives` (`id_objective`),
  ADD CONSTRAINT `objectives_outgoings_ibfk_2` FOREIGN KEY (`id_outgoing`) REFERENCES `outgoings` (`id_outgoing`);

--
-- Contraintes pour la table `objectives_tasks`
--
ALTER TABLE `objectives_tasks`
  ADD CONSTRAINT `objectives_tasks_ibfk_1` FOREIGN KEY (`id_objective`) REFERENCES `objectives` (`id_objective`),
  ADD CONSTRAINT `objectives_tasks_ibfk_2` FOREIGN KEY (`id_task`) REFERENCES `tasks` (`id_task`);

--
-- Contraintes pour la table `outgoings`
--
ALTER TABLE `outgoings`
  ADD CONSTRAINT `outgoings_ibfk_1` FOREIGN KEY (`id_market`) REFERENCES `markets` (`id_market`);

--
-- Contraintes pour la table `points`
--
ALTER TABLE `points`
  ADD CONSTRAINT `points_ibfk_1` FOREIGN KEY (`id_difficulty`) REFERENCES `difficulties` (`id_difficulty`);

--
-- Contraintes pour la table `postal_addresses`
--
ALTER TABLE `postal_addresses`
  ADD CONSTRAINT `postal_addresses_ibfk_1` FOREIGN KEY (`id_city`) REFERENCES `cities` (`id_city`);

--
-- Contraintes pour la table `postal_addresses_markets`
--
ALTER TABLE `postal_addresses_markets`
  ADD CONSTRAINT `postal_addresses_markets_ibfk_1` FOREIGN KEY (`id_postal_address`) REFERENCES `postal_addresses` (`id_postal_address`),
  ADD CONSTRAINT `postal_addresses_markets_ibfk_2` FOREIGN KEY (`id_market`) REFERENCES `markets` (`id_market`);

--
-- Contraintes pour la table `tracking`
--
ALTER TABLE `tracking`
  ADD CONSTRAINT `tracking_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id_user`);

--
-- Contraintes pour la table `tracking_wallets`
--
ALTER TABLE `tracking_wallets`
  ADD CONSTRAINT `tracking_wallets_ibfk_1` FOREIGN KEY (`id_tracking`) REFERENCES `tracking` (`id_tracking`),
  ADD CONSTRAINT `tracking_wallets_ibfk_2` FOREIGN KEY (`id_wallet`) REFERENCES `wallets` (`id_wallet`);

--
-- Contraintes pour la table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`id_connection`) REFERENCES `connections` (`id_connection`),
  ADD CONSTRAINT `users_ibfk_2` FOREIGN KEY (`id_calendar`) REFERENCES `calendars` (`id_calendar`),
  ADD CONSTRAINT `users_ibfk_3` FOREIGN KEY (`id_account`) REFERENCES `accounts` (`id_account`),
  ADD CONSTRAINT `users_ibfk_4` FOREIGN KEY (`id_sex`) REFERENCES `sex` (`id_sex`);

--
-- Contraintes pour la table `users_accommodations`
--
ALTER TABLE `users_accommodations`
  ADD CONSTRAINT `users_accommodations_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id_user`),
  ADD CONSTRAINT `users_accommodations_ibfk_2` FOREIGN KEY (`id_accommodation`) REFERENCES `accommodations` (`id_accommodation`);

--
-- Contraintes pour la table `users_documents`
--
ALTER TABLE `users_documents`
  ADD CONSTRAINT `users_documents_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id_user`),
  ADD CONSTRAINT `users_documents_ibfk_2` FOREIGN KEY (`id_document`) REFERENCES `documents` (`id_document`);

--
-- Contraintes pour la table `users_languages`
--
ALTER TABLE `users_languages`
  ADD CONSTRAINT `users_languages_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id_user`),
  ADD CONSTRAINT `users_languages_ibfk_2` FOREIGN KEY (`id_language`) REFERENCES `languages` (`id_language`);

--
-- Contraintes pour la table `users_messages_received`
--
ALTER TABLE `users_messages_received`
  ADD CONSTRAINT `users_messages_received_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id_user`),
  ADD CONSTRAINT `users_messages_received_ibfk_2` FOREIGN KEY (`id_message`) REFERENCES `messages` (`id_message`);

--
-- Contraintes pour la table `users_messages_send`
--
ALTER TABLE `users_messages_send`
  ADD CONSTRAINT `users_messages_send_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id_user`),
  ADD CONSTRAINT `users_messages_send_ibfk_2` FOREIGN KEY (`id_message`) REFERENCES `messages` (`id_message`);

--
-- Contraintes pour la table `users_objectives`
--
ALTER TABLE `users_objectives`
  ADD CONSTRAINT `users_objectives_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id_user`),
  ADD CONSTRAINT `users_objectives_ibfk_2` FOREIGN KEY (`id_language`) REFERENCES `languages` (`id_language`),
  ADD CONSTRAINT `users_objectives_ibfk_3` FOREIGN KEY (`id_objective`) REFERENCES `objectives` (`id_objective`);

--
-- Contraintes pour la table `users_reviews`
--
ALTER TABLE `users_reviews`
  ADD CONSTRAINT `users_reviews_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id_user`),
  ADD CONSTRAINT `users_reviews_ibfk_2` FOREIGN KEY (`id_review`) REFERENCES `reviews` (`id_review`);

--
-- Contraintes pour la table `users_rewards`
--
ALTER TABLE `users_rewards`
  ADD CONSTRAINT `users_rewards_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id_user`),
  ADD CONSTRAINT `users_rewards_ibfk_2` FOREIGN KEY (`id_reward`) REFERENCES `rewards` (`id_reward`);

--
-- Contraintes pour la table `users_roles`
--
ALTER TABLE `users_roles`
  ADD CONSTRAINT `users_roles_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id_user`),
  ADD CONSTRAINT `users_roles_ibfk_2` FOREIGN KEY (`id_role`) REFERENCES `roles` (`id_role`);

--
-- Contraintes pour la table `wallets_rewards`
--
ALTER TABLE `wallets_rewards`
  ADD CONSTRAINT `wallets_rewards_ibfk_1` FOREIGN KEY (`id_wallet`) REFERENCES `wallets` (`id_wallet`),
  ADD CONSTRAINT `wallets_rewards_ibfk_2` FOREIGN KEY (`id_reward`) REFERENCES `rewards` (`id_reward`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
