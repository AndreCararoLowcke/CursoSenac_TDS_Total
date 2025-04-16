-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema uc4ativ4
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Table `cliente`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `cliente` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(255) NOT NULL,
  `cpf` VARCHAR(11) NOT NULL,
  `endereco` VARCHAR(255) NULL DEFAULT NULL,
  `telefone` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `venda`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `venda` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `data` DATETIME NULL DEFAULT NULL,
  `data_envio` DATETIME NULL DEFAULT NULL,
  `status` VARCHAR(45) NULL DEFAULT NULL,
  `valor_total` DECIMAL(9,2) NULL DEFAULT NULL,
  `tipo_pagamento` VARCHAR(1) NOT NULL,
  `numero_cartao_pagamento` VARCHAR(16) NULL DEFAULT NULL,
  `data_pagamento` DATETIME NULL DEFAULT NULL,
  `cliente_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_venda_cliente_idx` (`cliente_id` ASC) VISIBLE,
  CONSTRAINT `fk_venda_cliente`
    FOREIGN KEY (`cliente_id`)
    REFERENCES `cliente` (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


-- -----------------------------------------------------
-- Table `item_venda`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `item_venda` (
  `quantidade` INT NOT NULL,
  `valor_unitario` DECIMAL(9,2) NOT NULL,
  `subtotal` DECIMAL(9,2) NOT NULL,
  `nome_produto` VARCHAR(45) NULL DEFAULT NULL,
  `venda_id` INT NOT NULL,
  INDEX `fk_item_venda_venda1_idx` (`venda_id` ASC) VISIBLE,
  CONSTRAINT `fk_item_venda_venda1`
    FOREIGN KEY (`venda_id`)
    REFERENCES `venda` (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb3;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
