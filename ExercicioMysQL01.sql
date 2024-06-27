CREATE DATABASE db_rh;

USE db_rh;

CREATE TABLE tb_colaboradores(
	id BIGINT AUTO_INCREMENT NOT NULL,
	nome VARCHAR(255),
    cargo VARCHAR(255),
    dataNascimento DATE NOT NULL,
    dataAdmisao DATE NOT NULL,
    salario DECIMAL(6,2) NOT NULL,
    PRIMARY KEY(id));
    
SELECT * FROM tb_colaboradores;
    
INSERT INTO tb_colaboradores (nome, cargo, dataNascimento, dataAdmisao, salario) VALUES
	('João da Silva', 'Analista de Sistemas', '1985-07-15', '2020-01-10', 3500.00),
	('Maria Souza', 'Gerente de Projetos', '1978-09-25', '2018-03-15', 6000.00),
	('Pedro Oliveira', 'Desenvolvedor Web', '1990-12-05', '2021-06-20', 4200.00),
	('Ana Martins', 'Analista de Recursos Humanos', '1982-03-18', '2019-08-01', 3700.00),
	('Carlos Eduardo', 'Engenheiro de Software', '1988-11-30', '2017-11-25', 5500.00);

	SELECT * FROM tb_colaboradores WHERE salario > 2000;

	INSERT INTO tb_colaboradores (nome, cargo, dataNascimento, dataAdmisao, salario) VALUES
	('João junior', 'Analista', '1995-07-15', '2020-01-10', 1500.00);
    
    SELECT * FROM tb_colaboradores WHERE salario < 2000;
    
    UPDATE tb_colaboradores SET salario = 4500.00 WHERE id = 6;
