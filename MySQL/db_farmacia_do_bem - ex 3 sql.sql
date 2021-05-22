-- criando base de dados:
CREATE DATABASE db_farmacia_do_bem;

-- utilizando a base de dados db_farmacia_do_bem: 
USE db_farmacia_do_bem;

-- criando a tabela produtos:
CREATE TABLE tb_produtos(
id_produto INT NOT NULL AUTO_INCREMENT,
nome_produto VARCHAR(255) NOT NULL,
preco DECIMAL(10,2),
marca VARCHAR(255),
dt_validad DATE,
PRIMARY KEY (id_produto)
);

-- visualizando a estrutura da tabela produtos:
SELECT * FROM tb_produtos;

-- alterando o nome da coluna dt_validad para dt_validade:
ALTER TABLE tb_produtos
CHANGE dt_validad dt_validade DATE;

-- visualizando novamente estrutura da tabela produtos após correção da coluna:
SELECT * FROM tb_produtos;

-- inserindo os dados dentro da tabela produtos:
INSERT INTO tb_produtos(nome_produto, preco, marca, dt_validade)
VALUES
("Aceviton 1g sabor laranja", 10.79, "Cimed", "2022-08-29"), -- categoria vitamina
("Aletam 40mg com 30 capsulas", 89.90, "Abbott", "2021-12-06"), -- categoria vitamina
("Centrum vitaminico 150 comprimidos", 209.10, "Centrum Pfizer", "2023-06-22"), -- categoria vitamina

("Maquiagem", 80.90, "Nivea", "2022-05-09"), -- categoria beleza
("Oleo de coco", 32.90, "Copra", "2025-09-06"), -- categoria beleza
("Tio Nacho Clareador de cabelo", 30.60, "Tio Nacho Genomma", "2026-08-04"), -- categoria beleza

("Creme dental", 12.80, "Colgate", "2023-04-29"), -- categoria Higiene bucal
("Creme fixador de dentarura", 18.90, "Corega", "2022-06-08"), -- categoria Higiene bucal
("Enxaguante bucal 5 litros", 40.60, "Colgate", "2029-03-25"), -- categoria Higiene bucal

("Algodão", 5.99, "Zig Zag", "2026-05-26"), -- categoria primeiros socorros
("Antisséptico 30ml", 17.79,"Merthiolate", "2023-06-09"), -- categoria primeiros socorros
("Curativo para ferimentos 10 unidades", 6.99, "Band aid", "2025-09-03"); -- categoria primeiros socorros

 -- Visualizando a tabela produtos após a inclusão dos dados:
SELECT * FROM tb_produtos;

-- Criando a tabela categoria:
CREATE TABLE tb_categoria(
id_categoria INT NOT NULL AUTO_INCREMENT,
nome_categoria VARCHAR(255),
fk_id_produto INT NOT NULL,
PRIMARY KEY (id_categoria),
FOREIGN KEY (fk_id_produto) REFERENCES tb_produtos(id_produto)
);

-- Visualizando a estrutura da tabela categoria:
SELECT * FROM tb_categoria;

-- inserindo os dados na tabela produto:
INSERT INTO tb_categoria(nome_categoria, fk_id_produto)
VALUES
("Higiene Bucal", 7),
("Beleza", 4),
("Primeiros socorros", 12),
("Vitamina", 2),

("Beleza", 5),
("Primeiros socorros", 10),
("Vitamina", 1),
("Higiene Bucal", 8),

("Vitamina", 3),
("Primeiros socorros", 11),
("Beleza", 6),
("Higiene bucal", 9);

-- visualizando ambas tabelas após a inclusão dos dados(uma de cada vez):
SELECT * FROM tb_categoria;
select * FROM tb_produtos;

-- realizando consulta na tabela produtos dos produtos com preco maior que 50
SELECT nome_produto, preco FROM tb_produtos WHERE preco > 50;

-- realizando consulta na tabela produtos dos produtos que estão com preco entre 3 e 60 reais:
SELECT nome_produto, preco FROM tb_produtos WHERE preco BETWEEN 3 AND 60;

-- Realizando consulta na tabela produtos dos produtos que começam com a letra A:
SELECT * FROM tb_produtos
WHERE nome_produto LIKE "A%";

-- utilizando inner join para realizar uma consulta que una em sua apresentação os dados tabela produtos e da tabela categoria
SELECT * FROM  tb_produtos
INNER JOIN tb_categoria
ON tb_produtos.id_produto = tb_categoria.fk_id_produto;


-- utilizando inner join para apresentar produtos da categoria "Higiene bucal" (dado ligado a tabela categoria):
SELECT * FROM  tb_produtos
INNER JOIN tb_categoria
ON tb_produtos.id_produto = tb_categoria.fk_id_produto
WHERE tb_categoria.nome_categoria = "Higiene bucal";
