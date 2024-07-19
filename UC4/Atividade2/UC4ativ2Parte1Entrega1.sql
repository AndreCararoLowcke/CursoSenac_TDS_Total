USE uc4atividades;

/* receba id de cliente, data inicial e data final, e que mostre a lista de compras
 realizadas pelo referido cliente entre as datas informadas (incluindo essas datas), 
mostrando nome do cliente, id da compra, total, nome e quantidade de cada produto comprado.
 No script, inclua o código de criação e o comando de chamada da procedure.*/
 
DELIMITER //
CREATE PROCEDURE buscar_compra_cliente123456() /*Acho que terei que receber os parâmetros*/
BEGIN
DECLARE data_inicial DATETIME;
SET data_inicial := '2019-01-20 10:10:00' ;
SELECT data_inicial;
-- da para comentar assim tbm 
 /*
	DECLARE cliente_id INT ;
    
    DECLARE data_int DATETIME;
    DECLARE data_final DATETIME;       
    
    Error Code: 1292. Incorrect datetime value: '2001' for column 'data_inicial' at row 1

    SET data_final := 2019-11-19 ;
    
    WHILE data_inicial > data_final DO SELECT data_int;
    SET data_int := (SELECT DATE_SUB(data_inicial,INTERVAL 1 DAY));
    
    END WHILE;
    *//*Estas variáveis estão na tabela vendas*/ 
END//
DELIMITER ;
CALL buscar_compra_cliente123456();

/*
SELECT data_envio, data_pagamento, cliente_id FROM venda;
------------------------------------------------------------------------------------
SET lista := (SELECT DATE_SUB(data_inicial,INTERVAL 1 DAY))

SELECT DATE_ADD('2018-05-01',INTERVAL 1 DAY);
        -> '2018-05-02'
        
SELECT DATE_SUB('1998-01-02', INTERVAL 31 DAY);
        -> '1997-12-02'
 -----------------------------------------------------------------------------------       
        DELIMITER $$
CREATE PROCEDURE inserindo_vendedores ()
BEGIN
 DECLARE v1 INT DEFAULT 5;
 WHILE v1 > 0 DO INSERT INTO vendedores (nome) VALUES (CONCAT("Vendedor ", v1));
 SET v1 = v1 - 1;
 END WHILE;
END$$
DELIMITER ;
*/