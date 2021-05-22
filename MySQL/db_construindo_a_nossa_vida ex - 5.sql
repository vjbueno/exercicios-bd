-- Criando base de dados
CREATE DATABASE db_construindo_a_nossa_vida;

-- Utilizando a base de dados:
USE db_construindo_a_nossa_vida;

-- Criando a tabela categoria:
CREATE TABLE tb_categoria(
id_categoria INT NOT NULL AUTO_INCREMENT,
nome_categoria VARCHAR(255),
tamanho VARCHAR(255),
PRIMARY KEY(id_categoria)
);

-- Criando a tabela produtos:
CREATE TABLE tb_produtos(
id_produto INT NOT NULL AUTO_INCREMENT,
nome_produto VARCHAR(255),
marca VARCHAR(255),
tipo_do_produto VARCHAR(255),
preco DECIMAL(10,2),
fk_id_categoria INT,
PRIMARY KEY(id_produto),
FOREIGN KEY(fk_id_categoria) REFERENCES tb_categoria(id_categoria)
);

-- Visualizando estrura da tabela categoria:
SELECT * FROM tb_categoria;

-- Visualizando estrutura da tabela produtos:
SELECT * FROM tb_produtos;

-- Inserindo dados na tabela categoria:
INSERT INTO tb_categoria(nome_categoria, tamanho)
VALUES
("Decoração", "Grande"),
("Ferramentas", "Pequeno"),
("Janelas", "Medio"),
("Iluminação", "Pequeno"),
("Material de construção", "Medio");

-- Visualizando dados inclusos na tabela categoria:
SELECT * FROM tb_categoria;

INSERT INTO tb_produtos(nome_produto, marca, tipo_do_produto, preco, fk_id_categoria)
VALUES
("Espelho para sala de jantar", "Inspire", "Usado", 50.90, 1),
("Cimento", "Votoran", "Novo", 2.99, 5),
("Abajur de mesa", "Inspire", "Novo", 28.90, 4),
("Furadeira", "Bosch", "Usado", 219.90, 2),
("Janela de correr", "Riobras", "Novo", 763.99, 3),
("Escova de aço", "Vonder", "Usado", 9.39, 2),
("Vazo de madeira vazado", "Massol", "Usado", 38.90, 1),
("Painel de led", "Inspire", "Novo", 78.90, 4);

-- Visualizando dados inclusos na tabela produtos:
SELECT * FROM tb_produtos;

-- Realizando consulta na tabela produtos dos produtos com preco maior que 50
SELECT nome_produto, preco FROM tb_produtos WHERE preco > 50;  

-- Realizando consulta na tabela produtos dos produtos que estão com preco entre 3 e 60 reais:
SELECT nome_produto, preco FROM tb_produtos WHERE preco BETWEEN 3 AND 60;  

-- Realizando consulta na tabela produtos dos produtos com a letra C:
SELECT * FROM tb_produtos
WHERE nome_produto LIKE "C%";

-- utilizando inner join para realizar uma consulta que una em sua apresentação os dados da tabela produtos e da tabela categoria
SELECT * FROM  tb_produtos
INNER JOIN tb_categoria
ON tb_produtos.fk_id_categoria = tb_categoria.id_categoria;

-- utilizando inner join para apresentar produtos da categoria "Decoração" (dado ligado a tabela categoria):
SELECT * FROM  tb_produtos
INNER JOIN tb_categoria
ON tb_produtos.fk_id_categoria = tb_categoria.id_categoria
WHERE tb_categoria.nome_categoria = "Decoração";




