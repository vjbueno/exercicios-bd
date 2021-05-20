CREATE DATABASE db_escola;

USE db_kabum; 

CREATE TABLE tb_alunos(
ra_aluno INT NOT NULL AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
curso VARCHAR(255),
nota FLOAT NOT NULL,
PRIMARY KEY(ra_aluno)
);

SELECT * FROM tb_alunos;

INSERT INTO tb_alunos (nome, curso, nota)
VALUES
("Barbara Jeronimo", "Direito", 8.2),
("Junior Pereira", "Administração", 9.5),
("Vitor Araujo", "Matematica", 5),
("Bruno Silva", "Sistemas de Informação", 6),
("Gabriel", "Ciencias da Computação", 10),
("Marcelo Souza", "Fisioterapia", 4.6),
("Sebastião Junior", "Psicologia", 2.6),
("Antonio Andrade", "Letras", 7.5);

SELECT * FROM tb_alunos;

SELECT nome, curso, nota FROM tb_alunos WHERE nota > 7;  

SELECT nome, curso, nota FROM tb_alunos WHERE nota < 7;

SELECT * FROM tb_alunos;