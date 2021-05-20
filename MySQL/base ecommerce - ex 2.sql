/*Atividade 2
Crie um banco de dados para um e commerce, onde o sistema trabalhará com as
informações dos produtos deste ecommerce.
Crie uma tabela produtos e utilizando a habilidade de abstração e determine 5 atributos
relevantes dos produtos para se trabalhar com o serviço deste ecommerce.
Popule esta tabela com até 8 dados;
Faça um select que retorne os produtos com o valor maior do que 500.
Faça um select que retorne os produtos com o valor menor do que 500.
Ao término atualize um dado desta tabela através de uma query de atualização.
salve as querys para cada uma dos requisitos o exercício em um arquivo .SQL ou texto e
coloque no seu GitHuB pessoal e compartilhe esta atividade. */

CREATE DATABASE db_kabum;

USE db_kabum; 

CREATE TABLE tb_produtos(
id_produto INT NOT NULL AUTO_INCREMENT,
nome_produto VARCHAR(255) NOT NULL,
categoria VARCHAR(255),
cor VARCHAR(255),
preco FLOAT NOT NULL,
PRIMARY KEY(id_produto)
);

SELECT * FROM tb_produtos;

INSERT INTO tb_produtos (nome_produto, categoria, cor, preco)
VALUES
("Moto G5", "Celular", "Prata", 1.200),
("Cadeira de escritorio", "Moveis", "Laranja", 313.14),
("Geladeira", "Eletrodomestico", "Branca", 2399.86),
("Notebook", "Informatica", "Dourado", 3666.40),
("Mini trator Eletrico", "Brinquedos", "Amarelo", 399.98),
("Controle de Xbox", "Games", "Preto", 474.05),
("SSD", "Hardware", "Preto", 289.90),
("Monitor 23 polegadas", "Monitores", "Preto", 829.77);

SELECT * FROM tb_produtos;

SELECT nome_produto, categoria, preco FROM tb_produtos WHERE preco > 500;  

SELECT nome_produto, categoria, preco FROM tb_produtos WHERE preco < 500;

UPDATE tb_produtos 
SET preco = 1600.74 
WHERE id_produto = 1;

SELECT * FROM tb_produtos;


