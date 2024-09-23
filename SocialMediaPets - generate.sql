-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema Social_Media_Pets
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema Social_Media_Pets
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `Social_Media_Pets` DEFAULT CHARACTER SET utf8 ;
USE `Social_Media_Pets` ;

-- -----------------------------------------------------
-- Table `Social_Media_Pets`.`Users`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Social_Media_Pets`.`Users` (
  `idUsers` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  `email` VARCHAR(45) NULL,
  `password` VARCHAR(45) NULL,
  PRIMARY KEY (`idUsers`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Social_Media_Pets`.`Specie`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Social_Media_Pets`.`Specie` (
  `idSpecie` INT NOT NULL AUTO_INCREMENT,
  `nameSpecie` VARCHAR(45) NULL,
  PRIMARY KEY (`idSpecie`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Social_Media_Pets`.`Pets`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Social_Media_Pets`.`Pets` (
  `idPets` INT NOT NULL AUTO_INCREMENT,
  `namePet` VARCHAR(45) NULL,
  `age` VARCHAR(45) NULL,
  `idSpecie` INT NULL,
  PRIMARY KEY (`idPets`),
  INDEX `idSpecie_idx` (`idSpecie` ASC) VISIBLE,
  CONSTRAINT `idSpecie`
    FOREIGN KEY (`idSpecie`)
    REFERENCES `Social_Media_Pets`.`Specie` (`idSpecie`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Social_Media_Pets`.`Profile`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Social_Media_Pets`.`Profile` (
  `idProfile` INT NOT NULL AUTO_INCREMENT,
  `nameProfile` VARCHAR(45) NULL,
  `idPet` INT NULL,
  PRIMARY KEY (`idProfile`),
  INDEX `idPet_idx` (`idPet` ASC) VISIBLE,
  CONSTRAINT `idPet`
    FOREIGN KEY (`idPet`)
    REFERENCES `Social_Media_Pets`.`Pets` (`idPets`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Social_Media_Pets`.`Image`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Social_Media_Pets`.`Image` (
  `idImage` INT NOT NULL AUTO_INCREMENT,
  `Image` VARCHAR(50) NULL,
  PRIMARY KEY (`idImage`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Social_Media_Pets`.`Video`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Social_Media_Pets`.`Video` (
  `idVideo` INT NOT NULL AUTO_INCREMENT,
  `Video` VARCHAR(50) NULL,
  PRIMARY KEY (`idVideo`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Social_Media_Pets`.`Content`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Social_Media_Pets`.`Content` (
  `idContent` INT NOT NULL AUTO_INCREMENT,
  `idImage` INT NULL,
  `idVideo` INT NULL,
  PRIMARY KEY (`idContent`),
  INDEX `image_idx` (`idImage` ASC) VISIBLE,
  INDEX `Video_idx` (`idVideo` ASC) VISIBLE,
  CONSTRAINT `image`
    FOREIGN KEY (`idImage`)
    REFERENCES `Social_Media_Pets`.`Image` (`idImage`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `Video`
    FOREIGN KEY (`idVideo`)
    REFERENCES `Social_Media_Pets`.`Video` (`idVideo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Social_Media_Pets`.`Comment`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Social_Media_Pets`.`Comment` (
  `idComment` INT NOT NULL AUTO_INCREMENT,
  `idProfile` INT NULL,
  `Comment` VARCHAR(200) NULL,
  PRIMARY KEY (`idComment`),
  INDEX `profilee_idx` (`idProfile` ASC) VISIBLE,
  CONSTRAINT `profilee`
    FOREIGN KEY (`idProfile`)
    REFERENCES `Social_Media_Pets`.`Profile` (`idProfile`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Social_Media_Pets`.`Posts`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Social_Media_Pets`.`Posts` (
  `idPosts` INT NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(45) NULL,
  `description` VARCHAR(45) NULL,
  `idContent` INT NULL,
  `idComment` INT NULL,
  `likes` INT NULL,
  `idProfile` VARCHAR(45) NULL,
  PRIMARY KEY (`idPosts`),
  INDEX `Content_idx` (`idContent` ASC) VISIBLE,
  INDEX `Comment_idx` (`idComment` ASC) VISIBLE,
  CONSTRAINT `Content`
    FOREIGN KEY (`idContent`)
    REFERENCES `Social_Media_Pets`.`Content` (`idContent`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `Comment`
    FOREIGN KEY (`idComment`)
    REFERENCES `Social_Media_Pets`.`Comment` (`idComment`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Social_Media_Pets`.`Friends`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Social_Media_Pets`.`Friends` (
  `idFriends` INT NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`idFriends`))
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
