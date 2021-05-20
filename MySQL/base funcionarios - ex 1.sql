/*Atividade 1
Crie um banco de dados para um serviço de RH de uma empresa, onde o sistema
trabalhará com as informações dos funcionaries desta empresa.
Crie uma tabela de funcionaries e utilizando a habilidade de abstração e determine 5
atributos relevantes dos funcionaries para se trabalhar com o serviço deste RH.
Popule esta tabela com até 5 dados;
Faça um select que retorne os funcionaries com o salário maior do que 2000.
Faça um select que retorne os funcionaries com o salário menor do que 2000.
Ao término atualize um dado desta tabela através de uma query de atualização. */

CREATE DATABASE db_rh; -- criando minha base de dados

USE db_rh; -- informando que será utilizada a base de dados USE db_rh

-- criando a tabela que fará parte desssa base da dados:
CREATE TABLE tb_funcionarios(
id_matricula INT NOT NULL AUTO_INCREMENT,
nome VARCHAR(225) NOT NULL,
cidade_natural VARCHAR(255) NOT NULL,
dt_admissao DATE,
cargo VARCHAR(255),
setor VARCHAR(255),
salario FLOAT NULL,
PRIMARY KEY(id_matricula)
);

-- selecionando a tabela criada afins de visualizar sua estrutura
SELECT * FROM tb_funcionarios;

-- inserindo os dados dentro da tabela tb_funcionarios
INSERT INTO tb_funcionarios (nome, cidade_natural, dt_admissao, cargo, setor, salario)
VALUES
('Alex Turner', 'São Paulo', '2019-04-29', 'Diretor Executivo', 'Conselho', 6000.80),
('Floriano', 'Natal', '2018-08-01', 'Auxiliar de informatica', 'Infraestrutura', 1800.70),
('Simone', 'Rio de Janeiro', '1999-05-26', 'Gerente Comercial', 'Comercial', 4000.85),
('Moritz', 'São Paulo', '2018-12-28', 'Engenheiro de software', 'Desenvolvimento', 2000.60);

-- selecionando a tabela para visualizar os dados inclusos
SELECT * FROM tb_funcionarios;

-- verificando qual funcionario dentro da tabela tem o salario maior que 2000
SELECT nome, cargo, salario FROM tb_funcionarios WHERE salario >2000;

-- verificando qual funcionario dentro da tabela tem o salario menor que 2000
SELECT nome, cargo, salario FROM tb_funcionarios WHERE salario <2000;

SELECT * FROM tb_funcionarios;

-- atualizando os dados da tabela. Na coluna salario atualizar para 1900.80 onde na coluna id_matricula corresponde a 2
UPDATE tb_funcionarios SET salario = 1900.80 WHERE id_matricula = 2;

-- selecionando a tabela para visualizar os dados inclusos
SELECT * FROM tb_funcionarios;










