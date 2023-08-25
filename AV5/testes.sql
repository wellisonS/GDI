DECLARE
    enfermeiro_coren VARCHAR2(5); 
    enfermeiro tp_enfermeiro;
BEGIN

    enfermeiro_coren := '54111';
    
    SELECT VALUE(e) INTO enfermeiro
    FROM tabela_enfermeiros e
    WHERE e.coren = enfermeiro_coren;
    
    -- Chama o procedimento para exibir as informações
    enfermeiro.exibir_informacoes();
END;
/