USE `uc4atividades` ;

DELIMITER //

CREATE TRIGGER antes_inserir_usuario1
BEFORE INSERT ON usuario
FOR EACH ROW
BEGIN
    -- Aplica a função MD5 à coluna senha
    SET NEW.senha = MD5(NEW.senha);
END //

DELIMITER ;

INSERT INTO usuario (login, senha) VALUES ('dev2', 'a1q2w3e');