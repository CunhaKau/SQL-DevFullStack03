-- Crie um banco de dados utilizando a linguagem SQL
CREATE DATABASE petshop;

-- Crie as 4 tabelas de cliente, veterinário, consulta e animal, contendo em cada uma das tabelas o seu atributo com seu respectivo datatype.
CREATE TABLE cliente(
cpf INT(11) primary key,
nomecliente VARCHAR(100) NOT NULL,
telefonecliente VARCHAR(20) NOT NULL
);

CREATE TABLE veterinario(
crmv VARCHAR(20) primary key,
nomeveterinario VARCHAR(100) NOT NULL,
salario DECIMAL(5,2) NOT NULL,
dataadmissao DATE NOT NULL
);

CREATE TABLE animal(
codigoanimal INT(10) primary key,
nomeanimal VARCHAR(100) NOT NULL,
raca VARCHAR(50) NOT NULL, 
datanascimento DATE NOT NULL
);

CREATE TABLE consulta(
dia DATE NOT NULL,
horario TIME NOT NULL,
motivo VARCHAR(200) NOT NULL
);


-- Realize a alteração do atributo da tabela cliente de nomecliente para nomecompleto
ALTER TABLE cliente
CHANGE COLUMN nomecliente nomecompleto VARCHAR(200) NOT NULL;

-- Realize a alteração do datatype motivo de (200) caracteres para (500) caracteres 
ALTER TABLE consulta
MODIFY COLUMN motivo VARCHAR(500) NOT NULL;

-- delete o atributo nomeanimal da tabela animal, depois adicionei novamente o atributo com o nome: nomeanimalzinho
ALTER TABLE animal
DROP COLUMN nomeanimal; 

ALTER TABLE animal 
ADD nomeanimalzinho VARCHAR(50) NOT NULL;

-- realize uma pesquisa na documentação de como insere dados em uma tabela existente, insira os dados "Ana Claudia Cunha" para nome da cliente, telefone 11999998888, e cpf 1144444411 na tabela do cliente. 
INSERT INTO cliente (cpf, nomecompleto, telefonecliente)
VALUES (1144444411, "Ana Claudia", "(11) 99999-8888" );

-- Por fim, realize a exclusão dos dados da tabela cliente
DELETE FROM cliente WHERE cpf = 1144444411; /* especificamente este dado*/

DELETE FROM cliente; /*todos os dados*/

-- Realize a exclusão de cada uma das tabelas
DROP TABLE cliente, veterinario, consulta, animal;

-- Realize a exclusão do banco de dados
DROP DATABASE petshop;