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

DECLARE
    medico_crm VARCHAR2(5);
    medico tp_medico;
BEGIN
    medico_crm := 'CRM12';
    
    SELECT VALUE(m) INTO medico
    FROM tabela_medicos m
    WHERE m.crm = medico_crm;
    
    DBMS_OUTPUT.PUT_LINE('Nome do Médico: ' || medico.get_nome());
END;
/



