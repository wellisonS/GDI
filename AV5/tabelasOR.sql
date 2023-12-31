CREATE TABLE tabela_medicos OF tp_medico (
	crm PRIMARY KEY 
    --lider SCOPE IS tabela_medicos

);

CREATE TABLE tabela_enfermeiros OF tp_enfermeiro (
	coren PRIMARY KEY 
    
);

CREATE TABLE tabela_funcionarios OF tp_funcionario (
	cpf PRIMARY KEY 
    
);

CREATE TABLE tabela_atendentes OF tp_atendente (
	cpf PRIMARY KEY
);

CREATE TABLE tb_paciente OF tp_paciente(
    cpf primary key
);
/

CREATE TABLE tb_lista_telefones (

	enfermeiro tp_enfermeiro,
	lista_fone tp_nt_fone
)NESTED TABLE lista_fone STORE AS tb_lista_fones;

CREATE TABLE tabela_medicamentos OF tp_medicamento(
	nome_medicamento PRIMARY KEY 
);

-- ***************** RELACIONAMENTOS 

CREATE TABLE tabela_cirurgia OF tp_cirurgia(
	dados_medico WITH ROWID REFERENCES tabela_medicos,
	dados_enfermeiro WITH ROWID REFERENCES tabela_enfermeiros,
	dados_paciente WITH ROWID REFERENCES tb_paciente
);

CREATE TABLE tabela_agenda OF tp_agenda (
	dados_atendente WITH ROWID REFERENCES tabela_atendentes,
	dados_paciente WITH ROWID REFERENCES tb_paciente

);

CREATE TABLE tabela_medico_paciente OF tp_medico_paciente (
	dados_medico WITH ROWID REFERENCES tabela_medicos,
	dados_paciente WITH ROWID REFERENCES tb_paciente
);


CREATE TABLE tabela_preescreve OF tp_preescreve (

	dados_medico WITH ROWID REFERENCES tabela_medicos,
	dados_medicamento WITH ROWID REFERENCES tabela_medicamentos,
	dados_paciente WITH ROWID REFERENCES tb_paciente
	
);
