-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema test
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `test` ;

-- -----------------------------------------------------
-- Schema test
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `test` DEFAULT CHARACTER SET utf8 ;
USE `test` ;

-- -----------------------------------------------------
-- Table `test`.`clientes`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `test`.`clientes` ;

CREATE TABLE IF NOT EXISTS `test`.`clientes` (
  `idclientes` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) CHARACTER SET 'utf8' NOT NULL DEFAULT '',
  `cifnif` VARCHAR(10) CHARACTER SET 'utf8' NULL,
  PRIMARY KEY (`idclientes`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_unicode_ci;


-- -----------------------------------------------------
-- Table `test`.`direcciones`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `test`.`direcciones` ;

CREATE TABLE IF NOT EXISTS `test`.`direcciones` (
  `iddirecciones` INT NOT NULL AUTO_INCREMENT,
  `calle` VARCHAR(45) NOT NULL,
  `numero` VARCHAR(10) NOT NULL,
  `cp` VARCHAR(5) NULL,
  `poblacion` VARCHAR(45) NULL,
  `provincia` VARCHAR(45) NULL,
  `pisopuerta` VARCHAR(45) NOT NULL,
  `clientes_idclientes` INT NOT NULL,
  PRIMARY KEY (`iddirecciones`),
  INDEX `fk_direcciones_clientes_idx` (`clientes_idclientes` ASC),
  CONSTRAINT `fk_direcciones_clientes`
    FOREIGN KEY (`clientes_idclientes`)
    REFERENCES `test`.`clientes` (`idclientes`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_unicode_ci;


-- -----------------------------------------------------
-- Table `test`.`persona`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `test`.`persona` ;

CREATE TABLE IF NOT EXISTS `test`.`persona` (
  `idpersona` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NULL,
  `apellidos` VARCHAR(45) NULL,
  `tlf` VARCHAR(45) NULL,
  `email` VARCHAR(45) NULL,
  `clientes_idclientes` INT NOT NULL,
  PRIMARY KEY (`idpersona`),
  INDEX `fk_persona_clientes1_idx` (`clientes_idclientes` ASC),
  CONSTRAINT `fk_persona_clientes1`
    FOREIGN KEY (`clientes_idclientes`)
    REFERENCES `test`.`clientes` (`idclientes`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_unicode_ci;


-- -----------------------------------------------------
-- Table `test`.`tags`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `test`.`tags` ;

CREATE TABLE IF NOT EXISTS `test`.`tags` (
  `idtags` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idtags`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `test`.`clientes_has_tags`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `test`.`clientes_has_tags` ;

CREATE TABLE IF NOT EXISTS `test`.`clientes_has_tags` (
  `clientes_idclientes` INT NOT NULL,
  `tags_idtags` INT NOT NULL,
  PRIMARY KEY (`clientes_idclientes`, `tags_idtags`),
  INDEX `fk_clientes_has_tags_tags1_idx` (`tags_idtags` ASC),
  INDEX `fk_clientes_has_tags_clientes1_idx` (`clientes_idclientes` ASC),
  CONSTRAINT `fk_clientes_has_tags_clientes1`
    FOREIGN KEY (`clientes_idclientes`)
    REFERENCES `test`.`clientes` (`idclientes`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_clientes_has_tags_tags1`
    FOREIGN KEY (`tags_idtags`)
    REFERENCES `test`.`tags` (`idtags`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_unicode_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
