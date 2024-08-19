USE PI;
DELIMITER //

CREATE FUNCTION contar_servicos_habilitados(cliente_id INT)
RETURNS INT
BEGIN
    DECLARE total_servicos INT;

    SELECT COUNT(*)
    INTO total_servicos
    FROM servicos_habilitados
    WHERE id_cliente = cliente_id;

    RETURN total_servicos;
END //
DELIMITER ;

SELECT contar_servicos_habilitados(1); -- Substitua 1 pelo ID do cliente desejado


