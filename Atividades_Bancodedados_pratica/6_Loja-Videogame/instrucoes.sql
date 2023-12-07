
------------------------CRIANDO AS TABELAS----------------------

CREATE TABLE "tb_jogo" (
	"cod_jogo"	INTEGER,
	"titulo"	TEXT,
	"genero"	TEXT,
	"lancamento" DATE,
	"cod_plataforma" INTEGER,

	PRIMARY KEY("cod_jogo" AUTOINCREMENT)
);


CREATE TABLE "tb_plataforma" (
	"cod_plataforma" INTEGER,
	"nome"	TEXT,
	"fabricante"	TEXT,
	
	PRIMARY KEY("cod_plataforma" AUTOINCREMENT)
);



------------------------------------------------------------------
//////////////////////////////////////////////////////////////////
---------------------INSERINDO INFORMAÇÕES------------------------


INSERT INTO tb_plataforma (nome, fabricante)
VALUES
    ('Nintendo switch', 'nintendo'),
	('Xbox one', 'Microsoft'),
	('PlayStation 5', 'sony'),
	('nintendo WII', 'nintendo'),
	('XBox 360', 'microsoft'),
	('PlayStation 2', 'sony'),
	('Xbox series X', 'microsoft'),
	('PlayStation 4', 'sony'),
	('Wii U', 'nintendo'),
	('PlayStation 3', 'sony');




INSERT INTO tb_jogo (titulo, genero, lancamento, cod_plataforma)
 VALUES 
 ('Animal Crossing', 'aventura/rpg','2003',1), 
 ('god of war', 'Ação/Aventura', '2005',2), 
 ('stardew valley', 'rpg','2006-27-12',3), 
 ('Mortal Kombat', 'Ação','2000-03-06',4), 
 ('Super Mario Bros', 'aventura', '1980-07-06',5),
 ('Call of duty', 'tiro' ,'2008-08-02',6),
 ('Zelda', 'Ação/Aventura', '2009-10-10',7), 
 ('GTA san andreas', 'Ação/simulação', '1990-01-11',8),
 ('the last of us', 'ação/aventura', '2013-02-12',9),
 ('halo 4', 'FPS', '2012-03-13',10);

---------------------------------------------------------------

////////////////////////////////////////////////////////////

----------------------------FAZENDO CONSULTA-------------------------
SELECT * FROM tb_plataforma WHERE fabricante = "nintendo";

SELECT * FROM tb_jogo WHERE genero = "rpg";



SELECT 
tb_plataforma.nome,
tb_plataforma.fabricante,
tb_jogo.titulo,
tb_jogo.lancamento,
tb_jogo.genero


FROM
tb_plataforma 

INNER JOIN
tb_jogo ON tb_jogo.cod_plataforma = tb_plataforma.cod_plataforma;



-------------------------------------------------------------------------
//////////////////////////////////////////////////////////////////////////


-------------------------ALTERANDO DADOS-------------------------------

UPDATE tb_jogo
	SET lancamento = 2020
	WHERE cod_jogo = 5;
	
	
	UPDATE tb_jogo
	SET lancamento = 2000
	WHERE cod_jogo = 10;
	
	
	
	UPDATE tb_jogo
	SET lancamento = 2000
	WHERE cod_jogo = 7;
	
	
	
	UPDATE tb_jogo
	SET lancamento = 2007
	WHERE cod_jogo = 1;
------------------------------------------------------------------------------
////////////////////////////////////////////////////////////////////////////



----------------------------------DELETANDO DADOS---------------------------------

DELETE FROM tb_jogo WHERE cod_jogo = 5;
DELETE FROM tb_jogo WHERE cod_jogo = 2;
DELETE FROM tb_jogo WHERE cod_jogo = 7;
DELETE FROM tb_jogo WHERE cod_jogo = 10;
	
------------------------------------------------------------------------------------
///////////////////////////////////////////////////////////////////////////////////	
	












    