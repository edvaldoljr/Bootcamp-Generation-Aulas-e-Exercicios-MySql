-- Active: 1719599073939@@127.0.0.1@3306
CREATE DATABASE db_curso_da_minha_vida;

USE db_curso_da_minha_vida;

CREATE TABLE tb_categorias (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    categoria VARCHAR(100) NOT NULL,
    descricao TEXT NOT NULL
);

CREATE TABLE tb_cursos (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    curso_descricao TEXT NOT NULL,
    preco DECIMAL(10,2) NOT NULL,
    duracao_horas INT NOT NULL,
    categoria_id BIGINT,
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias (categoria, descricao) VALUES
('Desenvolvimento Web', 'Cursos sobre desenvolvimento de websites e aplicações web'),
('Data Science', 'Cursos sobre ciência de dados e análise de dados'),
('Marketing Digital', 'Cursos sobre estratégias de marketing digital'),
('Design', 'Cursos sobre design gráfico e UX/UI'),
('Negócios', 'Cursos sobre gestão e administração de empresas');


INSERT INTO tb_cursos (nome, curso_descricao, preco, duracao_horas, categoria_id) VALUES
('HTML e CSS para Iniciantes', 'Curso introdutório sobre HTML e CSS', 350.00, 20, 1),
('JavaScript Avançado', 'Curso avançado sobre JavaScript', 600.00, 40, 1),
('Introdução à Data Science', 'Curso introdutório sobre Data Science', 750.00, 30, 2),
('Machine Learning com Python', 'Curso avançado sobre Machine Learning usando Python', 950.00, 50, 2),
('SEO e Marketing de Conteúdo', 'Curso sobre SEO e criação de conteúdo para web', 500.00, 25, 3),
('Design Gráfico com Photoshop', 'Curso sobre design gráfico usando Photoshop', 400.00, 35, 4),
('UX/UI Design', 'Curso sobre UX e UI Design', 700.00, 45, 4),
('Empreendedorismo e Startups', 'Curso sobre como iniciar e gerenciar startups', 800.00, 40, 5);

SELECT * FROM tb_cursos WHERE preco > 500.00;

SELECT * FROM tb_cursos WHERE preco BETWEEN 600.00 AND 1000.00;

SELECT * FROM tb_cursos WHERE nome LIKE '%J%';

SELECT nome, descricao, preco, duracao_horas, tb_categorias.categoria
FROM tb_cursos INNER JOIN tb_categorias 
ON tb_cursos.categoria_id = tb_categorias.id;

SELECT nome, descricao, preco, duracao_horas, tb_categorias.categoria
FROM tb_cursos INNER JOIN tb_categorias 
ON tb_cursos.categoria_id = tb_categorias.id
WHERE tb_categorias.categoria = "Data Science"