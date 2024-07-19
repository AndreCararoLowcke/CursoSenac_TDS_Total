
/* Poderia ter criado o usuário sem senha mas optei por utilizar */
CREATE USER 'user_funcionario1'@'localhost' IDENTIFIED BY '12345';

GRANT SELECT, INSERT, UPDATE, DELETE ON uc4atividades.venda TO 'user_funcionario1'@'localhost';
GRANT SELECT, INSERT , UPDATE, DELETE ON uc4atividades.cliente TO 'user_funcionario'@'localhost';
GRANT SELECT, INSERT, UPDATE, DELETE ON uc4atividades.produto TO 'user_funcionario'@'localhost';

FLUSH PRIVILEGES;

SELECT * FROM mysql.user;

