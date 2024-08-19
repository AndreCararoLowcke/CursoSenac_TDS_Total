USE PI;
-- Criar usuário para desenvolvedor administrar o BD
CREATE USER 'admin_dev'@'localhost' IDENTIFIED BY 'admindev123';

-- Criar usuário para o cliente
CREATE USER 'cliente_user'@'localhost' IDENTIFIED BY 'clienteuser123';

-- Criar usuário para a empresa do  cliente
CREATE USER 'empresa_user'@'localhost' IDENTIFIED BY 'empresauser123';

FLUSH PRIVILEGES;

-- criando as role para compor uma segurança de utilização do software
CREATE ROLE 'admin_dev';
CREATE ROLE 'cliente_user';
CREATE ROLE  'empresa_user';

FLUSH PRIVILEGES;

-- Conceder permissões ao papel de administrador desenvolvedor
GRANT ALL PRIVILEGES ON PI.* TO 'admin_dev';

-- Conceder permissões ao papel de cliente
GRANT SELECT, INSERT ON PI.* TO 'cliente_user';

-- Conceder permissões ao papel de operador
GRANT SELECT ON PI.* TO 'empresa_user';

FLUSH PRIVILEGES;

-- Atribuinda as ROLE a os usuários e administradores
GRANT 'admin_dev' TO 'admin_dev'@'localhost';
GRANT 'cliente_user' TO 'cliente_user'@'localhost';
GRANT 'empresa_user' TO 'empresa_user'@'localhost';

FLUSH PRIVILEGES;

-- Definir ROLE padrão para o usuário cliente e empresa
SET DEFAULT ROLE 'cliente_user' TO 'cliente_user'@'localhost';
SET DEFAULT ROLE 'empresa_user' TO 'empresa_user'@'localhost';

FLUSH PRIVILEGES;

