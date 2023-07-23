-- Consultas SQL


-- INSERT
INSERT INTO preescreve (cpf_medico,cpf_paciente,data_atendimento,dosagem,nome_med,frequencia) VALUES ('52984','93642',to_date('2021-10-17','yyyy-mm-dd'),'10 mg','Buscopan','A cada 8 horas')
INSERT INTO preescreve (cpf_medico,cpf_paciente,data_atendimento,dosagem,nome_med,frequencia) VALUES ('52984','19435',to_date('2021-11-12','yyyy-mm-dd'),'10 mg','Buscopan','A cada 8 horas')


-- DELETE
DELETE FROM agenda WHERE agenda.cpf_paciente = '86723';


-- GROUP BY
SELECT cidade, COUNT(cep) as total FROM endereco
GROUP BY cidade;
-- retorna a distribuição de pessoas por cep, em cada cidade.


-- BETWEEN
SELECT cpf_func, salario FROM salario
WHERE salario.salario BETWEEN '3000' and '7000';
-- retorna o cpf das pessoas que ganham entre 3000 e 7000 reais de salário.


-- UPDATE
UPDATE pessoa SET nome = 'Júlia Caroline Maciel'
WHERE cpf ='42058';
-- atualiza o nome de uma pessoa pelo cpf.


--INNER JOIN
SELECT pessoa.numero, pessoa.cpf, pessoa.nome, pessoa.SEXO, pessoa.data_nascimento,
endereco.estado, endereco.cidade, endereco.rua, endereco.cep, pessoa.complemento
FROM pessoa
INNER JOIN endereco ON pessoa.cep = endereco.cep;
-- junta as duas tabelas, pessoa e endereco, a partir da cláusula cep.




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


-- CASE WHEN


---Atualiza todos os complementos que são nulos, para "sem informações"
DECLARE
    v_numero pessoa.numero%TYPE;
    v_complemento pessoa.complemento%TYPE;
    
    v_new_complemento_value VARCHAR2(100) := 'sem informações';

    -- Cursor para selecionar os complementos que são nulos
    CURSOR c_null_complemento IS
        SELECT numero, complemento
        FROM pessoa
        WHERE complemento IS NULL;
BEGIN
    -- Transita pelo cursor e atualiza os dados
    FOR c_rec IN c_null_complemento LOOP
        v_numero := c_rec.numero;
        v_complemento := v_new_complemento_value;
        
        UPDATE pessoa
        SET complemento = v_complemento
        WHERE numero = v_numero;
        
    END LOOP;
    
    COMMIT;

END;


-- CURSOR (OPEN, CLOSE, FETCH)
-- retorna nome e sexo de todas as pessoas da tabela pessoa.

DECLARE
    -- Declaração das variáveis para armazenar nome e sexo
    v_nome pessoa.nome%TYPE;
    v_sexo pessoa.sexo%TYPE;

    CURSOR c_pessoa IS
        SELECT nome, sexo
        FROM pessoa;

BEGIN
    -- abre o cursor
    OPEN c_pessoa;
    
    -- loop pelo cursor para realizar as buscas
    LOOP

        FETCH c_pessoa INTO v_nome, v_sexo;
        EXIT WHEN c_pessoa%NOTFOUND;
        DBMS_OUTPUT.PUT_LINE('Nome: ' || v_nome || ', Sexo: ' || v_sexo); -- printa linha por linha

    END LOOP;
    
    -- fecha o cursor
    CLOSE c_pessoa;
END;



-- IF ELSIF
-- retorna se a pessoa é nova a partir de sua data de nasc.
DECLARE
    -- variáveis p armazenar nome e data de nascimento
    v_nome pessoa.nome%TYPE;
    v_data_nascimento pessoa.data_nascimento%TYPE;

    -- variáveis para a idade e pra data atual
    v_age NUMBER;
    v_today DATE := SYSDATE;

    --declarando o cursor
    CURSOR c_pessoa IS
        SELECT nome, data_nascimento
        FROM pessoa;
BEGIN
    OPEN c_pessoa;
    -- loop p fazer as buscas
    LOOP
        FETCH c_pessoa INTO v_nome, v_data_nascimento;

        EXIT WHEN c_pessoa%NOTFOUND;

        -- Calculando a idade
        v_age := EXTRACT(YEAR FROM v_today) - EXTRACT(YEAR FROM v_data_nascimento);

        -- Comparando as idades usando IF, ELSIF e ELSE
        IF v_age < 30 THEN
            DBMS_OUTPUT.PUT_LINE(v_nome || ' é jovem.');
        ELSIF v_age >= 30 AND v_age < 45 THEN
            DBMS_OUTPUT.PUT_LINE(v_nome || ' tá na meia idade');
        ELSE
            DBMS_OUTPUT.PUT_LINE(v_nome || ' já tá no segundo tempo');
        END IF;
    END LOOP;

    -- fecha o cursor
    CLOSE c_pessoa;
END;





