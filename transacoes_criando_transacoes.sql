-- Checando se o SGBD está salvando tudo sozinho
SELECT @@autocommit;

-- retirando a função
SET autocommit=0;
INSERT INTO livro VALUES (9990, "computação gráfica", "editora ufra", "computação"); -- alterando linhas
SELECT * FROM livro;
ROLLBACK; -- cancelando as operações
SELECT * FROM livro;
INSERT INTO livro VALUES (9990, "computação gráfica", "editora ufra", "computação"); -- alterando linhas
COMMIT; -- salvando as operações
SELECT * FROM livro;

-- restaurando commit automático
SET autocommit=1;
INSERT INTO livro VALUES (9991, "visão computacional", "editora ufra", "computação");
SELECT * FROM livro;
ROLLBACK; -- não adianta cancelar as operações, vai ficar salvo
SELECT * FROM livro;

START TRANSACTION; -- controla a transição até um ROLLBACK ou COMMIT
INSERT INTO livro VALUES (9999, "inteligência artificial", "editora taperebá", "computação");
SELECT * FROM livro;
ROLLBACK; -- cancelando as operações
SELECT * FROM livro;

START TRANSACTION;
INSERT INTO livro VALUES (9999, "inteligência artificial", "editora taperebá", "computação");
SELECT * FROM livro;
COMMIT; -- salvando as operações
SELECT * FROM livro;
