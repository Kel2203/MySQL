
create database db_generation_game_online;

/*
Crie a tabela tb_personagens e determine 4 atributos, 
além da Chave Primária, relevantes aos personagens do Game Online.
Não esqueça de criar a Foreign Key da tabela tb_classes na tabela tb_personagens.
*/

CREATE TABLE tb_personagens (
    id BIGINT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    poder_ataque INT NOT NULL,
    poder_defesa INT NOT NULL,
    classe_id INT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (classe_id)
        REFERENCES tb_classes (id)
);
CREATE TABLE tb_classes (
    id BIGINT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    especialidade VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);
#Insira 5 registros na tabela tb_classes.
INSERT INTO tb_classes (nome, especialidade) VALUES
  ('Arqueiro', 'Dano'),
  ('Mago', 'Controle'),
  ('Guerreiro', 'Tanque'),
  ('Ladino', 'Furtividade'),
  ('Curandeiro', 'Suporte');
  
  #Insira 8 registros na tabela tb_personagens, preenchendo 
  #a Chave Estrangeira para criar a relação com a tabela tb_classes.
INSERT INTO tb_personagens (nome, poder_ataque, poder_defesa, classe_id) VALUES
  ('Arqueiro 1', 3000, 2000, 1),
  ('Arqueiro 2', 2500, 1500, 1),
  ('Mago 1', 1500, 3000, 2),
  ('Guerreiro 1', 4000, 1000, 3),
  ('Ladino 1', 2000, 1000, 4),
  ('Curandeiro 1', 1000, 4000, 5),
  ('Arqueiro 3', 2000, 2500, 1),
  ('Mago 2', 2000, 2500, 2),
  ('Guerreiro 2', 2000, 2500, 3),
  ('Ladino 2', 2000, 2500, 4),
  ('Curandeiro 2', 2000, 2500, 5);
  
  
#Faça um SELECT que retorne todes os personagens cujo poder de ataque seja maior do que 2000.

SELECT 
    *
FROM
    tb_personagens
WHERE
    poder_ataque > 2000;


# Faça um SELECT que retorne todes os personagens cujo poder de defesa esteja no intervalo 1000 e 2000.
SELECT 
    *
FROM
    tb_personagens
WHERE
    poder_defesa BETWEEN 1000 AND 2000;
    
# Faça um SELECT utilizando o operador LIKE, buscando todes os personagens que possuam a letra C no atributo nome.
    SELECT 
    *
FROM
    tb_personagens
WHERE
    nome LIKE '%C%';
    
/*
Faça um SELECT utilizando a cláusula INNER JOIN, 
unindo os dados da tabela tb_personagens com os dados da tabela tb_classes.   
*/ 
    SELECT 
    tb_personagens.id,
    tb_personagens.nome,
    tb_classes.nome AS classe
FROM
    tb_personagens
        INNER JOIN
    tb_classes ON tb_personagens.classe_id = tb_classes.id;
    
/*Faça um SELECT utilizando a cláusula INNER JOIN, unindo os dados da tabela tb_personagens com os dados da tabela tb_classes, 
onde traga apenas os personagens que pertençam a uma classe específica 
(Exemplo: Todes os personagens da classe dos arqueiros).
    */

    SELECT 
    tb_personagens.id,
    tb_personagens.nome,
    tb_classes.nome AS classe
FROM
    tb_personagens
        INNER JOIN
    tb_classes ON tb_personagens.classe_id = tb_classes.id
WHERE
    tb_classes.nome = 'Arqueiro';
    
    
    





