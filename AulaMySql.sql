CREATE DATABASE db_quitanda;

-- comando para uilização do data base
USE db_quitanda;

CREATE TABLE tb_produtos (id BIGINT AUTO_INCREMENT, 
nome varchar(255) NOT NULL, 
quantidade INT,
datavalidade DATE,
preco DECIMAL(6,2) NOT NULL,
primary key(id));

SELECT * FROM tb_produtos;

-- Inserir produtos na categoria "Verduras"
INSERT INTO tb_produtos (nome, quantidade, datavalidade, preco) VALUES ('Alface', 100, '2024-07-10', 2.50);
INSERT INTO tb_produtos (nome, quantidade, datavalidade, preco) VALUES ('Couve', 150, '2024-07-15', 3.00);
INSERT INTO tb_produtos (nome, quantidade, datavalidade, preco) VALUES ('Espinafre', 120, '2024-07-12', 2.80);
INSERT INTO tb_produtos (nome, quantidade, datavalidade, preco) VALUES ('Acelga', 110, '2024-07-18', 2.90);
INSERT INTO tb_produtos (nome, quantidade, datavalidade, preco) VALUES ('Rúcula', 130, '2024-07-14', 3.20);

-- Inserir produtos na categoria "Legumes"
INSERT INTO tb_produtos (nome, quantidade, datavalidade, preco) VALUES ('Cenoura', 200, '2024-08-10', 1.80);
INSERT INTO tb_produtos (nome, quantidade, datavalidade, preco) VALUES ('Batata', 250, '2024-08-15', 1.50);
INSERT INTO tb_produtos (nome, quantidade, datavalidade, preco) VALUES ('Abobrinha', 180, '2024-08-12', 2.00);
INSERT INTO tb_produtos (nome, quantidade, datavalidade, preco) VALUES ('Beterraba', 170, '2024-08-20', 1.70);
INSERT INTO tb_produtos (nome, quantidade, datavalidade, preco) VALUES ('Chuchu', 160, '2024-08-22', 1.60);

-- Inserir produtos na categoria "Temperos"
INSERT INTO tb_produtos (nome, quantidade, datavalidade, preco) VALUES ('Manjericão', 80, '2024-09-10', 1.00);
INSERT INTO tb_produtos (nome, quantidade, datavalidade, preco) VALUES ('Coentro', 90, '2024-09-15', 1.20);
INSERT INTO tb_produtos (nome, quantidade, datavalidade, preco) VALUES ('Salsinha', 85, '2024-09-12', 1.10);
INSERT INTO tb_produtos (nome, quantidade, datavalidade, preco) VALUES ('Cebolinha', 95, '2024-09-18', 1.30);
INSERT INTO tb_produtos (nome, quantidade, datavalidade, preco) VALUES ('Alecrim', 75, '2024-09-14', 1.40);

-- Inserir produtos na categoria "Ovos"
INSERT INTO tb_produtos (nome, quantidade, datavalidade, preco) VALUES ('Ovos caipira', 500, '2024-10-10', 0.30);
INSERT INTO tb_produtos (nome, quantidade, datavalidade, preco) VALUES ('Ovos orgânicos', 300, '2024-10-15', 0.40);
INSERT INTO tb_produtos (nome, quantidade, datavalidade, preco) VALUES ('Ovos brancos', 400, '2024-10-12', 0.25);
INSERT INTO tb_produtos (nome, quantidade, datavalidade, preco) VALUES ('Ovos vermelhos', 350, '2024-10-18', 0.35);
INSERT INTO tb_produtos (nome, quantidade, datavalidade, preco) VALUES ('Ovos de codorna', 600, '2024-10-20', 0.20);

