# Crie um banco de dados para um e-commerce
CREATE DATABASE db_ecommerce;
USE db_ecommerce;

# Crie uma tabela de produtos
CREATE TABLE tb_produtos(
    id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    descricao VARCHAR(255) NOT NULL,
    valor DECIMAL(6,2) NOT NULL,
    quant_estoque INT NOT NULL,
    categoria VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);

# Insira nesta tabela no mínimo 8 dados (registros)
INSERT INTO tb_produtos(nome, descricao, valor, quant_estoque, categoria)
VALUES ('Celular Samsung Galaxy S23', 'Celular Android com tela de 6,1 polegadas, processador octa-core, câmera tripla de 50 MP e bateria de 4.500 mAh', 5000.00, 100, 'Eletrônicos');

INSERT INTO tb_produtos(nome, descricao, valor, quant_estoque, categoria)
VALUES ('Smart TV LG 55', 'Smart TV LED com resolução 4K, processador Quad Core e sistema operacional WebOS', 3000.00, 50, 'Eletrônicos');

INSERT INTO tb_produtos(nome, descricao, valor, quant_estoque, categoria)
VALUES ('Notebook Dell Inspiron 15', 'Notebook com tela de 15,6 polegadas, processador Intel Core i5, 8 GB de RAM e 256 GB de armazenamento SSD', 2500.00, 20, 'Eletrônicos');

INSERT INTO tb_produtos(nome, descricao, valor, quant_estoque, categoria)
VALUES ('Cadeira Gamer DXRacer Formula', 'Cadeira gamer com estrutura em aço, encosto reclinável e apoio para os braços ajustáveis', 1500.00, 10, 'Eletrônicos');

INSERT INTO tb_produtos(nome, descricao, valor, quant_estoque, categoria)
VALUES ('Jaqueta Nike Air Jordan', 'Jaqueta esportiva com design clássico e tecido leve e respirável', 500.00, 50, 'Moda');

INSERT INTO tb_produtos(nome, descricao, valor, quant_estoque, categoria)
VALUES ('Tênis Adidas Yeezy Boost 350', 'Tênis esportivo com solado emborrachado e amortecimento responsivo', 1000.00, 20, 'Moda');

INSERT INTO tb_produtos(nome, descricao, valor, quant_estoque, categoria)
VALUES ('Livro Harry Potter e a Pedra Filosofal', 'Primeiro livro da série Harry Potter, de J.K. Rowling', 50.50, 100, 'Livros');

INSERT INTO tb_produtos(nome, descricao, valor, quant_estoque, categoria)
VALUES ('Filme Homem-Aranha: Sem Volta Para Casa', 'Filme de super-herói da Marvel Studios', 20.99, 50, 'Entretenimento');

# Faça um SELECT que retorne todes os produtos com o valor maior do que 500
SELECT * FROM tb_produtos WHERE valor > 500.00;

# Faça um SELECT que retorne todes os produtos com o valor menor do que 500
SELECT * FROM tb_produtos WHERE valor < 500.00;

# Atualize o valor do produto "Celular Samsung Galaxy S23" para 6.000
UPDATE tb_produtos SET valor = 6000.00 WHERE nome = 'Celular Samsung Galaxy S23';

