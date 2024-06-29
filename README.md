# **EXERCICIOS MYSQL SERVER**

## Task 01

**ATIVIDADE 01**

1. Crie um banco de dados para um serviço de RH de uma empresa, onde o sistema trabalhará com as informações dos colaboradores desta empresa. 
2. Crie uma tabela de colaboradores e determine 5 atributos relevantes dos colaboradores para se trabalhar com o serviço deste RH.
3. Insira nesta tabela no mínimo 5 dados (registros).
4. Faça um SELECT que retorne todes os colaboradores com o salário maior do que 2000.
5. Faça um SELECT que retorne todes os colaboradores com o salário menor do que 2000.
6. Ao término atualize um registro desta tabela através de uma query de atualização.
7. Salve todas as queries para cada um dos requisitos do exercício em um único script (arquivo .SQL) e coloque no seu Github pessoal, no repositório que você criou sobre Banco de dados.



**Atividade 2**

1. Crie um banco de dados para um e-commerce, onde o sistema trabalhará com as informações dos produtos deste e-commerce. 
2. Crie uma tabela de produtos e determine 5 atributos relevantes dos produtos para se trabalhar com o serviço deste e-commerce.
3. Insira nesta tabela no mínimo 8 dados (registros).
4. Faça um SELECT que retorne todes os produtos com o valor maior do que 500.
5. Faça um SELECT que retorne todes os produtos com o valor menor do que 500.
6. Ao término atualize um registro desta tabela através de uma query de atualização.
7. Salve todas as queries para cada um dos requisitos do exercício em um único script (arquivo .SQL) e coloque no seu Github pessoal, no repositório que você criou sobre Banco de dados.

 

**Atividade 3**

1. Crie um banco de dados para um registro de uma escola, onde o sistema trabalhará com as informações dos estudantes deste registro dessa escola. 
2. Crie uma tabela estudantes e utilizando a habilidade de abstração e determine 5 atributos relevantes dos estudantes para se trabalhar com o serviço dessa escola.
3. Insira nesta tabela no mínimo 8 dados (registros).
4. Faça um SELECT que retorne todes o/a(s) estudantes com a nota maior do que 7.0.
5. Faça um SELECT que retorne todes o/a(s) estudantes com a nota menor do que 7.0.
6. Ao término atualize um registro desta tabela através de uma query de atualização.
7. Salve todas as queries para cada um dos requisitos do exercício em um único script (arquivo .SQL) e coloque no seu Github pessoal, no repositório que você criou sobre Banco de dados.

## Task 02

**ATIVIDADE 01**

Crie um banco de dados para um serviço de um Games Online. O nome do Banco de dados deverá ter o seguinte nome **db_generation_game_online**. O sistema trabalhará com as informações dos personagens do jogo. O sistema trabalhará com 2 tabelas **tb_personagens** e **tb_classes**, que deverão estar relacionadas.

