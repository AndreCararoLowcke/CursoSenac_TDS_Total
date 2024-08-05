CREATE DATABASE PI;
USE PI;
-- Tabela Cliente
CREATE TABLE Cliente (
    Id INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(100) NOT NULL,
    Telefone VARCHAR(20) NOT NULL
);

/* Inserindo dados na tabela Cliente
INSERT INTO Cliente (Nome, Telefone) VALUES
('André', '+55 47 98884-3081'),
('Vanessa', '+55 11 99884-5083');
*/

-- Tabela Serviços Habilitados
CREATE TABLE Servicos_Habilitados (
    Id INT PRIMARY KEY AUTO_INCREMENT,
    id_cliente INT,
    servico INT,
    FOREIGN KEY (id_cliente) REFERENCES Cliente(Id)
);

/*Inserindo dados na tabela Serviços Habilitados
INSERT INTO Servicos_Habilitados (id_cliente, servico) VALUES
(1, 2),
(2, 2),
(1, 1);
*/

-- Tabela Conversa
CREATE TABLE Conversa (
    id INT PRIMARY KEY AUTO_INCREMENT,
    id_cliente INT,
    conteudo TEXT NOT NULL,
    FOREIGN KEY (id_cliente) REFERENCES Cliente(Id)
);

/* Inserindo dados na tabela Conversa
INSERT INTO Conversa (id_cliente, conteudo) VALUES
(2, 'Eu quero conversar com vc'),
(1, 'Tudo o que eu quero');
*/

-- Tabela Telefone Conversa
CREATE TABLE Telefone_Conversa (
    id INT PRIMARY KEY AUTO_INCREMENT,
    id_conversa INT,
    telefone_conversa VARCHAR(20) NOT NULL,
    FOREIGN KEY (id_conversa) REFERENCES Conversa(id)
);

/* Inserindo dados na tabela Telefone Conversa
INSERT INTO Telefone_Conversa (id_conversa, telefone_conversa) VALUES
(1, '+55 11 95791-7591'),
(2, '+55 53 8462-3202');
*/

-- Tabela Recebimento
CREATE TABLE Recebimento (
    id INT PRIMARY KEY AUTO_INCREMENT,
    data_recebimento DATETIME NOT NULL,
    valor_recebido DECIMAL(10, 2) NOT NULL,
    inicio_habilitado DATETIME NOT NULL,
    fim_habilitado DATETIME NOT NULL
);

/* Inserindo dados na tabela Recebimento
INSERT INTO Recebimento (data_recebimento, valor_recebido, inicio_habilitado, fim_habilitado) VALUES
('2024-01-24 21:59:00', 30.00, '2024-01-24 21:59:00', '2024-02-23 18:53:00'),
('2024-01-25 13:23:00', 90.00, '2024-01-25 13:23:00', '2024-02-25 22:16:00');
*/

-- Tabela Pesquisas Salvas Cliente
CREATE TABLE Pesquisas_Salvas_Cliente (
    id INT PRIMARY KEY AUTO_INCREMENT,
    id_cliente INT,
    consulta_feita TEXT NOT NULL,
    FOREIGN KEY (id_cliente) REFERENCES Cliente(Id)
);

/* Inserindo dados na tabela Pesquisas Salvas Cliente
INSERT INTO Pesquisas_Salvas_Cliente (id_cliente, consulta_feita) VALUES
(2, 'boletos'),
(1, 'Já pode pegar então as certificações');
*/
