
CREATE DATABASE db_pizzaria_legal;

CREATE TABLE tb_pizzas (
	id INT NOT NULL AUTO_INCREMENT,
  nome VARCHAR(255) NOT NULL,
  descricao VARCHAR(255) NOT NULL,
  valor DECIMAL(10,2) NOT NULL,
  categorias_id INT NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (categorias_id) REFERENCES tb_categorias (id)
);
CREATE TABLE tb_categorias (
    id INT NOT NULL AUTO_INCREMENT,
  nome VARCHAR(255) NOT NULL,
  descricao VARCHAR(255) NOT NULL,
  PRIMARY KEY (id)
);
#Insira 5 registros na tabela tb_categorias .
INSERT INTO tb_categorias (nome, descricao) VALUES
  ('Salgada', 'Pizzas com recheios salgados'),
  ('Doce', 'Pizzas com recheios doces'),
  ('Vegetariana', 'Pizzas com recheios vegetarianos'),
  ('Vegana', 'Pizzas com recheios veganos'),
  ('Sem glúten', 'Pizzas sem glúten');

  #Insira 8 registros na tabela tb_personagens, preenchendo 
  #a Chave Estrangeira para criar a relação com a tabela tb_pizzas.
INSERT INTO tb_pizzas (nome, descricao, valor, categorias_id) VALUES
  ('Pizza de calabresa', 'Pizza com recheio de calabresa, mussarela e orégano', 45.00, 1),
  ('Pizza de frango com catupiry', 'Pizza com recheio de frango desfiado, catupiry e cebola', 50.00, 1),
  ('Pizza de margherita', 'Pizza com recheio de molho de tomate, mussarela e manjericão', 55.00, 1),
  ('Pizza de chocolate', 'Pizza com recheio de chocolate, morangos e chantilly', 70.00, 2),
  ('Pizza de banana com canela', 'Pizza com recheio de banana, canela e açúcar', 65.00, 2),
  ('Pizza de palmito', 'Pizza com recheio de palmito, mussarela e tomate', 55.00, 3),
  ('Pizza de brócolis', 'Pizza com recheio de brócolis, mussarela e tomate', 50.00, 3),
  ('Pizza de tofu', 'Pizza com recheio de tofu, legumes e molho branco', 60.00, 4),
  ('Pizza de berinjela', 'Pizza com recheio de berinjela, mussarela e tomate', 55.00, 4),
  ('Pizza de massa integral', 'Pizza com massa integral, mussarela e tomate', 65.00, 5);


SELECT 
    *
FROM
    tb_pizzas
WHERE
    valor > 45.00;

SELECT 
    *
FROM
    tb_pizzas
WHERE
	valor BETWEEN 50.00 AND 100.00;
    

    SELECT 
    *
FROM
    tb_pizzas
WHERE
    nome LIKE '%M%';
    
    SELECT 
    tb_pizzas.id,
    tb_pizzas.nome,
    tb_categorias.nome AS categorias
FROM
    tb_pizzas
        INNER JOIN
    tb_categorias ON tb_pizzas.categorias_id = tb_categorias.id;
    
    SELECT 
    tb_pizzas.id,
    tb_pizzas.nome,
    tb_categorias.nome AS categorias
FROM
   tb_pizzas
        INNER JOIN
    tb_categorias ON tb_pizzas.categorias_id = tb_categorias.id
WHERE
    tb_categorias.nome = 'Doce';
    
    
    