![img](https://lh7-us.googleusercontent.com/docsz/AD_4nXe522R6RcmFO9D-B9rrEhjlKXQZ9rRjjv9ERhg-y2G9-hEVgEwdEJC9CHlarnpRaCGBzxGa06P_j5qVDdSVH3-AV9MjYgHn9tbbGMnl3MEjwFWz4MD3IBUR228VBM3jlfeLvsXO2UHIsQqy_8KlUCptmdhhm4a6zn5--8flkQqGjmEL2jRBbSo?key=ph-QPFib29PxjAjtNWuGeA)

**Boas Práticas:**

1. Crie a tabela **tb_classes** e determine pelo menos 2 atributos, além da **Chave Primária**, relevantes para classificar os personagens do Game Online.
2. Crie a tabela **tb_personagens** e determine 4 atributos, além da **Chave Primária,** relevantes aos personagens do Game Online.
3. **Não esqueça de criar a Foreign Key da tabela tb_classes na tabela tb_personagens.**
4. Insira 5 registros na tabela tb_classes.
5. Insira 8 registros na tabela tb_personagens, preenchendo a Chave Estrangeira para criar a relação com a tabela tb_classes.
6. Faça um SELECT que retorne todes os personagens cujo poder de ataque seja maior do que 2000.
7. Faça um SELECT que retorne todes os personagens cujo poder de defesa esteja no intervalo 1000 e 2000.
8. Faça um SELECT utilizando o operador LIKE, buscando todes os personagens que possuam a letra C no atributo nome.
9. Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_personagens com os dados da tabela tb_classes.
10. Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_personagens com os dados da tabela tb_classes, onde traga apenas os personagens que pertençam a uma classe específica (Exemplo: Todes os personagens da classe dos arqueiros).
11. Salve todas as queries para cada um dos requisitos do exercício em um único script (arquivo .SQL) e coloque no seu Github pessoal, no repositório que você criou sobre Banco de dados.

**Atividade 2**

Crie um banco de dados para um serviço de uma Pizzaria. O nome do Banco de dados deverá ter o seguinte nome **db_pizzaria_legal**. O sistema trabalhará com as informações dos produtos comercializados pela empresa. O sistema trabalhará com 2 tabelas **tb_pizzas** e **tb_categorias**, que deverão estar relacionadas.

![img](https://lh7-us.googleusercontent.com/docsz/AD_4nXdH6lsaNsm7QkTqfCDZ4jLtemseQPJ-mNl-9EjBSSP9zOFsXJ3TD95Vg9U-hbw1pTKS0SXN--oPIm5qiiLDrSb9QVwQniIxRViKSGMBVbKbUS_5D8NoTsHtQ5UEUPavBp7UxPXlFnBG__AQhsrbKZ-yP6QXJ237vJLdG4U4QeEOl9o0kY3dRVg?key=ph-QPFib29PxjAjtNWuGeA)

**Boas Práticas:**

1. Crie a tabela **tb_categorias** e determine pelo menos 2 atributos, além da **Chave Primária**, relevantes para classificar as pizzas.
2. Crie a tabela **tb_pizzas** e determine 4 atributos, além da **Chave Primária,** relevantes aos produtos da pizzaria.
3. **Não esqueça de criar a Foreign Key da tabela tb_categorias na tabela tb_pizzas.**
4. Insira 5 registros na tabela tb_categorias.
5. Insira 8 registros na tabela tb_pizzas, preenchendo a Chave Estrangeira para criar a relação com a tabela tb_categorias.
6. Faça um SELECT que retorne todas as pizzas cujo valor seja maior do que R$ 45,00.
7. Faça um SELECT que retorne todas as pizzas cujo valor esteja no intervalo R$ 50,00 e R$ 100,00.
8. Faça um SELECT utilizando o operador LIKE, buscando todas as pizzas que possuam a letra M no atributo nome.
9. Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_pizzas com os dados da tabela tb_categorias.
10. Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_pizzas com os dados da tabela tb_categorias, onde traga apenas as pizzas que pertençam a uma categoria específica (Exemplo: Todas as pizzas que são doce).
11. Salve todas as queries para cada um dos requisitos do exercício em um único script (arquivo .SQL) e coloque no seu Github pessoal, no repositório que você criou sobre Banco de dados.

**Atividade 3**

Crie um banco de dados para um serviço de uma Farmácia. O nome do Banco de dados deverá ter o seguinte nome **db_farmacia_bem_estar**. O sistema trabalhará com as informações dos produtos comercializados pela empresa. O sistema trabalhará com 2 tabelas **tb_produtos** e **tb_categorias**, que deverão estar relacionadas.

![img](https://lh7-us.googleusercontent.com/docsz/AD_4nXere7bbjV7RLYZXkyKeT7yggDVCZD7ML2mToFu3_W64xU_nWRpCjQXZPwAnuKCswyLD9mCf6ez-6QA3xJtmp5OPnyuTnIRpBkryt4r-s1VxbKlaCKeXcegAFL5TvcqLzAYU4tCKPOOOpF7w_C3HSkMf8YnPU9smPy0mGcPJOdvdzY1lO5eeD7Q?key=ph-QPFib29PxjAjtNWuGeA)

**Boas Práticas:**

1. Crie a tabela **tb_categorias** e determine pelo menos 2 atributos, além da **Chave Primária**, relevantes para classificar os produtos.
2. Crie a tabela **tb_produtos** e determine 4 atributos, além da **Chave Primária,** relevantes aos produtos da farmácia.
3. **Não esqueça de criar a Foreign Key da tabela tb_categorias na tabela tb_produtos.**
4. Insira 5 registros na tabela tb_categorias.
5. Insira 8 registros na tabela tb_produtos, preenchendo a Chave Estrangeira para criar a relação com a tabela tb_categorias.
6. Faça um SELECT que retorne todes os produtos cujo valor seja maior do que R$ 50,00.
7. Faça um SELECT que retorne todes os produtos cujo valor esteja no intervalo R$ 5,00 e R$ 60,00.
8. Faça um SELECT utilizando o operador LIKE, buscando todes os produtos que possuam a letra C no atributo nome.
9. Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_produtos com os dados da tabela tb_categorias.
10. Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_produtos com os dados da tabela tb_categorias, onde traga apenas os produtos que pertençam a uma categoria específica (Exemplo: Todes os produtos que pertencem a categoria cosméticos).
11. Salve todas as queries para cada um dos requisitos do exercício em um único script (arquivo .SQL) e coloque no seu Github pessoal, no repositório que você criou sobre Banco de dados.

**Atividade 4**

Crie um banco de dados para um serviço de um Açougue ou de um Hortifruti. O nome do Banco de dados deverá ter o seguinte nome **db_cidade_das_carnes** ou **cidade_dos_vegetais**. O sistema trabalhará com as informações dos produtos comercializados pela empresa. O sistema trabalhará com 2 tabelas **tb_produtos** e **tb_categorias**, que deverão estar relacionadas.

![img](https://lh7-us.googleusercontent.com/docsz/AD_4nXere7bbjV7RLYZXkyKeT7yggDVCZD7ML2mToFu3_W64xU_nWRpCjQXZPwAnuKCswyLD9mCf6ez-6QA3xJtmp5OPnyuTnIRpBkryt4r-s1VxbKlaCKeXcegAFL5TvcqLzAYU4tCKPOOOpF7w_C3HSkMf8YnPU9smPy0mGcPJOdvdzY1lO5eeD7Q?key=ph-QPFib29PxjAjtNWuGeA)

**Boas Práticas:**

1. Crie a tabela **tb_categorias** e determine pelo menos 2 atributos, além da **Chave Primária**, relevantes para classificar os produtos.
2. Crie a tabela **tb_produtos** e determine 4 atributos, além da **Chave Primária,** relevantes aos produtos da farmácia.
3. **Não esqueça de criar a Foreign Key da tabela tb_categorias na tabela tb_produtos.**
4. Insira 5 registros na tabela tb_categorias.
5. Insira 8 registros na tabela tb_produtos, preenchendo a Chave Estrangeira para criar a relação com a tabela tb_categorias.
6. Faça um SELECT que retorne todes os produtos cujo valor seja maior do que R$ 50,00.
7. Faça um SELECT que retorne todes os produtos cujo valor esteja no intervalo R$ 50,00 e R$ 150,00.
8. Faça um SELECT utilizando o operador LIKE, buscando todes os produtos que possuam a letra C no atributo nome.
9. Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_produtos com os dados da tabela tb_categorias.
10. Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_produtos com os dados da tabela tb_categorias, onde traga apenas os produtos que pertençam a uma categoria específica (Exemplo: Todes os produtos que pertencem a categoria aves ou frutas).
11. Salve todas as queries para cada um dos requisitos do exercício em um único script (arquivo .SQL) e coloque no seu Github pessoal, no repositório que você criou sobre Banco de dados.

**Atividade 5**

Crie um banco de dados para um serviço de uma loja de Material de Construção. O nome do Banco de dados deverá ter o seguinte nome **db_construindo_vidas**. O sistema trabalhará com as informações dos produtos comercializados pela empresa. O sistema trabalhará com 2 tabelas **tb_produtos** e **tb_categorias**, que deverão estar relacionadas.

![img](https://lh7-us.googleusercontent.com/docsz/AD_4nXere7bbjV7RLYZXkyKeT7yggDVCZD7ML2mToFu3_W64xU_nWRpCjQXZPwAnuKCswyLD9mCf6ez-6QA3xJtmp5OPnyuTnIRpBkryt4r-s1VxbKlaCKeXcegAFL5TvcqLzAYU4tCKPOOOpF7w_C3HSkMf8YnPU9smPy0mGcPJOdvdzY1lO5eeD7Q?key=ph-QPFib29PxjAjtNWuGeA)

**Boas Práticas:**

1. Crie a tabela **tb_categorias** e determine pelo menos 2 atributos, além da **Chave Primária**, relevantes para classificar os produtos.
2. Crie a tabela **tb_produtos** e determine 4 atributos, além da **Chave Primária,** relevantes aos produtos da farmácia.
3. **Não esqueça de criar a Foreign Key da tabela tb_categorias na tabela tb_produtos.**
4. Insira 5 registros na tabela tb_categorias.
5. Insira 8 registros na tabela tb_produtos, preenchendo a Chave Estrangeira para criar a relação com a tabela tb_categorias.
6. Faça um SELECT que retorne todes os produtos cujo valor seja maior do que R$ 100,00.
7. Faça um SELECT que retorne todes os produtos cujo valor esteja no intervalo R$ 70,00 e R$ 150,00.
8. Faça um SELECT utilizando o operador LIKE, buscando todes os produtos que possuam a letra C no atributo nome.
9. Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_produtos com os dados da tabela tb_categorias.
10. Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_produtos com os dados da tabela tb_categorias, onde traga apenas os produtos que pertençam a uma categoria específica (Exemplo: Todes os produtos que pertencem a categoria hidráulica).
11. Salve todas as queries para cada um dos requisitos do exercício em um único script (arquivo .SQL) e coloque no seu Github pessoal, no repositório que você criou sobre Banco de dados.



**Atividade 6**

Crie um banco de dados para uma plataforma de Cursos Online (EAD). O nome do Banco de dados deverá ter o seguinte nome **db_curso_da_minha_vida**. O sistema trabalhará com as informações dos produtos comercializados pela empresa. O sistema trabalhará com 2 tabelas **tb_cursos** e **tb_categorias**, que deverão estar relacionadas.

![img](https://lh7-us.googleusercontent.com/docsz/AD_4nXeews8MexNVaREc0rXBuWU-AECB-gJ1vPiXCA0QDMuovN7LEVoI7mpOodS86tmQUPUVB-iLRJqVkHxo6HzVyxV8umOt0IlZpfqGkmluufgVpARRhw25iazVPdTp6fBzJlZC-BGLTdHyKJ4iETcYlenYiPxUsBU3EzCDegiqHI-zUcwCFH5-dA?key=ph-QPFib29PxjAjtNWuGeA)

**Boas Práticas:**

1. Crie a tabela **tb_categorias** e determine pelo menos 2 atributos, além da **Chave Primária**, relevantes para classificar os produtos.
2. Crie a tabela **tb_cursos** e determine 4 atributos, além da **Chave Primária,** relevantes aos produtos da farmácia.
3. **Não esqueça de criar a Foreign Key da tabela tb_categorias na tabela tb_cursos.**
4. Insira 5 registros na tabela tb_categorias.
5. Insira 8 registros na tabela tb_cursos, preenchendo a Chave Estrangeira para criar a relação com a tabela tb_categorias.
6. Faça um SELECT que retorne todes os cursos cujo valor seja maior do que R$ 500,00.
7. Faça um SELECT que retorne todes os cursos cujo valor esteja no intervalo R$ 600,00 e R$ 1000,00.
8. Faça um SELECT utilizando o operador LIKE, buscando todes os cursos que possuam a letra J no atributo nome.
9. Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_cursos com os dados da tabela tb_categorias.
10. Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_cursos com os dados da tabela tb_categorias, onde traga apenas os produtos que pertençam a uma categoria específica (Exemplo: Todes os cursos que pertencem a categoria Java).
11. Salve todas as queries para cada um dos requisitos do exercício em um único script (arquivo .SQL) e coloque no seu Github pessoal, no repositório que você criou sobre Banco de dados.****

# ⭐️ **Deixe um Star** ⭐️



Obrigado por conferir meu repository! É muito gratificante saber que alguém está interessado no meu trabalho. Se você gostou do que viu, deixar um star seria uma grande ajuda no meu crescimento e me motivaria a continuar fazendo projetos. O apoio de pessoas como você é fundamental para que eu possa seguir evoluindo e produzindo conteúdos cada vez melhores. Obrigado mais uma vez e espero que você possa acompanhar meus futuros projetos!