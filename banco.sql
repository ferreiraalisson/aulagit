-- MYSQL -U ROOT;  - ENTRAR NO XAMP --
-- criar banco de dados

create database aula1;

-- visualizador de bancos existentes

show databases;

-- conectar

use aula1;

--apagar banco de dados

drop database aula1;

--criar tabela

CREATE TABLE USUARIO(
	COD INT,
	NOME VARCHAR(40),
	LOGIN VARCHAR(40),
	SENHA VARCHAR(40),
	PERFIL ENUM('ADM','USER')

);

--INSERIR DADOS NA TABELA
INSERT INTO USUARIO VALUES
(100,'ANA','123','LALA','ADM');
INSERT INTO USUARIO VALUES
(110,'PEDRO','DROPE','DROP','USER');

INSERT INTO USUARIO VALUES
(120,'Ivan Alves','JNR',md5('12345'),'adm'); -- md5 é para criptografar a senha --

--VISUALIZAR DADOS NA TABELA
SELECT * FROM USUARIO;

--DELETAR
DELETE FROM USUARIO WHERE NOME='PEDRO';














