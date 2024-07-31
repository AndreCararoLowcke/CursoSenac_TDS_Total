

/***
consulta para um relatório de todas as vendas pagas em dinheiro. 
Necessários para o relatório data da venda, valor total; produtos vendidos, quantidade e valor unitário; nome do cliente, cpf e telefone.
Ordena-se pela data de venda, as mais recentes primeiro.
**/
-- abaixo criada uma view
CREATE VIEW view_vendas_dinheiro AS
SELECT 
    iv.venda_id, 
    p.id AS produto_id, 
    c.id AS cliente_id, 
    f.id AS funcionario_id
FROM venda v
JOIN item_venda iv ON v.id = iv.venda_id
JOIN produto p ON iv.produto_id = p.id
JOIN cliente c ON v.cliente_id = c.id
JOIN funcionario f ON v.funcionario_id = f.id
WHERE v.tipo_pagamento = 'D';


/***
consulta para encontrar todas as vendas de produtos de um dado fabricante
Mostrar dados do produto, quantidade vendida, data da venda.
Ordena-se pelo nome do produto.
***/
 -- abaixo a consulta com uma view criada
CREATE VIEW view_produtos_vendas_lar AS
SELECT 
    iv.produto_id, 
    iv.venda_id
FROM produto p  
JOIN item_venda iv ON p.id = iv.produto_id  
JOIN venda v ON v.id = iv.venda_id  
WHERE p.fabricante LIKE '%lar%';
 
/***
Relatório de vendas de produto por cliente.
Mostrar dados do cliente, dados do produto e valor e quantidade totais de venda ao cliente de cada produto.
*/

-- abaixo a consulta com uma view criada
CREATE VIEW view_resumo_vendas AS
SELECT 
    c.nome AS nome_cliente, 
    p.nome AS nome_produto, 
    SUM(iv.subtotal) AS total_subtotal, 
    SUM(iv.quantidade) AS total_quantidade  
FROM item_venda iv  
JOIN produto p ON p.id = iv.produto_id  
JOIN venda v ON v.id = iv.venda_id  
JOIN cliente c ON c.id = v.cliente_id  
GROUP BY c.nome, p.nome  
ORDER BY c.nome, p.nome;



