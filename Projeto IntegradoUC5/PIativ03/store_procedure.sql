USE PI;
DELIMITER $$

CREATE PROCEDURE inserir_cliente (
    IN p_nome VARCHAR(100),
    IN p_telefone VARCHAR(40)
)
BEGIN
    DECLARE v_id_cliente INT;

    -- Inserir um novo cliente
    INSERT INTO Cliente (Nome, Telefone) VALUES (p_nome, p_telefone);
    SET v_id_cliente = LAST_INSERT_ID(); -- Captura o ID do cliente inserido

END$$

DELIMITER ;

CALL inserir_cliente(
    'Sônia', 
	'+55 47 77774-3081'
);
