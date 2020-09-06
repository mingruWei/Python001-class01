create database smzdm;

CREATE TABLE IF NOT EXISTS `smartphone`(
   `id` INT UNSIGNED AUTO_INCREMENT,
   `name` VARCHAR(100) NOT NULL,
   `comments` VARCHAR(1000) NOT NULL,
   PRIMARY KEY ( `id` )
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `smartphone_sentiment`(
   `id` INT UNSIGNED AUTO_INCREMENT,
   `name` VARCHAR(100) NOT NULL,
   `comments` VARCHAR(1000) NOT NULL,
   `sentiment` float(12,10) NOT NULL DEFAULT '0.0000000000',
    `create_date` date default NULL,
   PRIMARY KEY ( `id` )
)ENGINE=InnoDB DEFAULT CHARSET=utf8;