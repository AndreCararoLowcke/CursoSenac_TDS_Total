

/***
consulta para um relatório de todas as vendas pagas em dinheiro. 
Necessários para o relatório data da venda, valor total; produtos vendidos, quantidade e valor unitário; nome do cliente, cpf e telefone.
Ordena-se pela data de venda, as mais recentes primeiro.
**/
-- abaixo a consulta otimizada com índices e JOIN e a seleção particular de cada colunar que será usada
CREATE INDEX idx_iv_venda_id ON item_venda(venda_id);
CREATE INDEX idx_iv_produto_id ON item_venda(produto_id);
CREATE INDEX idx_v_cliente_id ON venda(cliente_id);
CREATE INDEX idx_v_funcionario_id ON venda(funcionario_id);
CREATE INDEX idx_v_tipo_pagamento ON venda(tipo_pagamento);

EXPLAIN SELECT iv.venda_id, p.id, c.id, f.id
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

-- abaixo a tabela otimizada com índices
CREATE INDEX idx_iv_produto_id3 ON item_venda(produto_id);
CREATE INDEX idx_iv_venda_id3 ON item_venda(venda_id);
CREATE INDEX idx_p_fabricante3 ON produto(fabricante);

EXPLAIN SELECT iv.produto_id, iv.venda_id
FROM produto p  
JOIN item_venda iv ON p.id = iv.produto_id  
JOIN venda v ON v.id = iv.venda_id  
WHERE p.fabricante LIKE '%lar%';
 

/***
Relatório de vendas de produto por cliente.
Mostrar dados do cliente, dados do produto e valor e quantidade totais de venda ao cliente de cada produto.
*/
-- abaixo a consulta otimizada com índices. 

CREATE INDEX idx_iv_produtosi_id2 ON item_venda(produto_id);
CREATE INDEX idx_iv_vendais_id2 ON item_venda(venda_id);
CREATE INDEX idx_v_clientei_id2 ON venda(cliente_id);
CREATE INDEX idx_c_nomeis2 ON cliente(nome, id);
CREATE INDEX idx_p_nomeis2 ON produto(nome, id);

explain SELECT c.nome AS nome_cliente, p.nome AS nome_produto, SUM(iv.subtotal) AS total_subtotal, SUM(iv.quantidade) AS total_quantidade  
FROM item_venda iv  
JOIN produto p ON p.id = iv.produto_id  
JOIN venda v ON v.id = iv.venda_id  
JOIN cliente c ON c.id = v.cliente_id  
GROUP BY c.nome, p.nome  
ORDER BY c.nome, p.nome;



