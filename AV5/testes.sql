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

-- Testando member function de agenda 

DECLARE
    atendente_cpf VARCHAR2(5);
    paciente_cpf  VARCHAR2(5);
    consulta_data_result VARCHAR2(300);
    agenda tp_agenda;
BEGIN
    atendente_cpf := '68014';
    paciente_cpf := '93642';
    
    SELECT VALUE(a) INTO agenda
    FROM tabela_agenda a
    WHERE a.dados_atendente.cpf = atendente_cpf
    AND a.dados_paciente.cpf = paciente_cpf;
    
    consulta_data_result := agenda.consulta_data();

    DBMS_OUTPUT.PUT_LINE('Consulta agendada para: ' || consulta_data_result);


END;
/





