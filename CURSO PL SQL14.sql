--Retorno da descric�o  
SET SERVEROUTPUT ON

DECLARE
    v_ID SEGMERCADO.ID%type := 2;
    v_DESCRICAO SEGMERCADO.DESCRICAO%type;
BEGIN
    SELECT DESCRICAO INTO v_DESCRICAO FROM SEGMERCADO WHERE ID = v_ID;
    dbms_output.put_line(v_DESCRICAO);
END;

--Criando fun��o 

CREATE OR REPLACE FUNCTION obter_descricao_segmercado
    (p_ID IN SEGMERCADO.ID%type) 
RETURN SEGMERCADO.DESCRICAO%type
IS
    v_DESCRICAO SEGMERCADO.DESCRICAO%type;
BEGIN
    SELECT DESCRICAO INTO v_DESCRICAO FROM SEGMERCADO WHERE ID = p_ID;
    RETURN v_DESCRICAO;
END;
      