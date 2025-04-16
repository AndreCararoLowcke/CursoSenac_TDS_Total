USE uc4atividades;
/* Poderia ter criado o usuário sem senha mas optei por utilizar */
CREATE USER 'user_relatorio5'@'localhost' IDENTIFIED BY '12345';

GRANT SELECT ON *.* TO 'user_relatorio5'@'localhost';


FLUSH PRIVILEGES;

SELECT * FROM mysql.user;

SHOW GRANTS FOR 'user_relatorio5'@'localhost';

