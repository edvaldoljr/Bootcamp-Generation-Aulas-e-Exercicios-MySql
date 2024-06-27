CREATE DATABASE db_mundotech;

USE db_mundotech;

CREATE TABLE tb_produtos (
	id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    categoria VARCHAR(100) NOT NULL,
    preco DECIMAL(10,2) NOT NULL,
    estoque INT NOT NULL,
    PRIMARY KEY(id));
    
SELECT * FROM tb_produtos;

-- Inserção dos registros
INSERT INTO tb_produtos (nome, categoria, preco, estoque) VALUES
('Notebook Dell Inspiron', 'Eletrônicos', 2999.99, 50),
('Smartphone Samsung Galaxy S21', 'Celulares', 4999.99, 30),
('Monitor LG Ultrawide', 'Periféricos', 1499.99, 20),
('Teclado Mecânico HyperX', 'Acessórios', 499.99, 100),
('Mouse Gamer Logitech', 'Acessórios', 249.99, 75),
('Fone de Ouvido JBL', 'Acessórios', 199.99, 200),
('Tablet Apple iPad', 'Eletrônicos', 3299.99, 15),
('Câmera DSLR Canon EOS', 'Câmeras', 5499.99, 10),
('Impressora HP LaserJet', 'Periféricos', 899.99, 25),
('Notebook Acer Aspire', 'Eletrônicos', 2699.99, 40),
('Smart TV Samsung 50"', 'Eletrônicos', 3999.99, 18),
('Caixa de Som Bluetooth Sony', 'Acessórios', 299.99, 150),
('SSD Kingston 480GB', 'Armazenamento', 349.99, 60),
('Memória RAM Corsair 16GB', 'Componentes', 499.99, 70),
('Placa de Vídeo NVIDIA RTX 3070', 'Componentes', 3499.99, 12),
('Mouse Pad Gamer', 'Acessórios', 49.99, 300),
('Cadeira Gamer DXRacer', 'Móveis', 999.99, 20),
('Roteador TP-Link Archer', 'Redes', 199.99, 80),
('Webcam Logitech C920', 'Periféricos', 449.99, 35),
('Carregador Portátil Anker', 'Acessórios', 159.99, 120),
('Headset Gamer Razer', 'Acessórios', 399.99, 45),
('Monitor Samsung Curvo 27"', 'Periféricos', 1299.99, 22),
('Teclado Bluetooth Logitech', 'Periféricos', 199.99, 55),
('Projetor Epson', 'Eletrônicos', 2499.99, 14),
('Suporte para Notebook', 'Acessórios', 79.99, 90);

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE preco > 500;

SELECT * FROM tb_produtos WHERE preco < 500;

UPDATE tb_produtos SET preco = 400.00 WHERE id = 4;

SELECT * FROM tb_produtos WHERE id = 4;
    