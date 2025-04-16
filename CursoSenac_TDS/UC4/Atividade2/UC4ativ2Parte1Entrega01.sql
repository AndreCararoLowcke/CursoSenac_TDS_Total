/* receba id de cliente, data inicial e data final, e que mostre a lista de compras
 realizadas pelo referido cliente entre as datas informadas (incluindo essas datas), 
mostrando nome do cliente, id da compra, total, nome e quantidade de cada produto comprado.
 No script, inclua o código de criação e o comando de chamada da procedure.*/

DELIMITER //
CREATE PROCEDURE buscar_compra_cliente(id_cliente INT)
BEGIN
	DECLARE nome1 VARCHAR(250);
    DECLARE pagamento DATETIME DEFAULT "2022-01-14 10:32:35";
    -- DECLARE pag DATETIME DEFAULT "2022-01-14 10:32:35";
    DECLARE v_total DECIMAL(3, 1) DEFAULT 0.0;
    
	SELECT nome INTO nome1 FROM cliente WHERE id = id_cliente;
	-- SELECT nome1;
    SET @v_nome := (SELECT data_pagamento FROM venda WHERE cliente_id = id_cliente);
    SELECT @v_nome;
    -- SET nome1 := (SELECT data_pagamento FROM venda WHERE cliente_id = id_cliente);
    -- SELECT data_pagamento INTO pagamento FROM venda WHERE cliente_id = id_cliente;
	-- SELECT nome1;

    
END //
DELIMITER ;
CALL buscar_compra_cliente(5);
SELECT nome FROM cliente WHERE id=4;
SELECT data_pagamento FROM venda WHERE cliente_id = 4;
 /*
DELIMITER //
CREATE PROCEDURE buscar_nome_vendedor (
 id_vendedor INT,
 OUT nome_vendedor VARCHAR(25)
)
BEGIN
 SELECT nome INTO nome_vendedor
 FROM vendedores
 WHERE id = id_vendedor;
END//
DELIMITER ;

DELIMITER $$   pg13
CREATE PROCEDURE buscar_resultado_prova ()
BEGIN
 DECLARE aluno VARCHAR(25) DEFAULT "Fulano";
 DECLARE id_prova INT UNSIGNED DEFAULT 12;
 DECLARE nota DECIMAL(3, 1) DEFAULT 9.5;
 DECLARE finalizada_em DATETIME DEFAULT "2022-01-14 10:32:35";
 SELECT aluno, id_prova, nota, finalizada_em;
END $$
DELIMITER ;

DECLARE aluno VARCHAR(25) DEFAULT "Fulano"; pg14
DECLARE nota DECIMAL(3,1) DEFAULT 10.0;
SET aluno = "Ciclano", nota = 9.5;

*/