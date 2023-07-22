-- Consultas SQL

-- INSERT
INSERT INTO preescreve (cpf_medico,cpf_paciente,data_atendimento,dosagem,nome_med,frequencia) VALUES ('52984','93642',to_date('2021-10-17','yyyy-mm-dd'),'10 mg','Buscopan','A cada 8 horas')
INSERT INTO preescreve (cpf_medico,cpf_paciente,data_atendimento,dosagem,nome_med,frequencia) VALUES ('52984','19435',to_date('2021-11-12','yyyy-mm-dd'),'10 mg','Buscopan','A cada 8 horas')
-- DELETE
DELETE FROM agenda WHERE agenda.cpf_paciente = '86723';



-- Consultas PL/SQL
-- %Type e Select .. Into
DECLARE
  v_nome Pessoa.nome%TYPE;             -- Declaração de uma variável para armazenar o nome
  v_cpf  Pessoa.cpf%TYPE;           -- Declaração de uma variável para armazenar o CPF
BEGIN
  -- Recuperar o nome e o CPF da tabela "Pessoa" onde cpf = '34692'
  SELECT nome, cpf
  INTO v_nome, v_cpf
  FROM Pessoa
  WHERE cpf = '34692';

  -- Utilizar os valores recuperados nas variáveis
  DBMS_OUTPUT.PUT_LINE('Nome: ' || v_nome);
  DBMS_OUTPUT.PUT_LINE('CPF: ' || v_cpf);
END;
/