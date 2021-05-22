-- Criando a base de dados:
CREATE DATABASE db_cidade_das_frutas;

-- Utilizando a base de dados:
USE db_cidade_das_frutas;

-- Criando a tabela categoria:
CREATE TABLE tb_categoria(
id_fruta INT NOT NULL AUTO_INCREMENT,
tipo_da_fruta VARCHAR(255),
origem_da_fruta VARCHAR(255),
PRIMARY KEY (id_fruta)
);

-- Visualizando a estrutura da tabela categoria:
SELECT * FROM tb_categoria;

-- Criando a tabela de produtos:
CREATE TABLE tb_produtos(
id_produto INT NOT NULL AUTO_INCREMENT,
nome_fruta VARCHAR(255),
cor VARCHAR(255),
tamanho VARCHAR(255),
preco DECIMAL(10,2),
fk_id_fruta INT NOT NULL,
PRIMARY KEY(id_produto),
FOREIGN KEY(fk_id_fruta) REFERENCES tb_categoria(id_fruta)
);

-- Visualizando a estrutura da tabela produtos:
SELECT * FROM tb_produtos;

-- Inserindo dados na tabela categoria:
INSERT INTO tb_categoria(tipo_da_fruta, origem_da_fruta)
VALUES
("Doce", "ásia"),
("Acida", "Estados unidos"),
("Oleaginosas", "México"),

("Oleaginosas", "Ásia"),
("Doce", "Portugal"),
("Acida", "Brasil"),

("Acida", "Inglaterra"),
("Doce", "Japão"),
("Oleaginosas", "Indonesia");

-- Visualizando os dados inclusos na tabela categoria:
SELECT * FROM tb_categoria;

-- Atualizando na tabela categoria na coluna origem_da_fruta o valor "Ásia" onde o id_fruta é = 1:
UPDATE tb_categoria
SET origem_da_fruta = "Ásia"
WHERE id_fruta = 1;

/*Alteração na tabela categoria. Realizando mudança em nome de uma coluna;
passando a coluna id_fruta se chamar de id_categoria do tipo INT, do tipo não nulo que será de incremento automático */
ALTER TABLE tb_categoria
CHANGE id_fruta id_categoria INT NOT NULL AUTO_INCREMENT;

/*-- Alteração na tabela produtos. Realizando mudança em nome de uma coluna;
passando a coluna fk_id_fruta a se chamar de fk_id_categoria do tipo INT, do tipo não nulo*/ 
ALTER TABLE tb_produtos
CHANGE fk_id_fruta fk_id_categoria INT NOT NULL;

-- Inserindo dados na tabela produtos:
INSERT INTO tb_produtos (nome_fruta, cor, tamanho, preco, fk_id_categoria)
VALUES
("Banana", "Amarela", "Pequena", 2.00, 8),
("Acerola", "Vermelha", "Pequena", 10.00, 6),
("Castanha-do-pará", "Marrom", "Media", 5.00, 9),

("Cupuaçu", "Licor", "Pequena", 50.00, 7),
("Mamão", "Laranja", "Media", 8.00, 1),
("Damasco", "Laranja", "Pequena", 70.00, 3),

("Uva", "Verde", "Pequena", 9.00, 2),
("Abacate", "Verde", "Grande", 52.00, 4),
("Caqui", "Vemelha", "Media", 30.00, 5);

-- Visualizando os dados inclusos na tabela produto:
SELECT * FROM tb_produtos;

-- realizando consulta na tabela produtos dos produtos com preco maior que 50
SELECT nome_fruta, preco FROM tb_produtos WHERE preco > 50;

-- realizando consulta na tabela produtos dos produtos que estão com preco entre 3 e 60 reais:
SELECT nome_fruta, preco FROM tb_produtos WHERE preco BETWEEN 3 AND 60;

-- Realizando consulta na tabela produtos dos produtos com a letra C:
SELECT * FROM tb_produtos
WHERE nome_fruta LIKE "C%";

-- utilizando inner join para realizar uma consulta que una em sua apresentação os dados da tabela produtos e da tabela categoria
SELECT * FROM  tb_produtos
INNER JOIN tb_categoria
ON tb_produtos.fk_id_categoria = tb_categoria.id_categoria;

SELECT * FROM tb_produtos;

-- utilizando inner join para apresentar produtos da categoria "Doce" (dado ligado a tabela categoria):
SELECT * FROM  tb_produtos
INNER JOIN tb_categoria
ON tb_produtos.fk_id_categoria = tb_categoria.id_categoria
WHERE tb_categoria.tipo_da_fruta = "Doce";