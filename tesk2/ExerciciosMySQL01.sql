-- Criando DATABASE
CREATE DATABASE db_generation_game_online;

-- Utilizando o banco
USE db_generation_game_online;

-- Crie a tabela tb_classes e determine pelo menos 2 atributos, além da Chave Primária, 
-- relevantes para classificar os personagens do Game Online.
CREATE TABLE tb_classes(
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    categoria VARCHAR(255) NOT NULL,
    descricao VARCHAR(255) NOT NULL
);

-- Crie a tabela tb_personagens e determine 4 atributos, além da Chave Primária, 
-- relevantes aos personagens do Game Online.
CREATE TABLE tb_personagens(
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    poder_ataque BIGINT,
    poder_defesa BIGINT,
    habilidades TEXT,
    classe_id BIGINT,
    FOREIGN KEY(classe_id) REFERENCES tb_classes(id)
);

-- Insira 5 registros na tabela tb_classes.
INSERT INTO tb_classes (categoria, descricao) VALUES
('Guerreiro', 'Especialista em combate corpo a corpo, com alta resistência e força.'),
('Mago', 'Usuário de magia, capaz de conjurar feitiços poderosos e controlar os elementos.'),
('Arqueiro', 'Perito no uso do arco e flecha, com alta precisão e agilidade.'),
('Ladino', 'Mestre da furtividade e das habilidades de combate à distância e corpo a corpo.'),
('Paladino', 'Guerreiro sagrado, combina habilidades de combate com poderes divinos para curar e proteger.');

-- Insira 8 registros na tabela tb_personagens, preenchendo a Chave Estrangeira para criar a relação com a tabela tb_classes.
INSERT INTO tb_personagens (nome, poder_ataque, poder_defesa, habilidades, classe_id) VALUES
('Arthas', 1500, 2000, 'Golpe Poderoso, Defesa Implacável', 1),
('Jaina', 1800, 1000, 'Bola de Fogo, Tempestade de Gelo', 2),
('Legolas', 1400, 1200, 'Tiro Preciso, Flecha Explosiva', 3),
('Valeera', 1060, 1010, 'Ataque Furtivo, Veneno Mortal', 4),
('Uther', 1300, 1900, 'Cura Divina, Escudo Sagrado', 5),
('Thrall', 1700, 1500, 'Tremor de Terra, Raio', 2),
('Sylvanas', 2055, 2115, 'Flecha Sombria, Controlar Mente', 3),
('Anduin', 2145, 2185, 'Cura em Massa, Luz da Esperança', 5);

-- Faça um SELECT que retorne todes os personagens cujo poder de ataque seja maior do que 2000.
SELECT * FROM tb_personagens WHERE poder_ataque > 2000;

-- Faça um SELECT que retorne todes os personagens cujo poder de defesa esteja no intervalo 1000 e 2000.
SELECT * FROM tb_personagens WHERE poder_defesa IN (1000, 2000);

-- Faça um SELECT utilizando o operador LIKE, 
-- buscando todes os personagens que possuam a letra "C" no atributo nome.
SELECT * FROM tb_personagens WHERE nome LIKE "%C%";

-- Buscando personagens com a letra "a"
SELECT * FROM tb_personagens WHERE nome LIKE "%A%";

-- Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela 
-- tb_personagens com os dados da tabela tb_classes.
SELECT nome, poder_ataque, poder_defesa, habilidades, tb_classes.descricao, tb_classes.categoria
FROM tb_personagens INNER JOIN tb_classes
ON tb_personagens.classe_id = tb_classes.id;

-- Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_personagens com os dados da tabela tb_classes, onde traga apenas os personagens que pertençam a uma classe específica 
-- (Exemplo: Todes os personagens da classe dos arqueiros).
SELECT nome, poder_ataque, poder_defesa, habilidades, tb_classes.descricao, tb_classes.categoria
FROM tb_personagens INNER JOIN tb_classes
ON tb_personagens.classe_id = tb_classes.id
WHERE tb_classes.categoria = "Arqueiro";
