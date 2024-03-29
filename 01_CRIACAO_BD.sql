CREATE DATABASE T_INLOCK;

USE T_INLOCK;

CREATE TABLE PERFIL
(
	IDPERFIL INT PRIMARY KEY IDENTITY
	,PERFIL VARCHAR(200) NOT NULL
);

CREATE TABLE USUARIO
(
IDUSUARIO INT PRIMARY KEY IDENTITY
,NOME VARCHAR(200) NOT NULL
,EMAIL VARCHAR(200) NOT NULL
,IDPERFIL INT FOREIGN KEY REFERENCES PERFIL (IDPERFIL)
);

CREATE TABLE ESTUDIO
(
IDESTUDIO INT PRIMARY KEY IDENTITY
,ESTUDIO VARCHAR (200) NOT NULL
,DATACRIACAO DATE NOT NULL
,IDUSUARIO INT FOREIGN KEY REFERENCES USUARIO (IDUSUARIO)
)

CREATE TABLE JOGO
(
	IDJOGO INT PRIMARY KEY IDENTITY
	,JOGO VARCHAR (200) NOT NULL
	,DESCRICAO VARCHAR (200)
	,DATALANCAMENTO DATE NOT NULL
	,VALOR INT NOT NULL
	,IDESTUDIO INT FOREIGN KEY REFERENCES ESTUDIO(IDESTUDIO)
);


INSERT INTO PERFIL (PERFIL) VALUES ('ADMIN');
INSERT INTO PERFIL (PERFIL) VALUES ('NORMAL');


INSERT INTO USUARIO (NOME,EMAIL,IDPERFIL) VALUES ('ARTHUR','ADMIN@ADMIN.COM','1');
INSERT INTO USUARIO (NOME,EMAIL,IDPERFIL) VALUES ('EMILIA','EM@EM.COM','2');
INSERT INTO USUARIO (NOME,EMAIL,IDPERFIL) VALUES ('TIAGO','T@T.COM','1');


INSERT INTO ESTUDIO(ESTUDIO, DATACRIACAO, IDUSUARIO) VALUES ('Blizzard','11-12-12','1');
INSERT INTO ESTUDIO(ESTUDIO, DATACRIACAO, IDUSUARIO) VALUES ('Rockstar ','24-03-2002','2');
INSERT INTO ESTUDIO(ESTUDIO, DATACRIACAO, IDUSUARIO) VALUES ('Studios ','05-05-05','2');

INSERT INTO JOGO (JOGO,DESCRICAO,DATALANCAMENTO,VALOR,IDESTUDIO) VALUES ('Diablo 3','� um jogo que cont�m bastante a��o e � viciante, seja voc� um novato ou um f�','15-05-2012','99','1');
INSERT INTO JOGO (JOGO,DESCRICAO,DATALANCAMENTO,VALOR,IDESTUDIO) VALUES ('Red Dead Redemption II ','jogo eletr�nico de a��o-aventura western','26-10-2018','120','2');

SELECT * FROM JOGO
SELECT * FROM PERFIL
SELECT * FROM ESTUDIO
SELECT * FROM USUARIO

ALTER TABLE USUARIO
ADD SENHA VARCHAR(200)



INSERT INTO USUARIO (NOME,EMAIL,IDPERFIL, SENHA) VALUES ('TIAGOH','T@J.COM',2, '123C');