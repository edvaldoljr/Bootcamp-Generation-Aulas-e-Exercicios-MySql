CREATE DATABASE db_cidades_das_carnes;

USE db_cidades_das_carnes;

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
    FOREIGN KEY(categoria_id) REFERENCES tb_categorias(id)
);

SELECT * FROM  tb_categorias;

SELECT * FROM tb_produtos;

INSERT INTO tb_categorias (categoria, descricao) VALUES
('Carnes Bovinas', 'Carnes provenientes de bovinos'),
('Carnes Suínas', 'Carnes provenientes de suínos'),
('Aves', 'Carnes de aves como frango e peru'),
('Peixes', 'Diversos tipos de peixes frescos'),
('Vegetais', 'Diversos tipos de vegetais frescos'),
('Frutas', 'Diversas frutas frescas'),
('Laticínios', 'Produtos lácteos como queijo e leite'),
('Frios', 'Embutidos e frios diversos');

INSERT INTO tb_produtos (nome, preco, quantidade_em_estoque, categoria_id, data_de_validade) VALUES
('Picanha Premium', 89.90, 50, 1, '2024-08-31'),
('Costela de Porco Temperada', 59.99, 30, 2, '2024-07-30'),
('Peito de Frango Desossado', 29.50, 80, 3, '2024-08-15'),
('Salmão Fresco', 75.00, 20, 4, '2024-07-31'),
('Tomate', 3.50, 100, 5, NULL),
('Maçã Gala', 2.99, 150, 6, NULL),
('Queijo Minas Frescal', 15.80, 40, 7, '2024-08-10'),
('Presunto Cozido', 9.99, 60, 8, '2024-07-25');


SELECT * FROM tb_produtos WHERE preco > 50.00;

SELECT * FROM tb_produtos WHERE preco < 50.00;

SELECT *  FROM tb_produtos WHERE preco BETWEEN 50.00 AND 150.00;

SELECT * FROM tb_produtos WHERE nome LIKE "%C%";

SELECT * FROM tb_produtos WHERE nome LIKE "C%";

SELECT * FROM tb_produtos WHERE nome LIKE "%a";

SELECT nome, preco, quantidade_em_estoque, data_de_validade, tb_categorias.categoria, tb_categorias.descricao
FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.categoria_id = tb_categorias.id;

SELECT nome, preco, quantidade_em_estoque, data_de_validade, tb_categorias.categoria, tb_categorias.descricao
FROM tb_produtos INNER JOIN tb_categorias
ON tb_produtos.categoria_id = tb_categorias.id
WHERE tb_categorias.categoria = "Aves";