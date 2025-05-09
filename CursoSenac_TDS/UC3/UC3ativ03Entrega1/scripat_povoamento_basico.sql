USE hospital_db_andre_cararo_lowcke;


-- Inserindo tipos de quarto
INSERT INTO tipo_quarto (descricao, valor_diaria) VALUES
('Quarto Simples', 200),
('Quarto Duplo', 350),
('Apartamento', 500);

-- Inserindo quartos
INSERT INTO quarto (numero, tipo_quarto_idtipo_quarto) VALUES
(101, 1),
(102, 1),
(201, 2),
(202, 2),
(301, 3);

-- Inserindo convênios
INSERT INTO convenios (CNPJ, tempo_carencia, nome, carterinha_do_convenio) VALUES
('12.345.678/0001-99', '90 dias', 'SaúdePlus', 'CONV12345'),
('98.765.432/0001-11', '60 dias', 'BemEstar Saúde', 'CONV67890');

-- Inserindo especialidades
INSERT INTO especialidades (especialidade) VALUES
('Cardiologia'),
('Ortopedia'),
('Pediatria');

-- Inserindo médicos
SELECT * FROM medicos;

INSERT INTO medicos (nome, CPF, internacao_idformulario_internacao) VALUES
('Dr. João Silva', '123.456.789-00', 1),
('Dra. Maria Santos', '987.654.321-00', 1);

-- Inserindo enfermeiras
ALTER TABLE enfermeira MODIFY COLUMN CPF VARCHAR(14);

INSERT INTO enfermeira (nome, CPF, CRE) VALUES
('Enf. Carla Lima', 11122233344, 12345),
('Enf. Bruno Souza', 55566677788, 67890);

-- Inserindo internação
INSERT INTO internacao (data_entrada, data_prevista_alta, data_alta, procedimentos, quarto_idquarto) VALUES
(NOW(), DATE_ADD(NOW(), INTERVAL 5 DAY), NULL, 'Cirurgia cardíaca', 1),
(NOW(), DATE_ADD(NOW(), INTERVAL 3 DAY), NULL, 'Fratura de fêmur', 2);

-- Relacionando enfermeiras à internação
INSERT INTO internacao_has_enfermeira (internacao_idformulario_internacao, enfermeira_idenfermeira) VALUES
(1, 1),
(2, 2);

-- Inserindo pacientes
INSERT INTO pacientes (nome, data_nascimento, endereço, telefone, email, CPF, RG, convenios_do_paciente_id, internacao_idformulario_internacao) VALUES
('Ana Oliveira', '1985-07-12', 'Rua A, 123', '11987654321', 'ana@gmail.com', '111.222.333-44', '12.345.678-9', 1, 1),
('Carlos Pereira', '1990-03-25', 'Rua B, 456', '11912345678', 'carlos@gmail.com', '555.666.777-88', '98.765.432-1', 2, 2);

-- Relacionando médicos com especialidades
INSERT INTO medicos_has_especialidades (medicos_idmedicos_dados_pessoais, medicos_especialidades_id_especialidades) VALUES
(1, 1), -- Dr. João Silva - Cardiologia
(2, 2); -- Dra. Maria Santos - Ortopedia

-- Inserindo consultas
INSERT INTO consultas (data_hora, valor, medico_consulta_id, paciente_consulta_id) VALUES
(NOW(), '300', 1, 1),
(NOW(), '250', 2, 2);

-- Inserindo receitas
INSERT INTO Receitas (consultas_idconsultas) VALUES
(1),
(2);
