-- Mostra quantas cirurgias cada médico fez 
SELECT COUNT(*), DEREF (tabela_cirurgia.dados_medico).crm as CRM
FROM tabela_cirurgia GROUP BY (DEREF (tabela_cirurgia.dados_medico).crm);

-- Mostra quantas cirurgias cada paciente fez
SELECT COUNT(*),DEREF(tabela_cirurgia.dados_paciente).nome AS Nome_do_Paciente 
FROM tabela_cirurgia GROUP BY DEREF(tabela_cirurgia.dados_paciente).nome ;

-- Mostra o número de telefone de todos os atendentes (consulta a VARRAY)
SELECT A.nome, T.* FROM tabela_atendentes A, TABLE(A.telefones) T;

-- chama o procedure exibir_informacoes para todos enfermeiros com idade inferior a 30 anos, e os ordena de forma crescente por idade.
DECLARE
    CURSOR c_enfermeiros IS
        SELECT VALUE(enf) AS enfermeiro
        FROM tabela_enfermeiros enf
        WHERE TRUNC(MONTHS_BETWEEN(SYSDATE, enf.data_nascimento) / 12) < 30
        ORDER BY TRUNC(MONTHS_BETWEEN(SYSDATE, enf.data_nascimento) / 12);
BEGIN
    FOR e IN c_enfermeiros
    LOOP
        e.enfermeiro.exibir_informacoes;
    END LOOP;
END;
/

-- Mostra todos os enfermeiros que são de Pernambuco, mas não moram em Recife.
SELECT e.nome AS enfermeiro, e.coren, e.endereco.cidade, e.endereco.estado
FROM tabela_enfermeiros e
WHERE e.endereco.estado = 'PE' AND e.endereco.cidade <> 'Recife';

-- Testa a order member de cirurgia para identificar conflitos nas cirurgias
DECLARE
    aux NUMBER;
    cirurgia1 tp_cirurgia;
    cirurgia2 tp_cirurgia;
BEGIN
    SELECT VALUE (C) INTO cirurgia1 FROM tabela_cirurgia C WHERE data_cirurgia = TO_DATE('2022-08-19', 'YYYY-MM-DD');
    SELECT VALUE (C) INTO cirurgia2 FROM tabela_cirurgia C WHERE data_cirurgia = TO_DATE('2023-05-19', 'YYYY-MM-DD');
    aux := cirurgia1.conflito_cirurgia(cirurgia2);

    IF aux = 0 THEN
        DBMS_OUTPUT.PUT_LINE('Não há conflito.');
    ELSE 
        DBMS_OUTPUT.PUT_LINE('Conflito existente!');
    END IF;
END;
/

-- Mostra todos os funcionários do sexo feminino
SELECT f.nome, f.telefone FROM tabela_funcionarios f WHERE f.sexo = 'F';

--Mostra emparelhado o nome do médico e seu(s) telefone(s)
SELECT m.nome AS nome_medico, t.numero AS numero_telefone
FROM tabela_medicos m
JOIN TABLE(m.telefones) t ON 1=1;

--Faz uma referência dos pacientes que pesam 100 kg, e depois os que
-- também pesam mais que 60 e os que pesam menos que 60 dessa referência.
SELECT REF(p) 
FROM tb_paciente p 
WHERE p.prontuario.altura < 1.80;

SELECT DEREF(REF(p)).nome 
FROM tb_paciente p 
where p.prontuario.altura > 1.5;

SELECT DEREF(REF(p)).nome 
FROM tb_paciente p 
where p.prontuario.altura < 1.5;


--Seleciona o número dos enfermeiros da nested table de telefones da tabela tb_lista_telefones.

SELECT t.enfermeiro.nome AS nome_enfermeiro, f.numero AS numero_telefone
FROM tb_lista_telefones t
JOIN TABLE(t.lista_fone) f ON 1=1;


-- Consulta que calcula a média das dosagens dos medicamentos armazenados na tabela tabela_medicamentos

SELECT AVG(medicamento.dosagem) AS media_dosagem
FROM tabela_medicamentos medicamento;


--Consulta que utiliza a HAVING para filtrar medicamentos com uma dosagem média acima de um determinado valor:

SELECT medicamento.nome_medicamento, AVG(medicamento.dosagem) AS media_dosagem
FROM tabela_medicamentos medicamento
GROUP BY medicamento.nome_medicamento
HAVING AVG(medicamento.dosagem) > 50;
