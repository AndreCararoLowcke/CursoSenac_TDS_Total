

/***
consulta para um relatório de todas as vendas pagas em dinheiro. 
Necessários para o relatório data da venda, valor total; produtos vendidos, quantidade e valor unitário; nome do cliente, cpf e telefone.
Ordena-se pela data de venda, as mais recentes primeiro.
**/
SELECT * FROM venda v, item_venda iv, produto p, cliente c, funcionario f
WHERE v.id = iv.venda_id AND c.id = v.cliente_id AND p.id = iv.produto_id AND f.id = v.funcionario_id and tipo_pagamento = 'D';

-- abaixo a consulta otimizada com JOINs e removida a utilização do *
SELECT iv.venda_id, p.id, c.id, f.id
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
SELECT * 
FROM produto p, item_venda iv, venda v
WHERE p.id = iv.produto_id AND v.id = iv.venda_id AND p.fabricante like '%lar%'; -- é usada para filtrar registros que contêm a substring "lar" em qualquer parte do valor da coluna fabricante

 -- abaixo a consulta otimizada
SELECT iv.produto_id, iv.venda_id
FROM produto p  
JOIN item_venda iv ON p.id = iv.produto_id  
JOIN venda v ON v.id = iv.venda_id  
WHERE p.fabricante LIKE '%lar%';
 
/***
Relatório de vendas de produto por cliente.
Mostrar dados do cliente, dados do produto e valor e quantidade totais de venda ao cliente de cada produto.
*/
SELECT SUM(iv.subtotal), SUM(iv.quantidade)
FROM produto p, item_venda iv, venda v, cliente c
WHERE p.id = iv.produto_id AND v.id = iv.venda_id AND c.id = v.cliente_id /*f.id = v.funcionario_id*/
GROUP BY c.nome, p.nome;

-- abaixo a consulta otimizada
SELECT c.nome AS nome_cliente, p.nome AS nome_produto, SUM(iv.subtotal) AS total_subtotal, SUM(iv.quantidade) AS total_quantidade  
FROM item_venda iv  
JOIN produto p ON p.id = iv.produto_id  
JOIN venda v ON v.id = iv.venda_id  
JOIN cliente c ON c.id = v.cliente_id  
GROUP BY c.nome, p.nome  
ORDER BY c.nome, p.nome;



