INSERT INTO TB_PRODUTOS
(PRODUTO, NOME, EMBALAGEM, TAMANHO, SABOR, PRECO_LISTA)
VALUES
('1040107', 'Light - 350 ml - Mel�ncia', 'Lata', '350 ml', 'Mel�ncia', 4.56);

SELECT * FROM TB_PRODUTOS;

INSERT INTO TB_VENDEDORES (
     MATRICULA, NOME, DATA_ADMISSAO, PERCENTUAL_COMISSAO
) VALUES (
     '00233','Joao Geraldo da Fonseca','01/12/2015', 0.10
);
SELECT * FROM TB_VENDEDORES;


INSERT INTO TB_PRODUTOS
(PRODUTO, NOME, EMBALAGEM, TAMANHO, SABOR, PRECO_LISTA)
VALUES
('1037797', 'Clean - 2 Litros - Laranja', 'PET', '2 Litros', 'Laranja', 16.01);

INSERT INTO TB_PRODUTOS
(PRODUTO, NOME, EMBALAGEM, TAMANHO, SABOR, PRECO_LISTA)
VALUES
('1000889', 'Sabor da Montanha - 700 ml - Uva', 'Garrafa', '700 ml', 'Uva', 6.31);

INSERT INTO TB_PRODUTOS
(PRODUTO, NOME, EMBALAGEM, TAMANHO, SABOR, PRECO_LISTA)
VALUES
('1004327', 'Videira do Campo - 1,5 Litros - Melancia', 'PET', '1,5 Litros', 'Melancia' , 19.51);

SELECT * FROM TB_PRODUTOS;


INSERT INTO TB_VENDEDORES (
     MATRICULA, NOME, DATA_ADMISSAO, PERCENTUAL_COMISSAO
) VALUES (
     '00400','Maria do Rosario','23/07/2012', 0.15
);

INSERT INTO TB_VENDEDORES (
     MATRICULA, NOME, DATA_ADMISSAO, PERCENTUAL_COMISSAO
) VALUES (
     '00810','Marcia Almeida','14/12/2016', 0.18
);

INSERT INTO TB_VENDEDORES (
     MATRICULA, NOME, DATA_ADMISSAO, PERCENTUAL_COMISSAO
) VALUES (
     '00414','Carlos Moreira','13/11/2015', 0.14
);

INSERT INTO TB_VENDEDORES (
     MATRICULA, NOME, DATA_ADMISSAO, PERCENTUAL_COMISSAO
) VALUES (
     '00934','Juvenildo Martins','09/03/2010', 0.20
);

SELECT * FROM TB_VENDEDORES;


UPDATE TB_PRODUTOS SET EMBALAGEM = 'Lata' WHERE PRODUTO = '1037797';
UPDATE TB_PRODUTOS SET NOME = 'Clean - 350 ml - Laranja', TAMANHO = '350 ml', PRECO_LISTA = 5.50 WHERE PRODUTO = '1037797';

UPDATE TB_VENDEDORES SET PERCENTUAL_COMISSAO = 0.18 WHERE MATRICULA = '00233';
UPDATE TB_VENDEDORES SET PERCENTUAL_COMISSAO = 0.18 WHERE MATRICULA = '00400';
UPDATE TB_VENDEDORES SET PERCENTUAL_COMISSAO = 0.18 WHERE MATRICULA = '00414';


DELETE FROM TB_PRODUTOS WHERE PRODUTO = '1037797';

DELETE FROM TB_VENDEDORES WHERE MATRICULA = '00400';


ALTER TABLE TB_PRODUTOS ADD CONSTRAINT PK_TB_PRODUTOS PRIMARY KEY (PRODUTO);

ALTER TABLE TB_VENDEDORES ADD CONSTRAINT PK_TB_VENDEDORES PRIMARY KEY (MATRICULA);

ALTER TABLE TB_CLIENTES ADD CONSTRAINT PK_TB_CLIENTES PRIMARY KEY (CPF);


INSERT INTO TB_CLIENTES 
(CPF, NOME, ENDERECO1, ENDERECO2, BAIRRO, CIDADE, ESTADO, CEP, DATA_NASCIMENTO, IDADE, SEXO, LIMITE_CREDITO, PRIMEIRA_COMPRA,  VOLUME_COMPRA)
VALUES
('00333434577', 'Jo�o da Silva', 'Rua Projetada n�mero 10', NULL, 'VILA ROMAN', 'TR�S RIOS', 'RJ', '22222222', '12/10/1965', 56, 'M', 100000, 0, 2000);


INSERT INTO TB_VENDEDORES (
     MATRICULA, NOME, DATA_ADMISSAO, PERCENTUAL_COMISSAO
) VALUES (
     '00265','Jonh Wayne',TO_DATE('03/27/2019','MM/DD/YYYY'), 0.12
);

INSERT INTO TB_VENDEDORES (
     MATRICULA, NOME, DATA_ADMISSAO, PERCENTUAL_COMISSAO
) VALUES (
     '00777','Katy Peterson',TO_DATE('02/04/2020','MM/DD/YYYY'), 0.10
);

INSERT INTO TB_VENDEDORES (
     MATRICULA, NOME, DATA_ADMISSAO, PERCENTUAL_COMISSAO
) VALUES (
     '00342','Rodrigo Almeida','18/01/2022', 0.09
);

INSERT INTO TB_VENDEDORES (
     MATRICULA, NOME, DATA_ADMISSAO, PERCENTUAL_COMISSAO
) VALUES (
     '00729','Patricia Martins','02/01/2022', 0.09
);