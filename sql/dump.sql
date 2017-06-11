-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Dim 11 Juin 2017 à 11:02
-- Version du serveur :  10.1.19-MariaDB
-- Version de PHP :  5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Base de données :  `intropoophptp1`
--
CREATE DATABASE IF NOT EXISTS `intropoophptp1` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `intropoophptp1`;

-- --------------------------------------------------------

--
-- Structure de la table `personnages`
--

DROP TABLE IF EXISTS `personnages`;
CREATE TABLE `personnages` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `nom` varchar(50) NOT NULL,
  `degats` tinyint(3) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `personnages`
--

INSERT INTO `personnages` (`id`, `nom`, `degats`) VALUES
(1, 'Martin', 0),
(2, 'Pierre', 15);

-- --------------------------------------------------------

--
-- Structure de la table `personnages_v2`
--

DROP TABLE IF EXISTS `personnages_v2`;
CREATE TABLE `personnages_v2` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `nom` varchar(50) NOT NULL,
  `degats` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `timeEndormi` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `type` enum('magicien','guerrier') NOT NULL,
  `atout` tinyint(3) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Index pour les tables exportées
--

--
-- Index pour la table `personnages`
--
ALTER TABLE `personnages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nom` (`nom`);

--
-- Index pour la table `personnages_v2`
--
ALTER TABLE `personnages_v2`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `personnages`
--
ALTER TABLE `personnages`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `personnages_v2`
--
ALTER TABLE `personnages_v2`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;