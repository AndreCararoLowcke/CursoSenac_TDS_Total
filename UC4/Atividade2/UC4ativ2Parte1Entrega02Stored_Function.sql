/*
Crie uma stored function que receba id de cliente e retorne se o cliente é “PREMIUM” ou “REGULAR”. 
Um cliente é “PREMIUM” se já realizou mais de R$ 10 mil em compras na loja.  Se não, é um cliente “REGULAR”.
 No script, inclua o código de criação e o comando de chamada da function.
*/

USE `uc4atividades` ;

DELIMITER //

CREATE FUNCTION verificar_tipo_cliente (
    p_cliente_id INT
) RETURNS VARCHAR(10)
DETERMINISTIC
BEGIN
    DECLARE total_compras DECIMAL(10,2);

    -- Calcula o total de compras do cliente
    SELECT SUM(valor_total) INTO total_compras
    FROM venda
    WHERE cliente_id = p_cliente_id;

    -- Verifica se o total de compras é maior que R$ 10.000
    IF total_compras > 10000 THEN
        RETURN 'PREMIUM';
    ELSE
        RETURN 'REGULAR';
    END IF;
END //
DELIMITER ;

SELECT verificar_tipo_cliente(45);