-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `clientia` DEFAULT CHARACTER SET utf8mb3 ;
USE `clientia` ;

-- -----------------------------------------------------
-- Table `mydb`.`services`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `clientia`.`services` (
  `service_key` INT NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `description` INT NOT NULL,
  `client_key` INT NOT NULL,
  PRIMARY KEY (`service_key`),
  FOREIGN KEY (`client_key`) REFERENCES clients(`client_key`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `mydb`.`clients`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `clientia`.`clients` (
  `client_key` INT NOT NULL,
  `first_name` VARCHAR(45) NOT NULL,
  `last_name` VARCHAR(45) NOT NULL,
  `phone_number` VARCHAR(30) NOT NULL,
  PRIMARY KEY (`client_key`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


-- -----------------------------------------------------
-- Table `mydb`.`addresses`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `clientia`.`addresses` (
  `address_key` INT NOT NULL,
  `street` VARCHAR(45) NOT NULL,
  `city` VARCHAR(45) NOT NULL,
  `state` VARCHAR(45) NOT NULL,
  `zip_code` VARCHAR(45) NOT NULL,
  `client_key` INT NOT NULL,
  PRIMARY KEY (`address_key`),
  FOREIGN KEY (`client_key`) REFERENCES clients(`client_key`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
