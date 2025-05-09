-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema hospital_db_andre_cararo_lowcke
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema hospital_db_andre_cararo_lowcke
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `hospital_db_andre_cararo_lowcke` DEFAULT CHARACTER SET utf8 ;
USE `hospital_db_andre_cararo_lowcke` ;

-- -----------------------------------------------------
-- Table `hospital_db_andre_cararo_lowcke`.`convenios`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hospital_db_andre_cararo_lowcke`.`convenios` (
  `idconvenios` INT NOT NULL AUTO_INCREMENT,
  `CNPJ` VARCHAR(45) NULL,
  `tempo_carencia` VARCHAR(45) NULL,
  `nome` VARCHAR(45) NULL,
  `carterinha_do_convenio` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idconvenios`),
  UNIQUE INDEX `carterinha_do_convenio_UNIQUE` (`carterinha_do_convenio` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `hospital_db_andre_cararo_lowcke`.`tipo_quarto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hospital_db_andre_cararo_lowcke`.`tipo_quarto` (
  `idtipo_quarto` INT NOT NULL AUTO_INCREMENT,
  `descricao` VARCHAR(45) NOT NULL,
  `valor_diaria` INT NOT NULL,
  PRIMARY KEY (`idtipo_quarto`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `hospital_db_andre_cararo_lowcke`.`quarto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hospital_db_andre_cararo_lowcke`.`quarto` (
  `idquarto` INT NOT NULL AUTO_INCREMENT,
  `numero` INT NOT NULL,
  `tipo_quarto_idtipo_quarto` INT NOT NULL,
  PRIMARY KEY (`idquarto`),
  INDEX `fk_quarto_tipo_quarto1_idx` (`tipo_quarto_idtipo_quarto` ASC) VISIBLE,
  CONSTRAINT `fk_quarto_tipo_quarto1`
    FOREIGN KEY (`tipo_quarto_idtipo_quarto`)
    REFERENCES `hospital_db_andre_cararo_lowcke`.`tipo_quarto` (`idtipo_quarto`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `hospital_db_andre_cararo_lowcke`.`internacao`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hospital_db_andre_cararo_lowcke`.`internacao` (
  `idformulario_internacao` INT NOT NULL AUTO_INCREMENT,
  `data_entrada` DATETIME NOT NULL,
  `data_prevista_alta` DATETIME NOT NULL,
  `data_alta` DATETIME NULL,
  `procedimentos` VARCHAR(450) NULL,
  `quarto_idquarto` INT NOT NULL,
  PRIMARY KEY (`idformulario_internacao`),
  INDEX `fk_internacao_quarto1_idx` (`quarto_idquarto` ASC) VISIBLE,
  CONSTRAINT `fk_internacao_quarto1`
    FOREIGN KEY (`quarto_idquarto`)
    REFERENCES `hospital_db_andre_cararo_lowcke`.`quarto` (`idquarto`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `hospital_db_andre_cararo_lowcke`.`pacientes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hospital_db_andre_cararo_lowcke`.`pacientes` (
  `id_cadastro_pacientes` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NULL,
  `data_nascimento` DATETIME NULL,
  `endereço` VARCHAR(45) NULL,
  `telefone` VARCHAR(45) NULL,
  `email` VARCHAR(45) NULL,
  `CPF` VARCHAR(45) NOT NULL,
  `RG` VARCHAR(45) NOT NULL,
  `convenios_do_paciente_id` INT NOT NULL,
  `internacao_idformulario_internacao` INT NOT NULL,
  PRIMARY KEY (`id_cadastro_pacientes`),
  UNIQUE INDEX `CPF_UNIQUE` (`CPF` ASC) VISIBLE,
  UNIQUE INDEX `RG_UNIQUE` (`RG` ASC) VISIBLE,
  INDEX `fk_cadastro_pacientes_convenios1_idx` (`convenios_do_paciente_id` ASC) VISIBLE,
  INDEX `fk_pacientes_internacao1_idx` (`internacao_idformulario_internacao` ASC) VISIBLE,
  CONSTRAINT `fk_cadastro_pacientes_convenios1`
    FOREIGN KEY (`convenios_do_paciente_id`)
    REFERENCES `hospital_db_andre_cararo_lowcke`.`convenios` (`idconvenios`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_pacientes_internacao1`
    FOREIGN KEY (`internacao_idformulario_internacao`)
    REFERENCES `hospital_db_andre_cararo_lowcke`.`internacao` (`idformulario_internacao`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `hospital_db_andre_cararo_lowcke`.`especialidades`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hospital_db_andre_cararo_lowcke`.`especialidades` (
  `id_especialidades` INT NOT NULL AUTO_INCREMENT,
  `especialidade` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id_especialidades`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `hospital_db_andre_cararo_lowcke`.`medicos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hospital_db_andre_cararo_lowcke`.`medicos` (
  `idmedicos_dados_pessoais` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NOT NULL,
  `CPF` VARCHAR(45) NOT NULL,
  `internacao_idformulario_internacao` INT NOT NULL,
  PRIMARY KEY (`idmedicos_dados_pessoais`),
  UNIQUE INDEX `nome_UNIQUE` (`nome` ASC) VISIBLE,
  UNIQUE INDEX `CPF_UNIQUE` (`CPF` ASC) VISIBLE,
  INDEX `fk_medicos_internacao1_idx` (`internacao_idformulario_internacao` ASC) VISIBLE,
  CONSTRAINT `fk_medicos_internacao1`
    FOREIGN KEY (`internacao_idformulario_internacao`)
    REFERENCES `hospital_db_andre_cararo_lowcke`.`internacao` (`idformulario_internacao`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `hospital_db_andre_cararo_lowcke`.`consultas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hospital_db_andre_cararo_lowcke`.`consultas` (
  `idconsultas` INT NOT NULL AUTO_INCREMENT,
  `data_hora` DATETIME NOT NULL,
  `valor` VARCHAR(45) NOT NULL,
  `medico_consulta_id` INT NOT NULL,
  `paciente_consulta_id` INT NOT NULL,
  PRIMARY KEY (`idconsultas`),
  INDEX `fk_consultas_medicos_dados_pessoais1_idx` (`medico_consulta_id` ASC) VISIBLE,
  INDEX `fk_consultas_cadastro_pacientes1_idx` (`paciente_consulta_id` ASC) VISIBLE,
  CONSTRAINT `fk_consultas_medicos_dados_pessoais1`
    FOREIGN KEY (`medico_consulta_id`)
    REFERENCES `hospital_db_andre_cararo_lowcke`.`medicos` (`idmedicos_dados_pessoais`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_consultas_cadastro_pacientes1`
    FOREIGN KEY (`paciente_consulta_id`)
    REFERENCES `hospital_db_andre_cararo_lowcke`.`pacientes` (`id_cadastro_pacientes`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `hospital_db_andre_cararo_lowcke`.`medicos_has_especialidades`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hospital_db_andre_cararo_lowcke`.`medicos_has_especialidades` (
  `medicos_idmedicos_dados_pessoais` INT NOT NULL,
  `medicos_especialidades_id_especialidades` INT NOT NULL,
  PRIMARY KEY (`medicos_idmedicos_dados_pessoais`, `medicos_especialidades_id_especialidades`),
  INDEX `fk_medicos_has_medicos_especialidades_medicos_especialidade_idx` (`medicos_especialidades_id_especialidades` ASC) VISIBLE,
  INDEX `fk_medicos_has_medicos_especialidades_medicos1_idx` (`medicos_idmedicos_dados_pessoais` ASC) VISIBLE,
  CONSTRAINT `fk_medicos_has_medicos_especialidades_medicos1`
    FOREIGN KEY (`medicos_idmedicos_dados_pessoais`)
    REFERENCES `hospital_db_andre_cararo_lowcke`.`medicos` (`idmedicos_dados_pessoais`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_medicos_has_medicos_especialidades_medicos_especialidades1`
    FOREIGN KEY (`medicos_especialidades_id_especialidades`)
    REFERENCES `hospital_db_andre_cararo_lowcke`.`especialidades` (`id_especialidades`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `hospital_db_andre_cararo_lowcke`.`Receitas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hospital_db_andre_cararo_lowcke`.`Receitas` (
  `idReceitas` INT NOT NULL AUTO_INCREMENT,
  `consultas_idconsultas` INT NOT NULL,
  PRIMARY KEY (`idReceitas`),
  INDEX `fk_Receitas_consultas1_idx` (`consultas_idconsultas` ASC) VISIBLE,
  CONSTRAINT `fk_Receitas_consultas1`
    FOREIGN KEY (`consultas_idconsultas`)
    REFERENCES `hospital_db_andre_cararo_lowcke`.`consultas` (`idconsultas`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `hospital_db_andre_cararo_lowcke`.`enfermeira`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hospital_db_andre_cararo_lowcke`.`enfermeira` (
  `idenfermeira` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NOT NULL,
  `CPF` INT UNSIGNED NOT NULL,
  `CRE` INT UNSIGNED NULL,
  PRIMARY KEY (`idenfermeira`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `hospital_db_andre_cararo_lowcke`.`internacao_has_enfermeira`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `hospital_db_andre_cararo_lowcke`.`internacao_has_enfermeira` (
  `internacao_idformulario_internacao` INT NOT NULL,
  `enfermeira_idenfermeira` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`internacao_idformulario_internacao`, `enfermeira_idenfermeira`),
  INDEX `fk_internacao_has_enfermeira_enfermeira1_idx` (`enfermeira_idenfermeira` ASC) VISIBLE,
  INDEX `fk_internacao_has_enfermeira_internacao1_idx` (`internacao_idformulario_internacao` ASC) VISIBLE,
  CONSTRAINT `fk_internacao_has_enfermeira_internacao1`
    FOREIGN KEY (`internacao_idformulario_internacao`)
    REFERENCES `hospital_db_andre_cararo_lowcke`.`internacao` (`idformulario_internacao`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_internacao_has_enfermeira_enfermeira1`
    FOREIGN KEY (`enfermeira_idenfermeira`)
    REFERENCES `hospital_db_andre_cararo_lowcke`.`enfermeira` (`idenfermeira`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
