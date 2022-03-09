-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:8889
-- Généré le : mer. 09 mars 2022 à 19:40
-- Version du serveur :  5.7.34
-- Version de PHP : 7.4.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `tp1_pagination_MariePaule`
--

-- --------------------------------------------------------

--
-- Structure de la table `personnes`
--

CREATE TABLE `personnes` (
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `personnes`
--

INSERT INTO `personnes` (`nom`, `prenom`, `email`) VALUES
('Abbott', 'Jack', 'jackabbott@etud.univ-paris8.fr'),
('Abbott', 'William', 'williamabbott@etud.univ-paris8.fr'),
('Baldwin', 'Michael', 'michaelbaldwin@etud.univ-paris8.fr'),
('Bergman', 'Peter', 'peterbergman@etud.univ-paris8.fr'),
('Braeden', 'Eric', 'ericbraeden@etud.univ-paris8.fr'),
('Bregman', 'Tracey', 'traceybregman@etud.univ-paris8.fr'),
('Davidson', 'Doug', 'dougdavidson@etud.univ-paris8.fr'),
('Fenmore', 'Lauren', 'laurenfenmore@etud.univ-paris8.fr'),
('Grimes', 'Camryn', 'camryngrimes@etud.univ-paris8.fr'),
('Hamilton', 'Devon', 'devonhamilton@etud.univ-paris8.fr'),
('Henley', 'Amelia', 'ameliahenley@etud.univ-paris8.fr'),
('King', 'Hunter', 'hunterking@etud.univ-paris8.fr'),
('Lawson', 'Chelsea', 'chelsealawson@etud.univ-paris8.fr'),
('Leblanc', 'Christian', 'christianleblanc@etud.univ-paris8.fr'),
('Mcclure', 'Bryton', 'brytonmcclure@etud.univ-paris8.fr'),
('Morrow', 'Joshua', 'joshuamorrow@etud.univ-paris8.fr'),
('Newman', 'Victor', 'victornewman@etud.univ-paris8.fr'),
('Newman', 'Nikki', 'nikkinewman@etud.univ-paris8.fr'),
('Newman', 'Sharon', 'sharonnewman@etud.univ-paris8.fr'),
('Newman', 'Victoria', 'victorianewman@etud.univ-paris8.fr'),
('Newman', 'Abby', 'abbynewman@etud.univ-paris8.fr'),
('Newman', 'Summer', 'summernewman@etud.univ-paris8.fr'),
('Ordway', 'Melissa', 'melissaordway@etud.univ-paris8.fr'),
('Rosales', 'Lola', 'lolarosales@etud.univ-paris8.fr'),
('Stafford', 'Michelle', 'michellestafford@etud.univ-paris8.fr'),
('Summers', 'Phyllis', 'phyllissummers@etud.univ-paris8.fr'),
('Thomas', 'Magalie', 'magaliethomas@etud.univ-paris8.fr'),
('Thomas', 'Melody', 'melodythomas@etud.univ-paris8.fr'),
('Thompson', 'Jason', 'jasonthompson@etud.univ-paris8.fr'),
('Webster', 'Nina', 'ninawebster@etud.univ-paris8.fr'),
('Williams', 'Paul', 'paulwilliams@etud.univ-paris8.fr'),
('Winters', 'Lily', 'lilywinters@etud.univ-paris8.fr'),
('Winters', 'Malcolm', 'malcolmwinters@etud.univ-paris8.fr');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
