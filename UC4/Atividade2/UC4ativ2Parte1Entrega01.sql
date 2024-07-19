DELIMITER //

CREATE PROCEDURE buscar_compra_cliente(id_cliente INT)
BEGIN
	
    
END //
DELIMITER ;

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