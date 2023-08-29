-- Mostra quantas cirurgias cada médico fez 
SELECT COUNT(*), DEREF (tabela_cirurgia.dados_medico).crm as CRM
FROM tabela_cirurgia GROUP BY (DEREF (tabela_cirurgia.dados_medico).crm);

-- Mostra quantas cirurgias cada paciente fez
SELECT COUNT(*),DEREF(tabela_cirurgia.dados_paciente).nome AS Nome_do_Paciente 
FROM tabela_cirurgia GROUP BY DEREF(tabela_cirurgia.dados_paciente).nome ;