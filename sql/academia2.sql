/* Criando um banco de dados - SQL */

CREATE DATABASE sistemadeacademia;

/* Criando tabela no Banco de Dados */
CREATE TABLE cadastrocliente(
    cpf CHAR(15) primary key NOT NULL, 
    nomecompleto VARCHAR(200) NOT NULL, 
    datadenascimento DATE NOT NULL,
    email VARCHAR(50) UNIQUE NOT NULL, 
    telefone INT(15) NOT NULL,
    cep INT(8) NOT NULL, 
    rua VARCHAR(50) NOT NULL,
    numero CHAR(8) NOT NULL,
    complemento VARCHAR(50),
    bairro CHAR(20) NOT NULL, 
    cidade VARCHAR(50) NOT NULL,
    estado CHAR(20) NOT NULL
);

-- Inserindo dados/tupla na tabela
INSERT INTO cadastrocliente (cpf, nomecompleto, datadenascimento,
 email, telefone, cep, rua, numero, 
 complemento, bairro, cidade, estado)
VALUES ("11444514x", "Ana Claudia Cunha", 
"1920-09-17", "ana.cscunha1@senacsp.edu.br", 
11999, 04750000, "Rua Dr Antonio Bento", 
"393", " ", "Santo Amaro", "Sao Paulo", "SP");

-- Inserindo mais de um dado ao mesmo tempo
INSERT INTO cadastrocliente (cpf, nomecompleto, datadenascimento,
 email, telefone, cep, rua, numero, 
 complemento, bairro, cidade, estado)
VALUES ("12345", "Maria Souza", "1920-09-17", "maria@outlook.com", 
11987, 04750000, "Rua A", "12A", " ", "Jabaquara", "Sao Paulo", "SP"),
("45875", "Joao Cabral", "1910-09-18", "Joao@gmail.com", 11987, 
04750000, "Rua B", "125", "AP 12 Bloco B", "Guajau", "Sao Paulo", "SP"),
("47895", "Jose Albuquerque", "1910-09-18", "Jose@hotmail.com", 11988,
04785000, "Rua C", "110", "Casa 01", "Interlagos", "Sao Paulo", "SP");


-- Exibir todos os dados na tela
SELECT * FROM cadastrocliente;

-- Exibir apenas um dado na tela
SELECT nomecompleto FROM cadastrocliente WHERE nomecompleto = "Ana Claudia Cunha";

-- Exibir todos os dados de uma coluna
SELECT nomecompleto FROM cadastrocliente;

-- Exibir todos os dados de duas colunas
SELECT nomecompleto, datadenascimento FROM cadastrocliente;

-- Teste de comportamento/ Pesquisa de dado não cadastrado
SELECT nomecompleto FROM cadastrocliente WHERE nomecompleto = "Michele Silva";

-- Exibir na tela uma coluna com operação menor que <
SELECT telefone FROM cadastrocliente WHERE telefone < 58950;

-- Exibir na tela uma coluna com operação maior que >
SELECT cep FROM cadastrocliente WHERE cep > 5;

-- Exibir na tela uma coluna com operação igual a =
SELECT cep FROM cadastrocliente WHERE cep = 04785000;

-- Exibir na tela duas colunas com operação igual a = 
SELECT cep, rua FROM cadastrocliente WHERE cep = 04785000;

-- Selecionar dados de uma coluna onde contenha uma palavra
SELECT * FROM cadastrocliente WHERE nomecompleto LIKE '%Ana%';

-- Selecionador dados de uma coluna onde NÃO contenha a palavra
SELECT * FROM cadastrocliente WHERE nomecompleto NOT LIKE '%Ana%';

-- Ordenando todos os dados da tabela em ordem ascendente/crescente
SELECT * FROM cadastrocliente ORDER BY nomecompleto asc;

-- Buscando todos os dados da tabela, não é recomendado dessa forma, o certo é usar uma coluna pelo menos
SELECT * FROM cadastrocliente ORDER BY NULL;

-- Ordenando todos os dados da tabela em ordem descendente/decrescente
SELECT * FROM cadastrocliente ORDER BY nomecompleto desc;