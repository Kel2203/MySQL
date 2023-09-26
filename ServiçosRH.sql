CREATE DATABASE db_servicosrh;
USE db_servicosrh;

CREATE TABLE tb_colaboradores(
    id BIGINT AUTO_INCREMENT,
	nome VARCHAR(255) NOT NULL,
    cpf VARCHAR(14) NOT NULL,
	idade INT,
    email VARCHAR(255) NOT NULL,
	salario DECIMAL(6,2) NOT NULL,
    PRIMARY KEY (id)
); 

#Insira nesta tabela no mínimo 5 dados (registros).
INSERT INTO tb_colaboradores(nome, cpf, idade, email, salario) 
VALUES ("Maria da Silva","23412343223", 34,"maria@gmail.com", 3500.99);

INSERT INTO tb_colaboradores(nome, cpf, idade, email, salario) 
VALUES ("Ana de Oliveira","23412343890", 22,"ana@gmail.com", 1500.99);

INSERT INTO tb_colaboradores(nome, cpf, idade, email, salario) 
VALUES ("João Dias de Oliveira","77812343890", 45, "joao_dias@gmail.com", 3000.00);

INSERT INTO tb_colaboradores(nome, cpf, idade, email, salario) 
VALUES ("Marcelo Novais","2347243890", 27, "marcelo@gmail.com", 9000.00);

INSERT INTO tb_colaboradores(nome, cpf, idade, email, salario) 
VALUES ("Patrick Arruda","23412356780", 21, "patrick_arruda@gmai.com", 1100.99);

#Faça um SELECT que retorne todes os colaboradores com o salário maior do que 2000.
SELECT * FROM tb_colaboradores WHERE salario > 2000.00;

#Faça um SELECT que retorne todes os colaboradores com o salário menor do que 2000.
SELECT * FROM tb_colaboradores WHERE salario < 2000.00;

# Atualize o salário de Maria da Silva para 5000.00
UPDATE tb_colaboradores SET salario = 5000.00 WHERE id = 1;