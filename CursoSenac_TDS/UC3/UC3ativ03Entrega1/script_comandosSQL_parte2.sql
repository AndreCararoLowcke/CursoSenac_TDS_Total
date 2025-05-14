-- Adiciona a coluna 'em_atividade' apenas se ela não existir
SET @coluna_existe = (
    SELECT COUNT(*) 
    FROM INFORMATION_SCHEMA.COLUMNS 
    WHERE table_name = 'medicos' 
    AND column_name = 'em_atividade'
);

-- Só cria a coluna se não existir
SET @sql = IF(@coluna_existe = 0, 
    'ALTER TABLE medicos ADD COLUMN em_atividade BIT DEFAULT 1', 
    'SELECT "Coluna já existe, pulando ALTER TABLE."'
);
PREPARE stmt FROM @sql;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;

-- Atualiza ao menos dois médicos para 'não' (0)
UPDATE medicos SET em_atividade = 0 WHERE idmedicos_dados_pessoais IN (1, 2);

-- Atualiza os demais médicos para 'sim' (1)
UPDATE medicos SET em_atividade = 1 WHERE idmedicos_dados_pessoais NOT IN (1, 2);

-- Atualiza datas de alta para internações em quartos de enfermaria
UPDATE internacao i
JOIN quarto q ON i.id_quarto = q.id_quarto
SET i.data_alta = DATE_ADD(i.data_entrada, INTERVAL 3 DAY)
WHERE q.tipo = 'enfermaria';

-- Pega o ID do último convênio cadastrado
SET @ultimo_convenio_id = (
    SELECT id_convenio 
    FROM convenios 
    ORDER BY id_convenio DESC 
    LIMIT 1
);

-- Exclui consultas relacionadas ao último convênio
DELETE FROM consultas WHERE id_convenio = @ultimo_convenio_id;

-- Exclui o último convênio cadastrado
DELETE FROM convenios WHERE id_convenio = @ultimo_convenio_id;
