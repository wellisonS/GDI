SELECT COUNT(*), DREF (tabela_cirurgia.dados_medico).crm as CRM
FROM tabela_cirurgia GROUP BY (DREF (tabela_cirurgia.dados_medico).crm);
