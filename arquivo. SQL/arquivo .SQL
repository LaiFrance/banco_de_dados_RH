CREATE DATABASE rh_sistema;

USE rh_sistema;
CREATE TABLE colaboradores (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT, 
    nome VARCHAR(50) NOT NULL,
    data_nascimento DATE NOT NULL,
    cargo VARCHAR(50) NOT NULL,
    salario DECIMAL(10,2) NOT NULL,
    localidade VARCHAR(50) NOT NULL
);

INSERT INTO colaboradores (nome,data_nascimento,cargo,salario,localidade) 
VALUES
('Lucas Marinho', '1998-03-02', 'Gerente de Marketing', 3000.00, 'São Paulo'),
('Rebecca ', '1999-07-17', 'Assistente de RH', 1500.00, 'Campinas'),
('Laise', '1995-05-20', 'Diretor Geral', 4000.00, 'São Paulo'),
('Gustavo Santiago', '1985-11-03', 'Analista de Sistemas', 2500.00, 'Belo Horizonte'),
('Gabriel Farias', '1990-02-14', 'Analista de Recursos Humanos', 2000.00, 'São Paulo');

SELECT * FROM colaboradores WHERE salario > 2000;

SELECT * FROM colaboradores WHERE salario < 2000;

UPDATE colaboradores
SET salario = 3500.00
WHERE nome = 'Laise';