-- Inserir produtos na categoria "Outros"
INSERT INTO tb_produtos (nome, quantidade, datavalidade, preco) VALUES ('Mel', 200, '2025-01-10', 15.00);
INSERT INTO tb_produtos (nome, quantidade, datavalidade, preco) VALUES ('Geleia', 180, '2025-01-15', 8.50);
INSERT INTO tb_produtos (nome, quantidade, datavalidade, preco) VALUES ('Azeite', 150, '2025-01-12', 20.00);
INSERT INTO tb_produtos (nome, quantidade, datavalidade, preco) VALUES ('Vinagre', 170, '2025-01-18', 7.00);
INSERT INTO tb_produtos (nome, quantidade, datavalidade, preco) VALUES ('Molho de soja', 160, '2025-01-20', 5.50);


SELECT * FROM tb_produtos;

CREATE TABLE tb_categoriaS(
	id BIGINT AUTO_INCREMENT PRIMARY KEY,
	descricao VARCHAR(255) NOT NULL);

SELECT * FROM tb_categorias;

INSERT INTO tb_categorias (descricao)
VALUES ("Frutas");

INSERT INTO tb_categorias (descricao)
VALUES ("Verduras");

INSERT INTO tb_categorias (descricao)
VALUES ("Legumes");

INSERT INTO tb_categorias (descricao)
VALUES ("Temperos");

INSERT INTO tb_categorias (descricao)
VALUES ("Ovos");

INSERT INTO tb_categorias (descricao)
VALUES ('Outros');

# Criando coluna para o atributo que será a Chave Estrangeira da Tabela tb_categoria
ALTER TABLE tb_produtos ADD categoriaid BIGINT;

SELECT * FROM tb_produtos;

#Criando relacionamento entre as tabelas
ALTER TABLE tb_produtos ADD CONSTRAINT fk_produtos_categorias
FOREIGN KEY (categoriaid) REFERENCES tb_categorias(id);

UPDATE tb_produtos SET categoriaid = 1 WHERE id = 1;
UPDATE tb_produtos SET categoriaid = 1 WHERE id = 2;
UPDATE tb_produtos SET categoriaid = 1 WHERE id = 3;
UPDATE tb_produtos SET categoriaid = 1 WHERE id = 4;
UPDATE tb_produtos SET categoriaid = 1 WHERE id = 5;
UPDATE tb_produtos SET categoriaid = 1 WHERE id = 6;
UPDATE tb_produtos SET categoriaid = 1 WHERE id = 7;
UPDATE tb_produtos SET categoriaid = 1 WHERE id = 8;
UPDATE tb_produtos SET categoriaid = 1 WHERE id = 9;
UPDATE tb_produtos SET categoriaid = 1 WHERE id = 10;
UPDATE tb_produtos SET categoriaid = 1 WHERE id = 11;
UPDATE tb_produtos SET categoriaid = 1 WHERE id = 12;
UPDATE tb_produtos SET categoriaid = 1 WHERE id = 13;
UPDATE tb_produtos SET categoriaid = 1 WHERE id = 14;
UPDATE tb_produtos SET categoriaid = 1 WHERE id = 15;
UPDATE tb_produtos SET categoriaid = 1 WHERE id = 16;
UPDATE tb_produtos SET categoriaid = 1 WHERE id = 17;
UPDATE tb_produtos SET categoriaid = 1 WHERE id = 18;
UPDATE tb_produtos SET categoriaid = 1 WHERE id = 19;
UPDATE tb_produtos SET categoriaid = 1 WHERE id = 20;
UPDATE tb_produtos SET categoriaid = 1 WHERE id = 21;
UPDATE tb_produtos SET categoriaid = 1 WHERE id = 22;
UPDATE tb_produtos SET categoriaid = 1 WHERE id = 23;
UPDATE tb_produtos SET categoriaid = 1 WHERE id = 24;
UPDATE tb_produtos SET categoriaid = 1 WHERE id = 25;
UPDATE tb_produtos SET categoriaid = 1 WHERE id = 26;

SELECT * FROM tb_produtos;
SELECT * FROM tb_categorias;

-- Inserir produtos na categoria "Verduras"
INSERT INTO tb_produtos (descricao) VALUES ('Alface');
INSERT INTO tb_produtos (descricao) VALUES ('Couve');
INSERT INTO tb_produtos (descricao) VALUES ('Espinafre');
INSERT INTO tb_produtos (descricao) VALUES ('Acelga');
INSERT INTO tb_produtos (descricao) VALUES ('Rúcula');

