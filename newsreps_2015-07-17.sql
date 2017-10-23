# ************************************************************
# Sequel Pro SQL dump
# Version 4096
#
# http://www.sequelpro.com/
# http://code.google.com/p/sequel-pro/
#
# Värd: 127.0.0.1 (MySQL 5.6.21)
# Databas: newsreps
# Genereringstid: 2015-07-17 07:15:52 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Tabelldump mediatype_task
# ------------------------------------------------------------

DROP TABLE IF EXISTS `mediatype_task`;

CREATE TABLE `mediatype_task` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `task_id` int(11) unsigned DEFAULT NULL,
  `mediatype_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `task_id` (`task_id`),
  KEY `mediatype_mediatypes` (`mediatype_id`),
  CONSTRAINT `mediatype_mediatypes` FOREIGN KEY (`mediatype_id`) REFERENCES `mediatypes` (`id`),
  CONSTRAINT `task_id` FOREIGN KEY (`task_id`) REFERENCES `tasks` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `mediatype_task` WRITE;
/*!40000 ALTER TABLE `mediatype_task` DISABLE KEYS */;

INSERT INTO `mediatype_task` (`id`, `task_id`, `mediatype_id`)
VALUES
	(1,14,1),
	(2,14,3),
	(3,14,4),
	(5,15,1),
	(6,15,3);

/*!40000 ALTER TABLE `mediatype_task` ENABLE KEYS */;
UNLOCK TABLES;


# Tabelldump mediatypes
# ------------------------------------------------------------

DROP TABLE IF EXISTS `mediatypes`;

CREATE TABLE `mediatypes` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) DEFAULT NULL,
  `icon` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `mediatypes` WRITE;
/*!40000 ALTER TABLE `mediatypes` DISABLE KEYS */;

INSERT INTO `mediatypes` (`id`, `name`, `icon`)
VALUES
	(1,'Photo','fa fa-camera'),
	(2,'Text','fa fa-font'),
	(3,'Video','fa fa-play'),
	(4,'Audio','fa fa-microphone');

/*!40000 ALTER TABLE `mediatypes` ENABLE KEYS */;
UNLOCK TABLES;


# Tabelldump paymethods
# ------------------------------------------------------------

DROP TABLE IF EXISTS `paymethods`;

CREATE TABLE `paymethods` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `paymethods` WRITE;
/*!40000 ALTER TABLE `paymethods` DISABLE KEYS */;

INSERT INTO `paymethods` (`id`, `name`)
VALUES
	(1,'Paid'),
	(2,'Pro Bono'),
	(3,'Competition');

/*!40000 ALTER TABLE `paymethods` ENABLE KEYS */;
UNLOCK TABLES;


# Tabelldump tasks
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tasks`;

