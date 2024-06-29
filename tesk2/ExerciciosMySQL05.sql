-- Active: 1719599073939@@127.0.0.1@3306
CREATE DATABASE db_construindo_vidas;

USE db_construindo_vidas;

CREATE TABLE tb_categorias (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    categoria VARCHAR(100) NOT NULL,
    descricao TEXT NOT NULL
);

CREATE TABLE tb_produtos (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    preco DECIMAL(10,2) NOT NULL,
    quantidade_em_estoque INT NOT NULL,
    categoria_id BIGINT,
    data_de_validade DATE,
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias (categoria, descricao) VALUES
('Ferramentas', 'Ferramentas diversas para construção'),
('Materiais Elétricos', 'Fios, cabos e materiais elétricos'),
('Hidráulica', 'Canos, conexões e materiais hidráulicos'),
('Pintura', 'Tintas e acessórios para pintura'),
('Cimento e Argamassa', 'Cimento, argamassa e derivados');

INSERT INTO tb_produtos (nome, preco, quantidade_em_estoque, categoria_id, data_de_validade) VALUES
('Martelo', 45.90, 100, 1, NULL),
('Chave de Fenda', 25.50, 200, 1, NULL),
('Fio Elétrico 2.5mm', 120.00, 50, 2, NULL),
('Lâmpada LED', 30.00, 150, 2, '2025-12-31'),
('Canos PVC 100mm', 85.75, 80, 3, NULL),
('Conexões PVC', 15.20, 500, 3, NULL),
('Tinta Acrílica 18L', 250.00, 40, 4, '2025-06-30'),
('Cimento CP II 50kg', 32.00, 300, 5, NULL);

SELECT * FROM tb_produtos WHERE preco > 100.00;

SELECT * FROM tb_produtos WHERE preco BETWEEN 70.00 AND 150.00;

SELECT * FROM tb_produtos WHERE nome LIKE '%C%';

SELECT nome, preco, quantidade_em_estoque, data_de_validade, tb_categorias.categoria, tb_categorias.descricao
FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.categoria_id = tb_categorias.id;

SELECT nome, preco, quantidade_em_estoque, data_de_validade, tb_categorias.categoria, tb_categorias.descricao
FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.categoria_id = tb_categorias.id
WHERE tb_categorias.categoria = "Hidráulica";