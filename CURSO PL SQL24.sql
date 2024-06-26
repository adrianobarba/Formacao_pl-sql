SELECT * FROM CLIENTE;

DECLARE 
      CURSOR cur_CLIENTE IS SELECT ID FROM CLIENTE;
      v_SEGMERCADO_ID CLIENTE.SEGMERCADO_ID%type := 2;
      v_ID CLIENTE.ID%type;
BEGIN
    OPEN cur_CLIENTE;
    LOOP
        FETCH cur_CLIENTE INTO v_ID;
    EXIT WHEN cur_CLIENTE%NOTFOUND;
        atualizar_cli_seg_mercado(p_SEGMERCADO_ID => v_SEGMERCADO_ID, p_ID => v_ID);
    END LOOP;
    CLOSE cur_CLIENTE;
END;    
