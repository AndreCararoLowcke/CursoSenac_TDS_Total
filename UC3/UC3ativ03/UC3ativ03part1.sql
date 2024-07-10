CREATE DATABASE IF NOT EXISTS `hospital_db_andre_cararo_lowcke`;

USE hospital_db_andre_cararo_lowcke ;
/* SET GLOBAL FOREIGN_KEY_CHECKS=0; */

/* SHOW TABLES; SELECT*FROM tabela;  */
/* Agora vou adicionar ao menos 10 médicos na tabela medicos
INSERT INTO medicos(nome, CPF,internacao_idformulario_internacao) VALUES('Maicon','05408872985','1'); 
INSERT INTO internacao(data_entrada, data_prevista_alta,data_alta,procedimentos,quarto_idquarto) VALUES('Maicon','05408872985','1');*/

/* Abaixo vou adicionar 3 tipos de quarto */
INSERT INTO tipo_quarto( descricao,valor_diaria) VALUES('Quarto Duplo','40');
INSERT INTO tipo_quarto( descricao,valor_diaria) VALUES('Apartamentos','100');
INSERT INTO tipo_quarto( descricao,valor_diaria) VALUES('Enfermaria','80');

/* Abaixo vou adicionar 3 tipos de quarto */
INSERT INTO quarto(numero,tipo_quarto_idtipo_quarto) VALUES('111','1');
INSERT INTO quarto(numero,tipo_quarto_idtipo_quarto) VALUES('222','2');
INSERT INTO quarto(numero,tipo_quarto_idtipo_quarto) VALUES('333','3');

/* Abaixo vou incluir ao menos 7 internações */
INSERT INTO internacao(data_entrada,data_prevista_alta,data_alta,procedimentos,quarto_idquarto) VALUES('2024-01-02','2024-01-03','2024-03-03','teve muita injeção','1');
INSERT INTO internacao(data_entrada,data_prevista_alta,data_alta,procedimentos,quarto_idquarto) VALUES('2024-01-03','2024-02-04','2024-04-03','injeção1','2');
INSERT INTO internacao(data_entrada,data_prevista_alta,data_alta,procedimentos,quarto_idquarto) VALUES('2024-01-04','2024-03-05','2024-05-03','injeção2','3');
INSERT INTO internacao(data_entrada,data_prevista_alta,data_alta,procedimentos,quarto_idquarto) VALUES('2024-01-05','2024-04-06','2024-06-03','injeção3','1');
INSERT INTO internacao(data_entrada,data_prevista_alta,data_alta,procedimentos,quarto_idquarto) VALUES('2024-01-06','2024-05-07','2024-07-03','procedimento 35','2');
INSERT INTO internacao(data_entrada,data_prevista_alta,data_alta,procedimentos,quarto_idquarto) VALUES('2024-01-07','2024-06-08','2024-08-03','procedimento 1','1');
INSERT INTO internacao(data_entrada,data_prevista_alta,data_alta,procedimentos,quarto_idquarto) VALUES('2024-01-08','2024-07-09','2024-09-03','cirurgia','3');

/* Abaixo vou adicionar ao menos 10 medicos */
INSERT INTO medicos(nome,CPF,internacao_idformulario_internacao) VALUES('Márcio','05307776685','1');
INSERT INTO medicos(nome,CPF,internacao_idformulario_internacao) VALUES('Carlos','01328334090','2');
INSERT INTO medicos(nome,CPF,internacao_idformulario_internacao) VALUES('Jóice','95119300014','3');
INSERT INTO medicos(nome,CPF,internacao_idformulario_internacao) VALUES('Jonas','88953110005','4');
INSERT INTO medicos(nome,CPF,internacao_idformulario_internacao) VALUES('Marco','45734762024','5');
INSERT INTO medicos(nome,CPF,internacao_idformulario_internacao) VALUES('Renato','58670175088','6');
INSERT INTO medicos(nome,CPF,internacao_idformulario_internacao) VALUES('Lucas','52616910045','7');
INSERT INTO medicos(nome,CPF,internacao_idformulario_internacao) VALUES('Renan','37366532045','8');
INSERT INTO medicos(nome,CPF,internacao_idformulario_internacao) VALUES('Victor','26389146060','4');
INSERT INTO medicos(nome,CPF,internacao_idformulario_internacao) VALUES('Carla','99614789085','7');

/* Abaixo vou adicionar ao menos 7 especialidades */
INSERT INTO especialidades(especialidade) VALUES('pediatria');
INSERT INTO especialidades(especialidade) VALUES('clinica geral');
INSERT INTO especialidades(especialidade) VALUES('gastroenterologia');
INSERT INTO especialidades(especialidade) VALUES('ginecologia');
INSERT INTO especialidades(especialidade) VALUES('psiquiatria');
INSERT INTO especialidades(especialidade) VALUES('endocrinologia');
INSERT INTO especialidades(especialidade) VALUES('cardiologia');
INSERT INTO especialidades(especialidade) VALUES('cirurgia bariátrica');

