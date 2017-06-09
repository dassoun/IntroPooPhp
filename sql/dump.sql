-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Ven 09 Juin 2017 à 17:40
-- Version du serveur :  10.1.19-MariaDB
-- Version de PHP :  5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Base de données :  `intropoophp`
--

-- --------------------------------------------------------

--
-- Structure de la table `personnages`
--

CREATE TABLE `personnages` (
  `id` int(11) NOT NULL,
  `nom` varchar(16) NOT NULL,
  `forcePerso` int(11) NOT NULL,
  `degats` int(11) NOT NULL,
  `niveau` int(11) NOT NULL,
  `experience` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `personnages`
--

INSERT INTO `personnages` (`id`, `nom`, `forcePerso`, `degats`, `niveau`, `experience`) VALUES
(1, 'Victor', 5, 0, 1, NULL);

--
-- Index pour les tables exportées
--

--
-- Index pour la table `personnages`
--
ALTER TABLE `personnages`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `personnages`
--
ALTER TABLE `personnages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;