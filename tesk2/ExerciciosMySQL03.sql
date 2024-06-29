-- Active: 1719599073939@@127.0.0.1@3306
CREATE DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    marca VARCHAR(100) NOT NULL,
    descricao TEXT NOT NULL,
     categoria VARCHAR(100) NOT NULL
);

CREATE TABLE tb_produtos (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    preco DECIMAL(10,2) NOT NULL,
    quantidade_em_estoque INT NOT NULL,
    categoria_id BIGINT,
    data_de_validade DATE,
    FOREIGN KEY(categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias (marca, descricao, categoria) VALUES 
('Marca A', 'Produtos de alta qualidade', 'Cosméticos'),
('Marca B', 'Medicamentos eficazes', 'Medicamentos'),
('Marca C', 'Suplementos para saúde', 'Suplementos'),
('Marca D', 'Produtos de cuidado pessoal', 'Cuidados Pessoais'),
('Marca E', 'Alimentos saudáveis', 'Alimentos'),
('Marca F', 'Produtos para bebês', 'Bebês'),
('Marca G', 'Equipamentos médicos', 'Equipamentos Médicos'),
('Marca H', 'Produtos de higiene', 'Higiene');

INSERT INTO tb_produtos (nome, preco, quantidade_em_estoque, categoria_id, data_de_validade) VALUES 
('Creme Hidratante', 15.00, 100, 1, '2025-12-31'),
('Analgésico', 25.75, 200, 2, '2024-11-30'),
('Vitamina C', 30.50, 150, 3, '2023-10-29'),
('Shampoo', 12.00, 80, 4, '2025-01-01'),
('Biscoito Integral', 5.99, 50, 5, '2026-05-15'),
('Fralda Descartável', 40.00, 120, 6, '2024-08-20'),
('Termômetro Digital', 50.00, 90, 7, '2025-07-22'),
('Sabonete Líquido', 10.00, 75, 8, '2023-09-10');

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE preco > 40.00;

SELECT * FROM tb_produtos WHERE preco BETWEEN 5.00 AND 60.00;

SELECT * FROM tb_produtos WHERE nome LIKE "%C%";

SELECT nome, preco, quantidade_em_estoque, data_de_validade, tb_categorias.marca, tb_categorias.descricao
FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.categoria_id = tb_categorias.id;

SELECT nome, preco, quantidade_em_estoque, data_de_validade, tb_categorias.marca, tb_categorias.descricao
FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.categoria_id = tb_categorias.id
WHERE tb_categorias.categoria = "Cosméticos";