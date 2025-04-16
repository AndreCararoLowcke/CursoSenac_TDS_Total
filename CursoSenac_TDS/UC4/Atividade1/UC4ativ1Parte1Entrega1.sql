USE uc4atividades;
/* Poderia ter criado o usuário sem senha mas optei por utilizar */
CREATE USER 'user_relatorio'@'localhost' IDENTIFIED BY '12345';

GRANT SELECT ON *.* TO 'user_relatorio'@'localhost';

FLUSH PRIVILEGES;

SELECT * FROM mysql.user;

