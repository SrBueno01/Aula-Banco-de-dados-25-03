-- =====================================
-- CRIAÇÃO DO BANCO
-- =====================================
CREATE DATABASE atividade_db;
USE atividade_db;

-- =====================================
-- CRIAÇÃO DAS TABELAS
-- =====================================

CREATE TABLE Autores (
    id INT PRIMARY KEY,
    nome VARCHAR(100)
);

CREATE TABLE Livros (
    id INT PRIMARY KEY,
    titulo VARCHAR(200),
    isbn VARCHAR(20),
    ano_publicacao INT,
    autor_id INT,
    FOREIGN KEY (autor_id) REFERENCES Autores(id)
);

-- =====================================
-- INSERÇÃO DE DADOS (CORRETO)
-- =====================================

INSERT INTO Autores (id, nome)
VALUES (1, 'Machado de Assis');

INSERT INTO Livros (id, titulo, isbn, ano_publicacao, autor_id)
VALUES (1, 'Dom Casmurro', '123456789', 1899, 1);

-- =====================================
-- TESTE DE INTEGRIDADE REFERENCIAL (ERRO)
-- =====================================

-- Esse comando vai gerar erro proposital
INSERT INTO Livros (id, titulo, isbn, ano_publicacao, autor_id)
VALUES (2, 'Livro Teste', '987654321', 2022, 999);

-- =====================================
-- ÁLGEBRA RELACIONAL
-- =====================================

-- PROJEÇÃO (somente títulos)
SELECT titulo FROM Livros;

-- SELEÇÃO (livros após 2020)
SELECT * FROM Livros
WHERE ano_publicacao > 2020;