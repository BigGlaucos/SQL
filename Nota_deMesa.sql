CREATE DATABASE Nota_Fantasia;

USE Nota_fantasia;

CREATE TABLE tb_cliente (
    id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    nome VARCHAR(255) NOT NULL,
    email VARCHAR(150) UNIQUE NOT NULL,
    telefone INT (11) UNIQUE NOT NULL
);

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

CREATE TABLE td_produto (
    id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    preco_un float NOT NULL,
    descricao VARCHAR(255) NOT NULL
);

CREATE TABLE tb_vendas (
    id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
    quantidade_venda INT NOT NULL,
    valor_total FLOAT NOT NULL,
    data_venda TIMESTAMP,
    cliente_id INT NOT NULL,
    FOREIGN KEY (cliente_id) REFERENCES tb_cliente (id)
);