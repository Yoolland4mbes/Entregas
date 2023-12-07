CREATE TABLE "tb_cliente" (
	"cliente_id"	INTEGER,
	"nome"	TEXT,
	"cnh"	TEXT,
	"telefone"	TEXT,
	PRIMARY KEY("cliente_id" AUTOINCREMENT)
);




////////////////////////////////////////////////////////////////////////////////////////////////////////////
------------------------------------------------------------------------------------------------------------







CREATE TABLE "tb_aluguel" (
	"aluguel_id"	INTEGER,
	"cliente_id"	INTEGER NOT NULL,
	"veiculo_id"	INTEGER NOT NULL,
	"data_inicio"	TEXT NOT NULL,
	"data_fim"	TEXT NOT NULL,
	PRIMARY KEY("aluguel_id" AUTOINCREMENT)
	CONSTRAINT "cliente_id" FOREIGN KEY("cliente_id") REFERENCES "tb_cliente"("cliente_id"),
	CONSTRAINT "veiculo_id" FOREIGN KEY("veiculo_id") REFERENCES "tb_veiculo"("veiculo_id")
);






////////////////////////////////////////////////////////////////////////////////////////////////////////////
------------------------------------------------------------------------------------------------------------






CREATE TABLE "tb_veiculo" (
	"veiculo_id"	INTEGER,
	"modelo"	TEXT NOT NULL,
	"ano"	TEXT NOT NULL,
	"placa"	TEXT NOT NULL,
	"disponibilidade"	TEXT NOT NULL,
	PRIMARY KEY("veiculo_id" AUTOINCREMENT)
);







////////////////////////////////////////////////////////////////////////////////////////////////////////////
------------------------------------------------------------------------------------------------------------




INSERT INTO tb_cliente (nome, cnh, telefone)
VALUES
    ('Pedro Almeida', '1906637884', '(11)00000-0000'),
    ('Ana Souza', '4296045276', '(11)92345-5432'),
    ('Carlos Lima', '1650264934', '(11)90987-6543'),
    ('Mariana Costa', '8254867036', '(11)91098-7654'),
    ('Lucas Ferreira', '8926528740', '(11)92312-3213'),
    ('Juliana Oliveira', '1437593760', '(11)98654-4677'),
    ('Ricardo Mendes', '4254921038', '(11)91334-2287'),
    ('Beatriz Ramos', '6347290845', '(11)94520-6590');



	UPDATE tb_cliente
	SET telefone = '(11) 97643-6493'
	WHERE cliente_id = 1;


////////////////////////////////////////////////////////////////////////////////////////////////////////////
------------------------------------------------------------------------------------------------------------





INSERT INTO tb_veiculo (modelo, ano, placa, disponibilidade)
VALUES
    ('Bugatti veryon', '2021', 'HEK-2649', 'Disponivel'),
	('Audi r8', '2019', 'YOL-5945', 'Indisponivel'),
	('BMW M4', '2022', 'HRO-0746 ', 'Disponivel'),
	('Audi RS7', '2018', 'GAY-9876 ', 'Disponivel'),
	('Mini Cooper', '2016', 'KRL-9231 ', 'Indisponivel'),
	('Ferrari', '2017', 'HFI-8369 ', 'Disponivel'),
	('Porsche', '2023', 'JWG-6582 ', 'Indisponivel'),
	('Mercedes CLS', '2022', 'JKL-8512 ', 'Indsponivel');





////////////////////////////////////////////////////////////////////////////////////////////////////////////
------------------------------------------------------------------------------------------------------------






INSERT INTO tb_aluguel (cliente_id, veiculo_id, data_inicio, data_fim)
VALUES
    ( 1, 2, '02/07/2023', '12/07/2023'),
	( 2, 3, '11/09/2023', '21/11/2023'),
	(3, 4, '03/06/2023 ', '13/06/2023'),
	( 4,5, '11/03/2023 ', '21/03/2023'),
	(5,6, '20/12/2023 ', '30/12/2023'),
	(6, 7, '01/01/20023 ', '11/01/2023'),
	(7,8 , '30/10/2023 ', '10/11/2023'),
	( 8,6 , '10/06/2023 ', '20/03/2023');





////////////////////////////////////////////////////////////////////////////////////////////////////////////
------------------------------------------------------------------------------------------------------------



SELECT * FROM tb_cliente WHERE telefone = "(11)98654-4677"
SELECT * FROM tb_cliente WHERE cnh = "8254867036"
SELECT nome, cnh FROM tb_cliente 
SELECT * FROM tb_veiculo WHERE ano = 2021
SELECT * FROM tb_veiculo WHERE veiculo_id = 2
SELECT * FROM tb_veiculo WHERE disponibilidade = "Disponivel"




////////////////////////////////////////////////////////////////////////////////////////////////////////////
------------------------------------------------------------------------------------------------------------

