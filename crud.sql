# CRUD
# CREATE 	-> Criar ou inserir dados
# READ 		-> Ler dados
# UPTDATE   -> Atualizar Dados
# DELETE 	-> Deletar/Remover Dados

CREATE DATABASE crud;
USE crud;

CREATE TABLE pessoas(
nome VARCHAR(255),
rg VARCHAR(9),
cpf VARCHAR(11),
Limite INT (5)
);

#CREATE

INSERT INTO pessoas(nome,rg,cpf,Limite) VALUES("José","123456789","11122233344",1000);
INSERT INTO pessoas(nome,rg,cpf,Limite) VALUES("Maria","231523780","33322211100",500);
INSERT INTO pessoas(nome,rg,cpf,Limite) VALUES("Zé ciç","897689523","66677788899",10000);
INSERT INTO pessoas(nome,rg,cpf,Limite) VALUES("Enzo","457689123","22244466655",2000);
INSERT INTO pessoas(nome,rg,cpf,Limite) VALUES("Valentina","567891234","22244455533",3000);

# READ - SElecionar
#Selecioanr todso os dados
	SELECT * FROM pessoas;
#Selencionar uma coluna específica
SELECT nome, Limite FROM pessoas;
#Selencionar uma coluna específica
SELECT * FROM pessoas WHERE nome="Zé ciç"; # Linha
SELECT cpf FROM pessoas WHERE nome="Zé ciç"; # Dupla

#UPDATE - Atualizar os dados
SET SQL_SAFE_UPDATES=0;
INSERT INTO pessoas(nome,rg,cpf,Limite) VALUES("Maria","456","267",500);
INSERT INTO pessoas(nome,rg,cpf,Limite) VALUES("Maria","112","111",500);
INSERT INTO pessoas(nome,rg,cpf,Limite) VALUES("Maria","341","378",500);
# aAtualizo uma unica informação na tabela
UPDATE pessoas SET limite  = 50000 WHERE  cpf="341";
SELECT cpf,rg FROM pessoas WHERE nome="Enzo";
UPDATE pessoas SET rg="568790234" , cpf= "23224476685";

#DELETE- Apagar os dados
 #Deletar uma unica pessoa da tabela
	#SELECT * FROM pessoas WHERE nome="Enzo";
  DELETE FROM pessoas WHERE nome="Enzo";
  DELETE FROM pessoas WHERE limite < 1000;
	SELECT * FROM pessoas;
	