-- Inserir produtos na categoria "Legumes"
INSERT INTO tb_produtos (descricao) VALUES ('Cenoura');
INSERT INTO tb_produtos (descricao) VALUES ('Batata');
INSERT INTO tb_produtos (descricao) VALUES ('Abobrinha');
INSERT INTO tb_produtos (descricao) VALUES ('Beterraba');
INSERT INTO tb_produtos (descricao) VALUES ('Chuchu');

-- Inserir produtos na categoria "Temperos"
INSERT INTO tb_produtos (descricao) VALUES ('Manjericão');
INSERT INTO tb_produtos (descricao) VALUES ('Coentro');
INSERT INTO tb_produtos (descricao) VALUES ('Salsinha');
INSERT INTO tb_produtos (descricao) VALUES ('Cebolinha');
INSERT INTO tb_produtos (descricao) VALUES ('Alecrim');

-- Inserir produtos na categoria "Ovos"
INSERT INTO tb_produtos (descricao) VALUES ('Ovos caipira');
INSERT INTO tb_produtos (descricao) VALUES ('Ovos orgânicos');
INSERT INTO tb_produtos (descricao) VALUES ('Ovos brancos');
INSERT INTO tb_produtos (descricao) VALUES ('Ovos vermelhos');
INSERT INTO tb_produtos (descricao) VALUES ('Ovos de codorna');

-- Inserir produtos na categoria "Outros"
INSERT INTO tb_produtos (descricao) VALUES ('Mel');
INSERT INTO tb_produtos (descricao) VALUES ('Geleia');
INSERT INTO tb_produtos (descricao) VALUES ('Azeite');
INSERT INTO tb_produtos (descricao) VALUES ('Vinagre');
INSERT INTO tb_produtos (descricao) VALUES ('Molho de soja');

-- Atualizar categoria dos produtos para "Verduras" (categoriaid = 1)
UPDATE tb_produtos SET categoriaid = 2 WHERE id = 27;
UPDATE tb_produtos SET categoriaid = 1 WHERE id = 28;
UPDATE tb_produtos SET categoriaid = 2 WHERE id = 29;
UPDATE tb_produtos SET categoriaid = 2 WHERE id = 30;
UPDATE tb_produtos SET categoriaid = 2 WHERE id = 31;

-- Atualizar categoria dos produtos para "Legumes" (categoriaid = 2)
UPDATE tb_produtos SET categoriaid = 3 WHERE id = 32;
UPDATE tb_produtos SET categoriaid = 3 WHERE id = 33;
UPDATE tb_produtos SET categoriaid = 3 WHERE id = 34;
UPDATE tb_produtos SET categoriaid = 3 WHERE id = 35;
UPDATE tb_produtos SET categoriaid = 3 WHERE id = 36;

-- Atualizar categoria dos produtos para "Temperos" (categoriaid = 3)
UPDATE tb_produtos SET categoriaid = 4 WHERE id = 37;
UPDATE tb_produtos SET categoriaid = 4 WHERE id = 38;
UPDATE tb_produtos SET categoriaid = 4 WHERE id = 39;
UPDATE tb_produtos SET categoriaid = 4 WHERE id = 40;
UPDATE tb_produtos SET categoriaid = 4 WHERE id = 41;

-- Atualizar categoria dos produtos para "Ovos" (categoriaid = 4)
UPDATE tb_produtos SET categoriaid = 5 WHERE id = 42;
UPDATE tb_produtos SET categoriaid = 5 WHERE id = 42;
UPDATE tb_produtos SET categoriaid = 5 WHERE id = 43;
UPDATE tb_produtos SET categoriaid = 5 WHERE id = 44;
UPDATE tb_produtos SET categoriaid = 5 WHERE id = 45;

