
USE PI;


/* Inserindo dados na tabela Cliente*/
INSERT INTO Cliente (Nome, Telefone) VALUES
('André', '+55 47 98884-3081'),
('Vanessa', '+55 11 99884-5083');


/*Inserindo dados na tabela Serviços Habilitados*/
INSERT INTO Servicos_Habilitados (id_cliente, servico) VALUES
(1, 2),
(2, 2),
(1, 1);

/* Inserindo dados na tabela Conversa*/
INSERT INTO Conversa (id_cliente, conteudo) VALUES
(2, 'Eu quero conversar com vc'),
(1, 'Tudo o que eu quero');

/* Inserindo dados na tabela Telefone Conversa*/
INSERT INTO Telefone_Conversa (id_conversa, telefone_conversa) VALUES
(1, '+55 11 95791-7591'),
(2, '+55 53 8462-3202');

/* Inserindo dados na tabela Recebimento*/
INSERT INTO Recebimento (data_recebimento, valor_recebido, inicio_habilitado, fim_habilitado) VALUES
('2024-01-24 21:59:00', 30.00, '2024-01-24 21:59:00', '2024-02-23 18:53:00'),
('2024-01-25 13:23:00', 90.00, '2024-01-25 13:23:00', '2024-02-25 22:16:00');

/* Inserindo dados na tabela Pesquisas Salvas Cliente*/
INSERT INTO Pesquisas_Salvas_Cliente (id_cliente, consulta_feita) VALUES
(2, 'boletos'),
(1, 'Já pode pegar então as certificações');

