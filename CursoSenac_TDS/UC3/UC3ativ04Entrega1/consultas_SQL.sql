USE hospital_db_andre_cararo_lowcke;

-- ===============================
-- INSERÇÕES PARA TESTES
-- ===============================

-- Inserir especialidades
INSERT INTO especialidades (especialidade) VALUES ('pediatria'), ('gastroenterologia');

-- Inserir tipos de quarto
INSERT INTO tipo_quarto (descricao, valor_diaria) VALUES ('apartamento', 500), ('enfermaria', 200);

-- Inserir quartos
INSERT INTO quarto (numero, tipo_quarto_idtipo_quarto) VALUES (101, 1), (102, 2);

-- Inserir internações
INSERT INTO internacao (data_entrada, data_prevista_alta, data_alta, procedimentos, quarto_idquarto)
VALUES 
('2020-01-10 10:00:00', '2020-01-13 10:00:00', '2020-01-14 10:00:00', 'cirurgia de apendicite', 2),
('2020-06-05 09:00:00', '2020-06-10 09:00:00', '2020-06-08 09:00:00', 'endoscopia', 1);

-- Inserir convenios
INSERT INTO convenios (CNPJ, tempo_carencia, nome, carterinha_do_convenio)
VALUES ('12345678900012', '30 dias', 'Unimed', '123456'),
       ('00000000000000', '', 'Sem Convenio', '000000'); -- usado como "sem convênio"

-- Inserir pacientes
INSERT INTO pacientes (nome, data_nascimento, endereço, telefone, email, CPF, RG, convenios_do_paciente_id, internacao_idformulario_internacao)
VALUES 
('João da Silva', '2005-05-20', 'Rua A', '1111-1111', 'joao@email.com', '11111111111', '1111111', 1, 1),
('Maria de Souza', '2010-10-10', 'Rua B', '2222-2222', 'maria@email.com', '22222222222', '2222222', 2, 2);

-- Inserir médicos
INSERT INTO medicos (nome, CPF, internacao_idformulario_internacao)
VALUES ('Dr. Carlos', '33333333333', 1), ('Dra. Ana', '44444444444', 2);

-- Associar médicos a especialidades
INSERT INTO medicos_has_especialidades (medicos_idmedicos_dados_pessoais, medicos_especialidades_id_especialidades)
VALUES (1, 2), (2, 1); -- Carlos: gastro, Ana: pediatria

-- Inserir consultas
INSERT INTO consultas (data_hora, valor, medico_consulta_id, paciente_consulta_id)
VALUES 
('2020-01-15 10:00:00', '200', 1, 1),
('2020-02-20 09:00:00', '250', 1, 2),
('2020-03-10 15:00:00', '500', 2, 1),
('2020-04-05 11:00:00', '100', 2, 2);

-- Inserir receitas
INSERT INTO Receitas (consultas_idconsultas) VALUES (1), (2);

-- Inserir enfermeiras
INSERT INTO enfermeira (nome, CPF, CRE) VALUES ('Enf. Laura', 123456789, 789), ('Enf. Paulo', 987654321, 456);

-- Relacionar enfermeiros às internações
INSERT IGNORE INTO internacao_has_enfermeira (internacao_idformulario_internacao, enfermeira_idenfermeira)
VALUES (1, 1), (2, 1), (2, 2);


-- ===============================
-- CONSULTAS SOLICITADAS
-- ===============================

-- 1. Consultas de 2020 sem convênio
SELECT c.*, p.nome AS paciente, CAST(c.valor AS DECIMAL(10,2)) AS valor_decimal
FROM consultas c
JOIN pacientes p ON c.paciente_consulta_id = p.id_cadastro_pacientes
JOIN convenios cv ON p.convenios_do_paciente_id = cv.idconvenios
WHERE cv.nome = 'Sem Convenio' AND YEAR(c.data_hora) = 2020;

SELECT AVG(CAST(c.valor AS DECIMAL(10,2))) AS media_consultas_sem_convenio
FROM consultas c
JOIN pacientes p ON c.paciente_consulta_id = p.id_cadastro_pacientes
JOIN convenios cv ON p.convenios_do_paciente_id = cv.idconvenios
WHERE cv.nome = 'Sem Convenio' AND YEAR(c.data_hora) = 2020;

-- 2. Consultas de 2020 com convênio
SELECT c.*, p.nome AS paciente, CAST(c.valor AS DECIMAL(10,2)) AS valor_decimal
FROM consultas c
JOIN pacientes p ON c.paciente_consulta_id = p.id_cadastro_pacientes
JOIN convenios cv ON p.convenios_do_paciente_id = cv.idconvenios
WHERE cv.nome != 'Sem Convenio' AND YEAR(c.data_hora) = 2020;

SELECT AVG(CAST(c.valor AS DECIMAL(10,2))) AS media_consultas_com_convenio
FROM consultas c
JOIN pacientes p ON c.paciente_consulta_id = p.id_cadastro_pacientes
JOIN convenios cv ON p.convenios_do_paciente_id = cv.idconvenios
WHERE cv.nome != 'Sem Convenio' AND YEAR(c.data_hora) = 2020;

-- 3. Internações com alta após data prevista
SELECT * FROM internacao
WHERE data_alta > data_prevista_alta;

-- 4. Receituário da primeira consulta com receita
SELECT r.*, c.*
FROM Receitas r
JOIN consultas c ON r.consultas_idconsultas = c.idconsultas
ORDER BY c.data_hora ASC
LIMIT 1;

-- 5. Consulta com maior e menor valor (sem convênio)
SELECT * FROM consultas c
JOIN pacientes p ON c.paciente_consulta_id = p.id_cadastro_pacientes
JOIN convenios cv ON p.convenios_do_paciente_id = cv.idconvenios
WHERE cv.nome = 'Sem Convenio'
ORDER BY CAST(c.valor AS DECIMAL(10,2)) DESC
LIMIT 1;

SELECT * FROM consultas c
JOIN pacientes p ON c.paciente_consulta_id = p.id_cadastro_pacientes
JOIN convenios cv ON p.convenios_do_paciente_id = cv.idconvenios
WHERE cv.nome = 'Sem Convenio'
ORDER BY CAST(c.valor AS DECIMAL(10,2)) ASC
LIMIT 1;

-- 6. Internações e valor total
SELECT i.*, q.numero AS numero_quarto, tq.valor_diaria,
DATEDIFF(i.data_alta, i.data_entrada) AS dias_internado,
(DATEDIFF(i.data_alta, i.data_entrada) * tq.valor_diaria) AS valor_total
FROM internacao i
JOIN quarto q ON i.quarto_idquarto = q.idquarto
JOIN tipo_quarto tq ON q.tipo_quarto_idtipo_quarto = tq.idtipo_quarto
WHERE i.data_alta IS NOT NULL;

-- 7. Internações em "apartamento"
SELECT i.data_entrada, i.procedimentos, q.numero
FROM internacao i
JOIN quarto q ON i.quarto_idquarto = q.idquarto
JOIN tipo_quarto tq ON q.tipo_quarto_idtipo_quarto = tq.idtipo_quarto
WHERE tq.descricao = 'apartamento';

-- 8. Consultas de menores de idade (não pediatria)
SELECT p.nome, c.data_hora, e.es_
