CREATE DATABASE db_escolatech;

USE db_escolatech;

CREATE TABLE tb_estudantes(
id BIGINT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(255),
data_nascimento DATE NOT NULL,
curso VARCHAR(100),
endereco VARCHAR(255),
nota_final DECIMAL(5,2));

SELECT * FROM tb_estudantes;

INSERT INTO tb_estudantes (nome, data_nascimento, curso, endereco, nota_final) VALUES
('João da Silva', '2005-03-10', '9º ano', 'Rua A, 123', 8.5),
('Maria Oliveira', '2006-07-25', 'Ensino Médio', 'Av. B, 456', 9.2),
('Pedro Santos', '2007-11-15', '6º ano', 'Travessa C, 789', 7.8),
('Ana Souza', '2005-04-02', '8º ano', 'Rua D, 567', 8.0),
('Carlos Silva', '2006-09-12', 'Ensino Médio', 'Av. E, 890', 8.9),
('Mariana Costa', '2008-02-28', '7º ano', 'Rua F, 1234', 7.5),
('Rafaela Santos', '2005-11-20', '9º ano', 'Rua G, 456', 9.5),
('Luiz Oliveira', '2007-03-15', 'Ensino Médio', 'Av. H, 789', 8.2),
('Gabriel Souza', '2006-06-08', '6º ano', 'Travessa I, 1011', 7.0),
('Larissa Silva', '2008-09-30', '8º ano', 'Rua J, 1213', 8.7),
('Lucas Costa', '2005-01-14', 'Ensino Médio', 'Av. K, 1415', 9.1),
('Amanda Santos', '2007-07-05', '7º ano', 'Rua L, 1617', 7.3),
('Matheus Oliveira', '2006-10-18', '9º ano', 'Av. M, 1819', 8.4),
('Isabela Souza', '2008-04-23', 'Ensino Médio', 'Rua N, 2021', 8.8),
('Felipe Silva', '2005-12-09', '6º ano', 'Travessa O, 2223', 7.9);

SELECT * FROM tb_estudantes;

SELECT * FROM tb_estudantes WHERE nota_final > 7.0;

INSERT INTO tb_estudantes (nome, data_nascimento, curso, endereco, nota_final) VALUES
('João Junior', '2005-03-10', '9º ano', 'Rua A, 123', 5.5);

SELECT * FROM tb_estudantes WHERE nota_final < 7.0;

UPDATE tb_estudantes SET nota_final = 10.0 WHERE id = 3;

SELECT * FROM tb_estudantes WHERE id = 3;