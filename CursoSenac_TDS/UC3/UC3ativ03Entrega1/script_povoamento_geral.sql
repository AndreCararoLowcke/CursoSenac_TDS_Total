-- Limpa as tabelas primeiro para evitar conflitos de chaves estrangeiras
SET FOREIGN_KEY_CHECKS = 0;
TRUNCATE TABLE consultas;
TRUNCATE TABLE pacientes;
TRUNCATE TABLE medicos;
SET FOREIGN_KEY_CHECKS = 1;

-- Insere os médicos com IDs explícitos
INSERT INTO medicos (idmedicos_dados_pessoais, nome, CPF, internacao_idformulario_internacao) VALUES
(1, 'Dr. João Silva', '123.456.789-00', 3),
(2, 'Dra. Maria Santos', '987.654.321-00', 1),
(3, 'Dr. Paulo Lima', '321.654.987-11', 2),
(4, 'Dra. Fernanda Alves', '654.987.321-22', 1),
(5, 'Dr. Ricardo Pereira', '456.789.123-33', 3),
(6, 'Dra. Carolina Costa', '789.123.456-44', 1),
(7, 'Dr. Bruno Souza', '852.963.741-55', 2),
(8, 'Dra. Aline Rocha', '963.852.741-66', 3),
(9, 'Dr. Marcos Tavares', '741.852.963-77', 3),
(10, 'Dra. Renata Ramos', '159.753.486-88', 2);

-- Insere os pacientes com IDs explícitos
INSERT INTO pacientes (id_cadastro_pacientes, nome, data_nascimento, endereço, telefone, email, CPF, RG, convenios_do_paciente_id, internacao_idformulario_internacao) VALUES
(1, 'Ana Oliveira', '1985-07-12', 'Rua A, 123', '11987654321', 'ana@gmail.com', '111.222.333-44', '12.345.678-9', 1, NULL),
(2, 'Carlos Pereira', '1990-03-25', 'Rua B, 456', '11912345678', 'carlos@gmail.com', '555.666.777-88', '98.765.432-1', 2, NULL),
(3, 'Mariana Lima', '1992-09-30', 'Rua C, 789', '11998765432', 'mariana@gmail.com', '222.333.444-55', '23.456.789-0', 3, NULL),
(4, 'Pedro Alves', '1988-12-05', 'Rua D, 321', '11987651234', 'pedro@gmail.com', '333.444.555-66', '34.567.890-1', 4, NULL),
(5, 'Juliana Rocha', '1975-06-15', 'Rua E, 654', '11912349876', 'juliana@gmail.com', '444.555.666-77', '45.678.901-2', 1, NULL),
(6, 'Lucas Souza', '1980-11-22', 'Rua F, 987', '11965432109', 'lucas@gmail.com', '555.666.777-88', '56.789.012-3', 2, NULL),
(7, 'Patrícia Tavares', '1995-01-18', 'Rua G, 147', '11943210987', 'patricia@gmail.com', '666.777.888-99', '67.890.123-4', 3, NULL),
(8, 'Roberto Ramos', '1983-05-27', 'Rua H, 258', '11932109876', 'roberto@gmail.com', '777.888.999-00', '78.901.234-5', 4, NULL),
(9, 'Fernanda Costa', '1998-08-14', 'Rua I, 369', '11921098765', 'fernanda@gmail.com', '888.999.000-11', '89.012.345-6', 1, NULL),
(10, 'Bruno Martins', '1991-04-09', 'Rua J, 741', '11910987654', 'bruno@gmail.com', '999.000.111-22', '90.123.456-7', 2, NULL);

-- Insere as consultas, ligando médicos e pacientes corretamente
INSERT INTO consultas (data_hora, valor, medico_consulta_id, paciente_consulta_id) VALUES
('2017-03-10 09:00:00', 300, 1, 1),
('2018-06-15 14:00:00', 250, 2, 2),
('2019-09-20 10:00:00', 400, 3, 3),
('2020-12-05 11:30:00', 350, 4, 4),
('2021-02-18 16:00:00', 500, 5, 5),
('2022-04-22 08:30:00', 450, 6, 6),
('2018-07-11 15:00:00', 200, 7, 7),
('2019-10-25 13:30:00', 300, 8, 8),
('2020-11-19 17:00:00', 400, 9, 9),
('2021-05-29 12:00:00', 350, 10, 10);
