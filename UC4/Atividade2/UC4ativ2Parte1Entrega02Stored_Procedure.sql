USE `uc4atividades` ;

-- Código para Criação da Stored Procedure
DELIMITER //

CREATE PROCEDURE listar_compras_cliente (
    IN p_cliente_id INT,
    IN p_data_inicial DATETIME,
    IN p_data_final DATETIME
)
BEGIN
    SELECT 
        c.nome AS nome_cliente,
        v.id AS id_compra,
        v.valor_total AS total_compra,
        p.nome AS nome_produto,
        iv.quantidade AS quantidade
    FROM 
        venda v
    JOIN 
        cliente c ON v.cliente_id = c.id
    JOIN 
        item_venda iv ON v.id = iv.venda_id
    JOIN 
        produto p ON iv.produto_id = p.id
    WHERE 
        c.id = p_cliente_id
        AND v.data BETWEEN p_data_inicial AND p_data_final
    ORDER BY 
        v.data;
END //

DELIMITER ;

CALL listar_compras_cliente(10, '2019-01-10', '2022-02-14');