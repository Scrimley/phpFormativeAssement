DROP TABLE IF EXISTS `Machine`;
CREATE TABLE `Machine` (
  `machineId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `machineName` varchar(25) NOT NULL,
  `model` varchar(25) NOT NULL,
  `description` varchar(25) NOT NULL,
  `origin` varchar(25) NOT NULL,
  `imageURL`varchar(25) DEFAULT NULL,
  PRIMARY KEY (`machineId`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `User`;
CREATE TABLE `User` (
  `userId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userName` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL,
  `passwordHint` varchar(25) NOT NULL,
  `machineCount`int(10) unsigned NOT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `Record`;
CREATE TABLE `Record` (
  `recordId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `machineId` int(10) unsigned,
  `userId` int(10) unsigned,
  `isPrivate` bit,
  PRIMARY KEY (`recordId`)
  CONSTRAINT recordFK FOREIGN KEY (machineId) REFERENCES Machine(machineId) 
  CONSTRAINT recordFK FOREIGN KEY (userId) REFERENCES User(userId) 
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;