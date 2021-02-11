CREATE SCHEMA db_biblioteca;

USE db_biblioteca;

CREATE TABLE livro (
	isbn INT PRIMARY KEY,
    nome VARCHAR(60),
    editora VARCHAR(60),
    area VARCHAR(60)
) ENGINE = INNODB;

INSERT INTO livro VALUES (3232, "banco de dados", "editora ufra", "computação");
INSERT INTO livro VALUES (1234, "algoritmos", "editora ufra", "computação");
INSERT INTO livro VALUES (5678, "cálculo", "editora taperebá", "matemática");
INSERT INTO livro VALUES (8989, "álgebra linear", "editora taperebá", "matemática");
INSERT INTO livro VALUES (3434, "javascript", "editora taperebá", "computação");