/* Abaixo vou incluir ao menos 4 convênios */
INSERT INTO convenios(CNPJ,tempo_carencia,nome,carterinha_do_convenio) VALUES('00648437000136','3anos','André','280834340990' );
INSERT INTO convenios(CNPJ,tempo_carencia,nome,carterinha_do_convenio) VALUES('58067588000180','2anos','Joé','013261140922' );
INSERT INTO convenios(CNPJ,tempo_carencia,nome,carterinha_do_convenio) VALUES('90994132000179','6anos','Jorge','616275560906' );
INSERT INTO convenios(CNPJ,tempo_carencia,nome,carterinha_do_convenio) VALUES('29796445000101','7anos','Jonas','255687840922' );
INSERT INTO convenios(CNPJ,tempo_carencia,nome,carterinha_do_convenio) VALUES('05454991000180','1anos','Paulo','755337460981' );

/* Abaixo vou adicionar ao menos 10 pacientes */
INSERT INTO pacientes(nome, data_nascimento, endereço, telefone, email, CPF, RG, convenios_do_paciente_id, internacao_idformulario_internacao) VALUES('Márcio','1987-03-10','Rua Henriqueta Moraes Almeida','(99) 98663-6559','andremerli74@gmail.com','51893908020','161579760','1','1');
INSERT INTO pacientes(nome, data_nascimento, endereço, telefone, email, CPF, RG, convenios_do_paciente_id, internacao_idformulario_internacao) VALUES('Lucas','2000-01-24','2ª Travessa São Salvador','(13) 98813-2138','zxhbpg@jmurip.com','23487170000','258172757','1','1');
INSERT INTO pacientes(nome, data_nascimento, endereço, telefone, email, CPF, RG, convenios_do_paciente_id, internacao_idformulario_internacao) VALUES('Marcos','2006-03-07','Rua Benedito Vaz Figueiredo','(64) 98234-6374','pmlxew@veracg.com','65346930875','349284702','1','1');
INSERT INTO pacientes(nome, data_nascimento, endereço, telefone, email, CPF, RG, convenios_do_paciente_id, internacao_idformulario_internacao) VALUES('Sérgio','1990-11-29','Avenida José de Anchieta','(86) 99753-7161','andremerli74@gmail.com','58106738051','361636179','1','1');
INSERT INTO pacientes(nome, data_nascimento, endereço, telefone, email, CPF, RG, convenios_do_paciente_id, internacao_idformulario_internacao) VALUES('Mateus','1986-11-27','Rua Leopoldo Machado','(64) 97578-4103','cgbvud@lxvhhq.com','78711214058','286498194','1','1');
INSERT INTO pacientes(nome, data_nascimento, endereço, telefone, email, CPF, RG, convenios_do_paciente_id, internacao_idformulario_internacao) VALUES('Maria','1984-07-03 ','Rua Vinte e Sete','(95) 99772-6894','carmed@usp.br','07613953009','184878172','1','1');
INSERT INTO pacientes(nome, data_nascimento, endereço, telefone, email, CPF, RG, convenios_do_paciente_id, internacao_idformulario_internacao) VALUES('Helena','1982-08-19','Rua José Mariano Serrano','(93) 98567-3905','caueameni@gmail.com','79825825081','196238225','1','1');
INSERT INTO pacientes(nome, data_nascimento, endereço, telefone, email, CPF, RG, convenios_do_paciente_id, internacao_idformulario_internacao) VALUES('Malany','1992-02-05','Rua Ibotira','(61) 97397-0269','claudiomsi@hotmail.com','90220309035','101578842','1','1');
INSERT INTO pacientes(nome, data_nascimento, endereço, telefone, email, CPF, RG, convenios_do_paciente_id, internacao_idformulario_internacao) VALUES('Zuleika','2011-06-15','Quadra QR 431 Conjunto 12','(89) 97334-1626','aisyess@gmail.com','73215695006','343366307','1','1');
INSERT INTO pacientes(nome, data_nascimento, endereço, telefone, email, CPF, RG, convenios_do_paciente_id, internacao_idformulario_internacao) VALUES('Jonatan','2005-08-18','Rua Aritoba 304','(86) 97574-3532','daniel.abr@hotmail.com','38026126041','204930637','1','1');
INSERT INTO pacientes(nome, data_nascimento, endereço, telefone, email, CPF, RG, convenios_do_paciente_id, internacao_idformulario_internacao) VALUES('Cesar','1984-10-10','Quadra Quadra 238','(67) 98636-7481','diego.gregb@hotmail.com','46331776052','160068630','1','1');

/* Abaixo vou incluir 10 consultas de diferentes pacientes e médicos a data 01/01/2022 e 31/12/2022 */
/*INSERT INTO consultas(data_hora,valor) VALUES('2022/01/01','100'); não consegui preencher este, creio que os nomes estão diferentes */
/*INSERT INTO consultas(data_hora,valor,fk_consultas_cadastro_pacientes1,fk_consultas_medicos_dados_pessoais1) VALUES('2022/01/01','100','3','3');*/

/* Abaixo vou incluir ao menos 7 internações Pelo menos dois pacientes devem ter se internado mais de uma vez. As internações devem ter ocorrido entre 01/01/2017 e 31/12/2022. */
INSERT INTO enfermeira(nome,CPF,CRE) VALUES('Joana','05207785739','542835820175');
