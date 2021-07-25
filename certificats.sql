-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  Dim 25 juil. 2021 à 20:04
-- Version du serveur :  5.7.19
-- Version de PHP :  7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `certificats`
--

-- --------------------------------------------------------

--
-- Structure de la table `certificat`
--

DROP TABLE IF EXISTS `certificat`;
CREATE TABLE IF NOT EXISTS `certificat` (
  `id` varchar(10) NOT NULL,
  `date_deb` varchar(50) NOT NULL,
  `date_exp` varchar(50) NOT NULL,
  `domaine` varchar(50) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `dob` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `certificat`
--

INSERT INTO `certificat` (`id`, `date_deb`, `date_exp`, `domaine`, `nom`, `prenom`, `dob`) VALUES
('RU2FJQWPEB', '2020-07-22', '2021-07-23', 'Informatique', 'Khalil', 'Jendoubi', '1998-06-06'),
('KGNYPOLKND', '2021-08-01', '2025-01-04', 'info', 'kekh', 'nader', '2021-07-04');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
