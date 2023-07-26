CREATE DATABASE livraria;
USE livraria;
CREATE TABLE tb_cliente (
    id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    nome VARCHAR(255) NOT NULL,
    email VARCHAR(150) UNIQUE NOT NULL,
    telefone INT (11) UNIQUE NOT NULL
);
INSERT into tb_cliente (nome, email, telefone)
VALUES ("Hellen", "hellen.abacate@gmail.com", 829000000);
INSERT into tb_cliente (nome, email, telefone)
VALUES (
        "limão verder",
        "limao.verde@gmail.com",
        829100000
    );
INSERT into tb_cliente (nome, email, telefone)
VALUES (
        "laranja lima",
        "laranjalima@gmail.com",
        829200000
    );
INSERT into tb_cliente (nome, email, telefone)
VALUES (
        "Daniel Costa",
        "DanielCosta@outlook.com",
        829300000
    );
INSERT into tb_cliente (nome, email, telefone)
VALUES (
        "Carlos Wilton",
        "Carlos.Wilton@live.com",
        829400000
    );
SELECT *
FROM tb_cliente;
CREATE TABLE tb_endereco_cliente (
    id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    cep VARCHAR(9) NOT NULL,
    estado VARCHAR(100) NOT NULL,
    cidade VARCHAR(100) NOT NULL,
    logradouro VARCHAR(200) NOT NULL,
    numero VARCHAR(10) NOT NULL,
    complemento VARCHAR(250),
    cliente_id INT NOT NULL,
    FOREIGN KEY (cliente_id) REFERENCES tb_cliente (id)
);
CREATE TABLE tb_genero (
    id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    genero VARCHAR(50) UNIQUE NOT NULL
);
INSERT INTO tb_cliente (genero)
VALUES ("Ficção");
INSERT INTO tb_cliente (genero)
VALUES ("Não Ficção");
INSERT INTO tb_cliente (genero)
VALUES ("Infantil e Juvenil");
INSERT INTO tb_cliente (genero)
VALUES ("Referência");
INSERT INTO tb_cliente (genero)
VALUES ("Periódicos");
INSERT INTO tb_cliente (genero)
VALUES ("Multimídia");
INSERT INTO tb_cliente (genero)
VALUES ("Livros Raros e Especiais");

CREATE TABLE tb_livro (
    id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    titulo VARCHAR(100) UNIQUE NOT NULL,
    autor VARCHAR(50) NOT NULL,
    editora VARCHAR(50) NOT NULL,
    edicao CHAR(4)
);
ALTER TABLE tb_livro
ADD COLUMN sku VARCHAR(10) UNIQUE NOT NULL;
ALTER TABLE tb_livro
ADD COLUMN preco FLOAT NOT NULL;
CREATE TABLE tb_genero_livros (
    id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    genero_id INT NOT NULL,
    livros_id INT NOT NULL,
    FOREIGN KEY (genero_id) REFERENCES tb_genero (id),
    FOREIGN KEY (livros_id) REFERENCES tb_livro (id)
);
CREATE TABLE tb_revistas (
    id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    titulo VARCHAR(100) UNIQUE NOT NULL,
    autor VARCHAR(50) NOT NULL,
    editora VARCHAR(50) NOT NULL,
    edicao CHAR(4)
);
ALTER TABLE tb_revistas
ADD COLUMN sku VARCHAR(10) UNIQUE NOT NULL;
ALTER TABLE tb_revistas
ADD COLUMN preco FLOAT NOT NULL;
CREATE TABLE tb_genero_revistas (
    id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    genero_id INT NOT NULL,
    revistas_id INT NOT NULL,
    FOREIGN KEY (genero_id) REFERENCES tb_genero (id),
    FOREIGN KEY (revistas_id) REFERENCES tb_revistas (id)
);
CREATE TABLE tb_material_escolar (
    id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    nome VARCHAR(100) NOT NULL,
    tipo VARCHAR(50) NOT NULL,
    marca VARCHAR(25) NOT NULL,
    sku VARCHAR(10) UNIQUE NOT NULL
);
ALTER TABLE tb_material_escolar
ADD COLUMN preco FLOAT NOT NULL;
CREATE TABLE tb_estoque (
    id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    quantidade INT NOT NULL,
    livros_id INT NOT NULL,
    revistas_id INT NOT NULL,
    material_escolar_id INT NOT NULL,
    FOREIGN KEY (livros_id) REFERENCES tb_livro (id),
    FOREIGN KEY (revistas_id) REFERENCES tb_revistas (id),
    FOREIGN KEY (material_escolar_id) REFERENCES tb_material_escolar (id)
);
CREATE TABLE tb_vendas (
    id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    quantidade_venda INT NOT NULL,
    valor_total FLOAT NOT NULL,
    data_venda TIMESTAMP,
    cliente_id INT NOT NULL,
    estoque_id INT NOT NULL,
    FOREIGN KEY (estoque_id) REFERENCES tb_estoque (id),
    FOREIGN KEY (cliente_id) REFERENCES tb_cliente (id)
);