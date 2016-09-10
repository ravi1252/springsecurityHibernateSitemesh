
CREATE DATABASE IF NOT EXISTS springhibernate;

USE springhibernate;


DROP TABLE IF EXISTS `user_roles`;
CREATE TABLE `user_roles` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `authority` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;


LOCK TABLES `user_roles` WRITE;
INSERT INTO `user_roles` VALUES (1,'ROLE_ADMIN',1);
INSERT INTO `user_roles` VALUES (2,'ROLE_USER',2);
UNLOCK TABLES;


DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `account_locked` tinyint(1) NOT NULL DEFAULT '0',
  `account_expired` tinyint(1) NOT NULL DEFAULT '0',
  `credentials_expired` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_username` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;


LOCK TABLES `users` WRITE;
INSERT INTO `users` VALUES (1,'adminFN','adminLN','admin@admin.com','cfed2815f33f81ed7c13f8fc0ce28714',1,0,0,0);
INSERT INTO `users` VALUES (2,'userFN','userLN','user@user.com','cfed2815f33f81ed7c13f8fc0ce28714',1,0,0,0);
UNLOCK TABLES;

