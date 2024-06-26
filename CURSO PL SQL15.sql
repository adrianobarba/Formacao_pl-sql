--Inserindo dados do cliente 
CREATE OR REPLACE PROCEDURE incluir_cliente
    (p_ID IN CLIENTE.ID%type,
    p_RAZAO_SOCIAL IN CLIENTE.RAZAO_SOCIAL%type,
    p_CNPJ IN CLIENTE.CNPJ%type,
    p_SEGMERCADO_ID IN CLIENTE.SEGMERCADO_ID%type,
    p_FATURAMENTO_PREVISTO IN CLIENTE.FATURAMENTO_PREVISTO%type)
IS
BEGIN
    INSERT INTO CLIENTE(ID, RAZAO_SOCIAL, CNPJ, SEGMERCADO_ID, DATA_INCLUSAO, FATURAMENTO_PREVISTO, CATEGORIA)
    VALUES(p_ID, p_RAZAO_SOCIAL, p_CNPJ, p_SEGMERCADO_ID, SYSDATE, p_FATURAMENTO_PREVISTO, '00000');
    COMMIT;
END;

EXECUTE incluir_cliente (2, 'SUPERMERCADO IJK', '67890', 1, 90000);

SELECT * FROM CLIENTE;