-- Atualizar categoria dos produtos para "Outros" (categoriaid = 5)
UPDATE tb_produtos SET categoriaid = 6 WHERE id = 46;
UPDATE tb_produtos SET categoriaid = 6 WHERE id = 47;
UPDATE tb_produtos SET categoriaid = 6 WHERE id = 48;
UPDATE tb_produtos SET categoriaid = 6 WHERE id = 49;
UPDATE tb_produtos SET categoriaid = 6 WHERE id = 50;
UPDATE tb_produtos SET categoriaid = 6 WHERE id = 51;

SELECT * FROM tb_produtos;

-- Ordenando em forma Descrescente 
SELECT * FROM tb_produtos ORDER BY nome DESC;

-- Ordenando nossa coluna nome em ordem alfabetica
SELECT * FROM tb_produtos ORDER BY nome ASC;

-- prucurando preços aentre os valores setados
#*IN (5.00, 10.00, 15.00) é uma condição que especifica que queremos apenas os 
-- registros onde o valor da coluna preco está presente na lista de valores especificados (5.00, 10.00 ou 15.00).
SELECT * FROM tb_produtos WHERE preco IN (5.00, 10.00, 15.00);

--  Operador logico AND 
-- Exemplo: queremos retornar todos os produtos que tem o seu preço ENTRE R$ 5,00 e R$ 15,00.
-- Nesse caso executamos a seguinte query:
-- WHERE é usado para filtrar os resultados com base em uma condição específica.
#* BETWEEN 5.00 AND 15.00 é uma condição que especifica que
-- queremos apenas os registros onde o valor da coluna preco está entre 5.00 e 15.00 (inclusive).*#
SELECT * FROM tb_produtos WHERE preco BETWEEN 5.00 AND 15.00;

-- WHERE nome LIKE "%ra%":
-- LIKE "%ra%" é um operador utilizado com WHERE para buscar registros onde o conteúdo da coluna nome 
-- contém a sequência de caracteres "ra" em qualquer posição (inicio, meio ou fim do texto).
SELECT * FROM tb_produtos WHERE nome LIKE "%ra%";

-- O conteúdo procurado deve terminar com o texto digitado (texto)
SELECT * FROM tb_produtos WHERE nome LIKE "%ra";

-- O conteúdo procurado deve começar com o texto digitado (texto)
SELECT * FROM tb_produtos WHERE nome LIKE "ba%";

SELECT * FROM tb_produtos;

-- Case Insensitive (CI) é o nome dado para o Banco de dados que não diferencia letras maiúsculas de letras minúsculas.
SELECT @@collation_database;

-- Operador	Descrição
-- COUNT(atributo)	Conta quantas linhas não nulas um atributo possui. COUNT(*) indica o número de linhas da tabela.
-- AVG(atributo)	Calcula a média dos valores de um atributo.
-- SUM(atributo)	Calcula a soma dos valores de um atributo.
-- MIN(atributo)	Encontra o menor valor nas linhas de um atributo.

-- Calculando a media de todos os produtos
SELECT AVG(preco) AS media FROM tb_produtos;

-- Calculando a soma de todos os valores 
SELECT SUM(preco) AS soma FROM tb_produtos;

-- Encontrando o menor valor 
SELECT MIN(preco) AS mininmo FROM tb_produtos;

-- tb_categorias.descricao: Uma coluna da tabela tb_categorias que armazena a descrição da categoria do produto.
-- LEFT JOIN: Esta cláusula é usada para combinar registros de duas tabelas. 
-- FROM: Especifica a tabela principal da qual você está selecionando dados.
-- tb_categorias: A tabela que está sendo juntada com tb_produtos.
-- ON tb_produtos.categoriaid = tb_categorias.id: Especifica a condição de junção. 
-- Neste caso, a junção é baseada na correspondência entre categoriaid na tabela tb_produtos e id na tabela tb_categorias.
SELECT nome, preco, quantidade, tb_categorias.descricao
FROM tb_produtos LEFT JOIN tb_categorias
ON tb_produtos.categoriaid = tb_categorias.id;











