# Crie um banco de dados para um registro de uma escola
CREATE DATABASE db_registro_escola;
USE db_registro_escola;

# Crie uma tabela estudantes
CREATE TABLE tb_estudantes(
    id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    rg VARCHAR(10) NOT NULL,
    cpf VARCHAR(14) NOT NULL,
    turma VARCHAR(20) NOT NULL,
    nota DECIMAL(3,1) NOT NULL,
    PRIMARY KEY (id)
);

# Insira nesta tabela no mínimo 8 dados (registros)
INSERT INTO tb_estudantes(nome, rg, cpf, turma, nota)
VALUES ('Maria da Silva', '1234567890', '23412343223', '1ª série EM', 8.5);

INSERT INTO tb_estudantes(nome, rg, cpf, turma, nota)
VALUES ('Ana de Oliveira', '987654321', '23412343890', '2ª série EM', 9.0);

INSERT INTO tb_estudantes(nome, rg, cpf, turma, nota)
VALUES ('João Dias de Oliveira', '321456789', '77812343890', '3ª série EM', 7.5);

INSERT INTO tb_estudantes(nome, rg, cpf, turma, nota)
VALUES ('Marcelo Novais', '456789123', '2347243890', '4ª série EF', 6.0);

INSERT INTO tb_estudantes(nome, rg, cpf, turma, nota)
VALUES ('Patrick Arruda', '567891234', '23412356780', '5ª série EF', 5.5);

INSERT INTO tb_estudantes(nome, rg, cpf, turma, nota)
VALUES ('Pedro Souza', '678912345', '9876543210', '6ª série EF', 4.0);

INSERT INTO tb_estudantes(nome, rg, cpf, turma, nota)
VALUES ('Lucas Silva', '789123456', '3214567890', '7ª série EF', 3.5);

# Faça um SELECT que retorne todes o/a(s) estudantes com a nota maior do que 7.0
SELECT * FROM tb_estudantes WHERE nota > 7.0;

# Faça um SELECT que retorne todes o/a(s) estudantes com a nota menor do que 7.0
SELECT * FROM tb_estudantes WHERE nota < 7.0;

# Atualize a nota do estudante "Maria da Silva" para 9.5
UPDATE tb_estudantes SET nota = 9.5 WHERE id = 2;

SELECT * FROM tb_estudantes;