CREATE TABLE `tasks` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(150) DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `user_id` int(11) unsigned DEFAULT NULL,
  `long` varchar(30) DEFAULT NULL,
  `lat` varchar(30) DEFAULT NULL,
  `radius` varchar(30) DEFAULT NULL,
  `paymethod_id` int(11) unsigned DEFAULT NULL,
  `responses` int(11) DEFAULT NULL,
  `closed_at` datetime DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tasks_users` (`user_id`),
  KEY `tasks_paymethod` (`paymethod_id`),
  CONSTRAINT `tasks_paymethod` FOREIGN KEY (`paymethod_id`) REFERENCES `paymethods` (`id`),
  CONSTRAINT `tasks_users` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `tasks` WRITE;
/*!40000 ALTER TABLE `tasks` DISABLE KEYS */;

INSERT INTO `tasks` (`id`, `title`, `description`, `user_id`, `long`, `lat`, `radius`, `paymethod_id`, `responses`, `closed_at`, `start_date`, `created_at`, `updated_at`)
VALUES
	(7,'Something has happend in Halmstad','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.',22,'12.8577884','56.6743748','16093',1,10,'2015-07-15 16:17:00',NULL,'2015-07-15 16:17:35','2015-07-15 16:17:35'),
	(8,'Creating some Apies and webbdesign in Halmstad.','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.',22,'11.97456','57.70887','16093',1,10,'2015-07-22 16:25:00','2015-07-21 00:00:00','2015-07-15 16:25:05','2015-07-15 16:25:05'),
	(9,'Making a new one dudes','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.',22,'12.8577884','56.6743748','16093',1,10,'2015-07-22 16:27:00','2015-07-15 16:27:00','2015-07-15 16:27:12','2015-07-15 16:27:12'),
	(14,'DsdADadSDSDFASDF','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.',22,'12.8577884','56.6743748','16093',1,20,'2015-07-22 17:45:00','2015-07-15 17:45:00','2015-07-15 17:45:05','2015-07-15 17:45:05'),
	(15,'Lorem ipsum','Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.',22,'11.97456','57.70887','41246.761331270456',1,15,'2015-07-22 17:46:00','2015-07-23 00:00:00','2015-07-15 17:46:56','2015-07-15 17:46:56');

/*!40000 ALTER TABLE `tasks` ENABLE KEYS */;
UNLOCK TABLES;


# Tabelldump users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(120) DEFAULT NULL,
  `password` varchar(60) DEFAULT NULL,
  `remember_token` varchar(60) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `name` varchar(120) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;

INSERT INTO `users` (`id`, `email`, `password`, `remember_token`, `created_at`, `updated_at`, `name`)
VALUES
	(21,'nbechtelar@blanda.com','$2y$10$I3Y8/uVSu1J1esKZ7pbddO9HAguz8z8MJw.bUqH5pigADgPuKPN.W','VRVT2bwWFK','2015-07-14 17:03:19','2015-07-14 17:03:19','Alvah Davis'),
	(22,'bethany.deckow@oberbrunner.com','$2y$10$Xl/hOrovNdj9noJRdXhQ0.zt/x5qIloqwdw08gtFsvEaDPE7wdgKq','UWbFsuII59','2015-07-14 17:03:19','2015-07-14 17:03:19','Desmond Terry'),
	(23,'obie38@wilkinson.com','$2y$10$H7OzeixNW/8jnEQqJnKNweUc6EALBxB6O/Z4pVaDgHEPlwEzFpkTm','UUr65lONKu','2015-07-14 17:03:19','2015-07-14 17:03:19','Dr. Karli Kuphal I'),
	(24,'jordane.parker@gmail.com','$2y$10$b6owT9WoyXWKQnQi0eQx6.aaIx7/uw5onDIooFL8ycrP8WiZQL76.','krKmMZsnn5','2015-07-14 17:03:19','2015-07-14 17:03:19','Xander Eichmann'),
	(25,'jay.fisher@bergnaum.com','$2y$10$SPKK1GdZdwijWOzQkTz0NOcrQq4hZ0/8Swuxv0V4RzSn4XEAUllp.','KfA1HDNEZS','2015-07-14 17:03:19','2015-07-14 17:03:19','Tony Witting'),
	(26,'ebashirian@yahoo.com','$2y$10$MnBzw02nq7QqaYZAKFvnR.XZwlBOP5UA2/55GCIExL4SPrD.7oz4.','h2vge5F0DQ','2015-07-14 17:03:19','2015-07-14 17:03:19','Betsy Schneider'),
	(27,'amiller@gmail.com','$2y$10$1hJKTxBpWeP59n5kJ9xBw.bAE8U9qlxObGt1P4XNhtAhSsCYib/0S','vtFTdASZkX','2015-07-14 17:03:19','2015-07-14 17:03:19','Sabina Abbott'),
	(28,'myron30@walker.com','$2y$10$Ms70SnwlxIEJ.U8XNG0w0ORIcVFsTwZ3c3VWUYdUmRlcw9Isj7YPq','gVVRQLshMM','2015-07-14 17:03:19','2015-07-14 17:03:19','Anastasia Hilpert IV'),
	(29,'ihodkiewicz@heathcote.com','$2y$10$NeaQ8jBykbc/HVG9WDwve.uvCx0LEYvL4p9cG.lPSaMBX0.O8SSLe','Jb0KlpNlE1','2015-07-14 17:03:19','2015-07-14 17:03:19','Mr. Kameron Veum'),
	(30,'noelia77@hotmail.com','$2y$10$9ejhHRKLg8p6EyDXT4If3eDBowrKeYwgtMhS.4S3yYyX8D3zESHqe','enLQVPRq76','2015-07-14 17:03:19','2015-07-14 17:03:19','Mr. Aidan Green IV'),
	(31,'erika49@boehm.net','$2y$10$CCzJkX1xrNMNseMGUrlcyeUByTHyg4.Uu8XE4P7WxBl4mr0ufsORm','HzYn7YKmj0','2015-07-14 17:03:19','2015-07-14 17:03:19','Dr. Jakob Pfeffer DDS'),
	(32,'gino.orn@hettinger.com','$2y$10$Rk4nnNUdBEKPCSED3HN94O19eQt0eKfLXMBrPdJEWKMUqWxfNu26K','lKdPUe3tR0','2015-07-14 17:03:19','2015-07-14 17:03:19','Jeffery Stracke'),
	(33,'sedrick10@yahoo.com','$2y$10$yAgjOnvbwX3xVVjmkA3mDeCksik/xE3D/FO0i2vV3ERc66zC9lLCe','tVU8VlH0a9','2015-07-14 17:03:19','2015-07-14 17:03:19','Nikita Bartell'),
	(34,'nlebsack@hotmail.com','$2y$10$hktv5fBSP9.GbL7EeXbyMOx89DcNmUOAaMAHQNwDApQQR7cFFq6Uu','TljRZhyDF7','2015-07-14 17:03:19','2015-07-14 17:03:19','Mr. Oliver Powlowski IV'),
	(35,'mckenzie.karl@stanton.biz','$2y$10$bp7dWXrhaBpQuPSIykfXteZDKQicRQUA.uyby4p9UFiHmHp1rc3Ai','DWX8HibyHS','2015-07-14 17:03:19','2015-07-14 17:03:19','Nicholaus Kshlerin'),
	(36,'adrianna00@hotmail.com','$2y$10$7qwys5OY.Ll/.ivJAaI.0eyufM4GJaRO2iQW9Z/Jw.Ykz5hgMSqky','XxcEcFQHYN','2015-07-14 17:03:19','2015-07-14 17:03:19','Arturo Reichel'),
	(37,'verona24@gmail.com','$2y$10$t53JdvLCcFVPxauDr8aB.OySgUCnCjLkEsZdquV5G96Taut9gaYXC','X5LZ043sQG','2015-07-14 17:03:19','2015-07-14 17:03:19','Giovanni Rempel'),
	(38,'yanderson@bashirian.info','$2y$10$3zyl4oxdC.Fk9NPAGqQOGOMFutb/ItrHfIDifxOM95J41ml4/uD4G','JsLvrUgaoc','2015-07-14 17:03:19','2015-07-14 17:03:19','Lizeth Sawayn'),
	(39,'vbaumbach@hudson.com','$2y$10$pIvVzS05CDmVs/oGHsnyKeCzHde7SJQaRJCiwMS.Ta8RyIdyCk06u','69qWBwOwai','2015-07-14 17:03:19','2015-07-14 17:03:19','Ursula Zemlak'),
	(40,'jwalter@nienow.biz','$2y$10$UxOdNz0nwdGagPg8yNgIbOcApcwqfjrUbEKfo8ESUCrluOVDH948.','Phf8KXSvRv','2015-07-14 17:03:19','2015-07-14 17:03:19','Candida Romaguera');

/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
