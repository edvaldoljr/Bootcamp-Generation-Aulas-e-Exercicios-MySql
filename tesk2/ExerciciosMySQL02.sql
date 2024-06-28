CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias(
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    tipo VARCHAR(100) NOT NULL,
    descricao TEXT NOT NULL
);

CREATE TABLE tb_pizzas(
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    preco DECIMAL(10,2) NOT NULL,
    ingredientes TEXT,
    categoria_id BIGINT,
    FOREIGN KEY(categoria_id) REFERENCES tb_categorias(id)
);

INSERT INTO tb_categorias (tipo, descricao) VALUES
('Vegetariana', 'Pizzas com ingredientes vegetarianos.'),
('Carnívora', 'Pizzas com diversos tipos de carne.'),
('Frutos do Mar', 'Pizzas com frutos do mar.'),
('Especial', 'Pizzas com ingredientes especiais e gourmet.'),
('Tradicional', 'Pizzas com ingredientes tradicionais.');

INSERT INTO tb_pizzas (nome, preco, ingredientes, categoria_id) VALUES
('Margherita', 29.90, 'Mussarela, tomate, manjericão', 5),
('Pepperoni', 34.90, 'Mussarela, pepperoni, orégano', 2),
('Vegetariana Deluxe', 32.90, 'Mussarela, tomate, pimentão, cebola, azeitona', 1),
('Camarão Especial', 44.90, 'Mussarela, camarão, alho, ervas', 3),
('Quatro Queijos', 37.90, 'Mussarela, parmesão, gorgonzola, provolone', 5),
('Calabresa', 33.90, 'Mussarela, calabresa, cebola, orégano', 2),
('Pizza Gourmet', 49.90, 'Mussarela, presunto parma, rúcula, tomate seco', 4),
('Pizza de Atum', 39.90, 'Mussarela, atum, cebola, azeitona', 3);

SELECT * FROM tb_categorias;

SELECT * FROM tb_pizzas;

SELECT * FROM tb_pizzas WHERE preco > 45.00;

SELECT * FROM tb_pizzas WHERE preco BETWEEN 45.00 AND 100.00;

SELECT * FROM tb_pizzas WHERE nome LIKE "%M%";

SELECT nome, preco, ingredientes, tb_categorias.descricao, tb_categorias.tipo
FROM tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.categoria_id = tb_categorias.id;

SELECT nome, preco, ingredientes, tb_categorias.descricao, tb_categorias.tipo
FROM tb_pizzas INNER JOIN tb_categorias
ON tb_pizzas.categoria_id = tb_categorias.id
WHERE tb_categorias.tipo = "Especial";