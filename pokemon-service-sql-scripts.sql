
-----Must include - Creates pokemon table in BD for repository (not used for requests yet)-------
CREATE TABLE `pokemon` (
  `pokemon_id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  PRIMARY KEY (`pokemon_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-----Must include - Creates Ability table in BD for repository (not used for requests yet)-------
CREATE TABLE `pokemon_ability` (
  `pokemon_id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `url` varchar(20) DEFAULT NULL,
  KEY `fk` (`pokemon_id`),
  CONSTRAINT `fk` FOREIGN KEY (`pokemon_id`) REFERENCES `pokemon` (`pokemon_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

----------Table for storing the request logs-------------------------------
CREATE TABLE `pokemon_request` (
  `request_id` int(11) NOT NULL,
  `origin_ip` varchar(20) DEFAULT NULL,
  `method` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`request_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;