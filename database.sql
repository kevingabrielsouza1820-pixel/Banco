-- -- ROOT

-- CREATE DATABASE IF NOT EXISTS biblioteca;
-- use biblioteca;

-- CREATE TABLE IF NOT EXISTS user (
--     id_user INT PRIMARY KEY AUTO_INCREMENT,
--     nome_user VARCHAR(500) NOT NULL,
--     email_user VARCHAR(500) NOT NULL,
--     pass_user VARCHAR(255) NOT NULL,
--     card_stats_user BOOLEAN NOT NULL,
--     data_cadastro_user date NOT NULL,
--     status BOOLEAN NOT NULL DEFAULT TRUE,
--     UNIQUE (email_user)
-- );


-- CREATE TABLE IF NOT EXISTS Funcionario (
--     id_func INT PRIMARY KEY AUTO_INCREMENT,
--     nome_func VARCHAR(500) NOT NULL,
--     email_func VARCHAR(500) NOT NULL,
--     pass_func VARCHAR(255) NOT NULL,
--     permissao_func BOOLEAN NOT NULL,
--     data_cadastro_func date NOT NULL,
--     status BOOLEAN NOT NULL DEFAULT TRUE,
--     UNIQUE (email_func)
-- );


-- CREATE TABLE IF NOT EXISTS Book (
--     id_book INT PRIMARY KEY AUTO_INCREMENT,
--     dano_book INT,
--     sinopse_book VARCHAR(500) NOT NULL,
--     titulo_book VARCHAR(255) NOT NULL,
--     autor_book VARCHAR(255) NOT NULL,
--     publicacao_book DATE NOT NULL,
--     localizacao_book VARCHAR(255) NOT NULL,
--     categoria_book INT NOT NULL,
--     status_book BOOLEAN NOT NULL DEFAULT TRUE,
--     id_func INT,
--     UNIQUE (id_book),
--     FOREIGN KEY (id_func)
--         REFERENCES funcionario(id_func)
-- );


-- CREATE TABLE IF NOT EXISTS Retirada (
--     id_ret INT PRIMARY KEY AUTO_INCREMENT,
--     data_ret DATE NOT NULL UNIQUE,
--     tipo_dano_ret INT NOT NULL, 
--     data_limite_ret DATE NOT NULL,
--     id_user INT,
--     id_func INT,
--     id_book INT,
--     UNIQUE(id_ret),
--     FOREIGN KEY(id_user)
--         REFERENCES user (id_user),
--     FOREIGN KEY (id_func)
--         REFERENCES Funcionario(id_func),
--     FOREIGN KEY (id_book)
--         REFERENCES Book(id_book)
-- );

-- CREATE TABLE IF NOT EXISTS Donate (
--     id_donate INT PRIMARY KEY AUTO_INCREMENT,
--     tipo_dano_donate INT NOT NULL,
--     data_donate DATE NOT NULL,
--     id_book INT,
--     id_user INT,
--     id_func INT,
--     FOREIGN KEY (id_user)
--         REFERENCES user(id_user),
--     FOREIGN KEY (id_book)
--         REFERENCES Book (id_book),
--     FOREIGN KEY (id_func)
--         REFERENCES Funcionario (id_func)
-- );

-- CREATE TABLE IF NOT EXISTS Devolucao (
--     id_devo INT PRIMARY KEY AUTO_INCREMENT,
--     estado_devo INT NOT NULL,
--     data_devo DATE NOT NULL,
--     multa_atraso_devo INT NOT NULL,
--     multa_dano_devo INT NOT NULL,
--     multa_total_devo INT NOT NULL,
--     id_func INT,
--     id_book INT,
--     id_ret INT,
--     id_user INT,
--     FOREIGN KEY (id_func)
--         REFERENCES funcionario (id_func),
--     FOREIGN KEY (id_book)
--         REFERENCES Book (id_book),
--     FOREIGN KEY (id_ret)
--         REFERENCES Retirada (id_ret),
--     FOREIGN KEY (id_user)
--         REFERENCES user (id_user)
-- );


-- INSERT INTO user (nome_user, email_user, pass_user, card_stats_user, data_cadastro_user, id_user) VALUE
-- ('User1', 'User1@gmail.com', 'user123', TRUE, '08/10', 1),
-- ('User2', 'User2@gmail.com', 'user12', TRUE, '08/09', 2),
-- ('User3', 'User3@gmail.com', 'user123', TRUE, '08/10', 3),
-- ('User4', 'User4@gmail.com', 'user1234', TRUE, '08/10', 4),
-- ('User5', 'User5@gmail.com', 'user12345', TRUE, '08/10', 5),
-- ('User6', 'User6@gmail.com', 'user123456', TRUE, '08/10', 6),
-- ('User7', 'User7@gmail.com', 'user1234567', TRUE, '08/10', 7),
-- ('User8', 'User8@gmail.com', 'user12345678', TRUE, '08/10', 8),
-- ('User9', 'User9@gmail.com', 'user123456789', TRUE, '08/10', 9),
-- ('User10', 'User10@gmail.com', 'user10', TRUE, '08/10', 10);


-- INSERT INTO funcionario (nome_func, email_func, pass_func, permissao_func, data_cadastro_func, id_func) VALUE
-- -- ('func1', 'funcionario1@gmail.com', 'func111', TRUE, '08/10', 1),
-- ('func2', 'funcionario2@gmail.com', 'func222', TRUE, '08/10', 2),
-- ('func3', 'funcionario3@gmail.com', 'func333', TRUE, '08/10', 3),
-- ('func4', 'funcionario4@gmail.com', 'func444', TRUE, '08/10', 4),
-- ('func5', 'funcionario5@gmail.com', 'func555', TRUE, '08/10', 5),
-- ('func6', 'funcionario6@gmail.com', 'func666', TRUE, '08/10', 6);


-- select * from  user;
-- select * from  Funcionario;