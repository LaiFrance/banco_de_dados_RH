CREATE DATABASE db_generation_game_online

USE db_generation_game_online

-- Criação da tabela tb_classes

CREATE TABLE tb_classes (
    id_classe INTEGER PRIMARY KEY AUTO_INCREMENT, 
    nome_classe VARCHAR(50) NOT NULL, 
    descricao_classe VARCHAR(200)
);

-- Criação da tabela tb_personagens

CREATE TABLE tb_personagens (
    id_personagem INTEGER PRIMARY KEY AUTO_INCREMENT,
    nome_personagem VARCHAR(50) NOT NULL,
    poder_ataque INTEGER NOT NULL,
    poder_defesa INTEGER NOT NULL,
    classe_id INTEGER,
    FOREIGN KEY (classe_id) REFERENCES tb_classes (id_classe)
);

-- Inserção de registros na tabela tb_classes

INSERT INTO tb_classes (nome_classe, descricao_classe) 
VALUES 
    ('Arqueiros', 'Personagens especializados em ataques à distância'),
    ('Lutadores', 'Personagens especializados em lutas corpo-a-corpo'),
    ('Mágicos', 'Personagens especializados em magias'),
    ('Guerreiros', 'Personagens versáteis');

-- Inserção de registros na tabela tb_personagens

INSERT INTO tb_personagens (nome_personagem, poder_ataque, poder_defesa, classe_id) 
VALUES
    ('Apolo', 3000, 1000, 1),
    ('Hades', 4000, 1500, 2),
    ('Athena', 2500, 1500, 1),
    ('Zeus', 2000, 2000, 3),
    ('Ares', 2500, 1000, 2),
    ('Artemis', 2000, 1500, 1),
    ('Hermes', 1000, 1500, 3),
    ('Poseidon', 1500, 2000, 2);

-- Selecione todos os personagens com poder de ataque maior que 2000

SELECT * FROM tb_personagens WHERE poder_ataque > 2000;

-- Selecione todos os personagens com poder de defesa entre 1000 e 2000

SELECT * FROM tb_personagens WHERE poder_defesa BETWEEN 1000 AND 2000;

-- Selecione todos os personagens que possuam a letra C no nome

SELECT * FROM tb_personagens WHERE nome_personagem LIKE '%C%';

-- Selecione todos os personagens com seus respectivos dados das classes

SELECT p.nome_personagem, p.poder_ataque, p.poder_defesa, c.nome_classe
FROM tb_personagens p 
INNER JOIN tb_classes c 
    ON p.classe_id = c.id_classe;

-- Selecione todos os personagens da classe Arqueiros

 SELECT p.nome_personagem, p.poder_ataque, p.poder_defesa, c.nome_classe
FROM tb_personagens p 
INNER JOIN tb_classes c 
    ON p.classe_id = c.id_classe 
WHERE c.nome_classe = 'Arqueiros';