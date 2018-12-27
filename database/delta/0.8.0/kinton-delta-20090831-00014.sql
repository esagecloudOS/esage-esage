-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.0.51a-3ubuntu5.4


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

--------------------------------------------------------------------------
-- `kinton`.`networktype` table modified with a new column 'rangetypeID'--
--------------------------------------------------------------------------

--
-- `kinton`.`networktype` table modified with a new column 'rangetypeID'
--

ALTER TABLE `kinton`.`networktype` ADD COLUMN `rangetypeID` int(11) UNSIGNED DEFAULT NULL AFTER `forwardtypeID`,
 ADD INDEX `networktype_rangetype_FK`(`rangetypeID`),
 ADD CONSTRAINT `networktype_rangetype_FK` FOREIGN KEY `networktype_rangetype_FK` (`rangetypeID`) 
    REFERENCES `rangetype` (`rangetypeID`)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT;