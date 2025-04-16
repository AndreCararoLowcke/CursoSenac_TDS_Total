 CREATE DATABASE UC6;
 USE UC6;

-- Criação da tabela Transporte
CREATE TABLE Transporte (
    id INT PRIMARY KEY AUTO_INCREMENT,
    tipo VARCHAR(100),
    valor DECIMAL(10, 2) -- Valor em dólar
);

-- Criação da tabela Hospedagem
CREATE TABLE Hospedagem (
    id INT PRIMARY KEY AUTO_INCREMENT,
    descricao VARCHAR(255),
    valorDiaria DECIMAL(10, 2) -- Valor da diária em dólar
);

-- Criação da tabela PacoteViagem
CREATE TABLE PacoteViagem (
    id INT PRIMARY KEY AUTO_INCREMENT,
    transporte_id INT,
    hospedagem_id INT,
    destino VARCHAR(100),
    quantidadeDias INT,
    FOREIGN KEY (transporte_id) REFERENCES Transporte(id),
    FOREIGN KEY (hospedagem_id) REFERENCES Hospedagem(id)
);

-- Criação da tabela Venda
CREATE TABLE Venda (
    id INT PRIMARY KEY AUTO_INCREMENT,
    clienteNome VARCHAR(100),
    formaPagamento VARCHAR(50),
    pacoteViagem_id INT,
    FOREIGN KEY (pacoteViagem_id) REFERENCES PacoteViagem(id)
);

-- Exemplo de inserção de dados na tabela Transporte
INSERT INTO Transporte (tipo, valor) VALUES ('Aéreo', 500.00);
INSERT INTO Transporte (tipo, valor) VALUES ('Terrestre', 200.00);

-- Exemplo de inserção de dados na tabela Hospedagem
INSERT INTO Hospedagem (descricao, valorDiaria) VALUES ('Hotel 5 estrelas', 150.00);
INSERT INTO Hospedagem (descricao, valorDiaria) VALUES ('Pousada', 80.00);

-- Exemplo de inserção de dados na tabela PacoteViagem
INSERT INTO PacoteViagem (transporte_id, hospedagem_id, destino, quantidadeDias) 
VALUES (1, 1, 'Paris', 7);

-- Exemplo de inserção de dados na tabela Venda
INSERT INTO Venda (clienteNome, formaPagamento, pacoteViagem_id) 
VALUES ('João Silva', 'Cartão de Crédito', 1);