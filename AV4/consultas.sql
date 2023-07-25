-- Consultas SQL

-- INSERT
INSERT INTO preescreve (cpf_medico,cpf_paciente,data_atendimento,dosagem,nome_med,frequencia) VALUES ('52984','93642',to_date('2021-10-17','yyyy-mm-dd'),'10 mg','Buscopan','A cada 8 horas');
INSERT INTO preescreve (cpf_medico,cpf_paciente,data_atendimento,dosagem,nome_med,frequencia) VALUES ('52984','19435',to_date('2021-11-12','yyyy-mm-dd'),'10 mg','Buscopan','A cada 8 horas');

-- DELETE
DELETE FROM agenda WHERE agenda.cpf_paciente = '86723';


-- GROUP BY
-- retorna a distribuição de pessoas por cep, em cada cidade.
SELECT cidade, COUNT(cep) as total FROM endereco
GROUP BY cidade;

-- BETWEEN
-- retorna o cpf das pessoas que ganham entre 3000 e 7000 reais de salário.
SELECT cargo, salario FROM salario
WHERE salario.salario BETWEEN '3000' and '7000';



-- UPDATE
-- atualiza o nome de uma pessoa pelo cpf.
UPDATE pessoa SET nome = 'Júlia Caroline Maciel'
WHERE cpf ='42058';



--INNER JOIN
-- junta as duas tabelas, pessoa e endereco, a partir da cláusula cep.
SELECT pessoa.numero, pessoa.cpf, pessoa.nome, pessoa.SEXO, pessoa.data_nascimento,
endereco.estado, endereco.cidade, endereco.rua, endereco.cep, pessoa.complemento
FROM pessoa
INNER JOIN endereco ON pessoa.cep = endereco.cep;

-- MAX 
-- Retorna os salários máximos de cada cargo
SELECT cargo, MAX(salario) AS max_salario
FROM salario
GROUP BY cargo

-- MIN 
-- Retorna os salários mínimos de cada cargo
SELECT cargo, MIN(salario) AS min_salario
FROM salario
GROUP BY cargo


-- FULL OUTER JOIN 
-- Retorna o endereco do funcionário de cpf = '93210'
SELECT e.estado, e.cidade, e.cep,e.rua,p.nome, p.complemento,p.numero
FROM funcionario f
FULL OUTER JOIN pessoa p ON f.cpf_fk = p.cpf
FULL OUTER JOIN endereco e ON p.cep = e.cep
WHERE f.cpf_fk = '93210';

-- GRANT/ REVOKE 
-- Garante todos os privilegios sobre a tabela médico 
GRANT ALL PRIVILEGES ON medico TO PUBLIC;
-- Não permite que  o privilegio de deletar seja público
REVOKE DELETE ON medico FROM PUBLIC;


-- Uniou ou Intersect ou minus
-- mostra os dados de todos os funionários que não são médicos

SELECT cpf_func FROM atendente UNION SELECT cpf_func FROM enfermeiro;


-- IS NOT NULL
-- seleciona os prontuários que não possuem NULL como valor do peso
SELECT peso FROM prontuario
WHERE peso IS NOT NULL;


-- LIKE
-- seleciona as pessoas que tenham "Costa" no nome
SELECT nome FROM pessoa
WHERE nome LIKE '%Costa%';


-- SELECT-FROM-WHERE
-- seleciona os salários maiores que 7000
SELECT salario FROM salario
WHERE salario > 7000;

-- IN
-- in possibilita especificar valores múltiplos em uma clausula WHERE
--selecionar pessoas especializadas em cirurgia geral e anestesiologia
SELECT cpf_medico FROM especializacao
WHERE especializacao IN ('Cirurgia Geral', 'Anestesiologia');

-- SUBCONSULTA COM OPERADOR RELACIONAL
-- seleciona os detalhes da tabela salário referente aos funcionários que possuam seu cpf ligado a tabela de médicos
SELECT cargo, cpf_func, salario FROM salario
WHERE cpf_func IN (SELECT cpf_func FROM medico);

-- SUBCONSULTA COM ANY
-- seleciona os detalhes da tabela salário referente aos funcionários que possuam seu cpf ligado a tabela de atendente
SELECT cargo, cpf_func, salario FROM salario 
WHERE cpf_func = ANY (SELECT cpf_func FROM atendente);

-- CONSULTA UTILIZANDO O HAVING e AVG
-- retorna o cargo e a média salarial dos funcionários cujo salário médio é maior ou igual a 5000
SELECT cargo, AVG(salario) AS media_salario
FROM salario
GROUP BY cargo
HAVING AVG(salario) >= 5000;


-- CONSULTA UTILIZANDO O CREATE INDEX
-- Cria um índice chamado idx_pessoa_cpf na tabela pessoa com base na coluna cpf.
CREATE INDEX idx_pessoa_cpf ON pessoa (cpf);


-- Adiciona uma nova coluna chamada "email" à tabela "pessoa"
ALTER TABLE pessoa
ADD email VARCHAR2(100);



--Consulta utilizando ALL como subconsulta e order by
--Está pegando o nome das pessoas que estão participando da cirurgia  acima da data de 03/05/2022
select p.nome as paciente, p2.nome as medico, p3.nome as enfermeiro,c.data_cirurgia from cirurgia c
join pessoa p on c.cpf_paciente = p.cpf
join pessoa p2 on c.cpf_medico = p2.cpf
join pessoa p3 on c.cpf_enfermeiro =p3.cpf
where c.data_cirurgia > all(select data_cirurgia from cirurgia
    							where data_cirurgia <= to_date('2022-05-03','yyyy-mm-dd'))
order by c.data_cirurgia asc;

--Consulta utilizando count, adquirindo a quantidade de cada cirurgias feitas por cada médico
select p.nome,cpf_func as cpf_medico, count(data_cirurgia) as numero_cirurgias_feitas from cirurgia c
right join medico m on c.cpf_medico = m.cpf_func
join pessoa p on m.cpf_func = p.cpf
group by m.cpf_func, p.nome;

--Consulta que lista os pacientes na qual o prontuário informa que está com febre
--utilizando in como subconsulta
select p.nome, p.cpf, pr.temperatura from pessoa p
join prontuario pr on p.cpf = pr.cpf_paciente
where p.cpf in(select cpf_paciente from prontuario
    			where temperatura >= '37°C');


-- CREATE VIEW
-- criar uma tabela virtual de médicos pediatras, baseada na tabela real
CREATE VIEW [Pediatras] AS
SELECT crm, cpf_medico
FROM medico
WHERE especializacao = 'Pediatra';

-- Consultas PL/SQL ***********************************************


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


-- CURSOR (OPEN, CLOSE, FETCH) e Loop Exit When
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


-- EXCEPTION WHEN
-- procura se há uma determinada nome na tabela "pessoa"
DECLARE
    v_nome pessoa.nome%TYPE := 'Clodoaldo Ruiz Dias';
BEGIN
    -- consulta para obter os detalhes da pessoa
    SELECT nome INTO v_nome FROM pessoa WHERE nome = v_nome;
    DBMS_OUTPUT.PUT_LINE('Nome da pessoa: ' || v_nome);
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        -- tratamento da exceção quando a pessoa não for encontrado na tabela
        DBMS_OUTPUT.PUT_LINE('Pessoa não encontrada na tabela!');
    WHEN OTHERS THEN
        -- tratamento de outras exceções não previstas
        DBMS_OUTPUT.PUT_LINE('Erro inesperado: ' || SQLERRM);
END;


-- CREATE OR REPLACE PACKAGE
-- pacote que tem uma função onde retorna o nome e o cep da pessoa a partir do seu cpf
CREATE OR REPLACE PACKAGE PessoaPackage AS
    -- declaração do tipo de dado RECORD para representar os detalhes de uma pessoa
    TYPE PessoaRecord IS RECORD (
        cpf            VARCHAR2(5),
        nome           VARCHAR2(255),
        cep            VARCHAR2(5)
    );

    -- declaração da função para obter o nome e cep da pessoa pelo cpf
    FUNCTION GetNomeECep(cpf IN VARCHAR2) RETURN PessoaRecord;
END PessoaPackage;


-- USO DE RECORD
-- implementação da função "GetNomeECep" dentro do pacote
CREATE OR REPLACE PACKAGE BODY PessoaPackage AS
    -- implementação da função para obter os detalhes da pessoa pelo cpf
    FUNCTION GetNomeECep(cpf IN VARCHAR2) RETURN PessoaRecord IS
        pessoa_details PessoaRecord;
    BEGIN
        SELECT cpf, nome, cep INTO pessoa_details FROM pessoa
        WHERE cpf = cpf;

        RETURN pessoa_details;
    EXCEPTION
        WHEN NO_DATA_FOUND THEN
            -- tratamento da exceção quando a pessoa não for encontrada na tabela
            pessoa_details.cpf := 'CPF não encontrado';
            pessoa_details.nome := '';
            pessoa_details.cep := '';
            RETURN pessoa_details;
    END GetNomeECep;
END PessoaPackage;


-- WHILE 

DECLARE
  -- Declaração de variáveis para armazenar os dados de todas pessoas e seus salários
  v_nome pessoa.nome%TYPE;
  v_cargo salario.cargo%TYPE;
  v_salario salario.salario%TYPE;
  v_cursor SYS_REFCURSOR; -- Cursor para armazenar os dados da tabela
BEGIN
  -- Abrindo o cursor com os dados da tabela "pessoa"
  OPEN v_cursor FOR
    SELECT P.nome, S.cargo, S.salario FROM salario  S,
    PESSOA P WHERE P.cpf = S.cpf_func;
    

  -- Inicializando as variáveis
  v_nome := '';
  v_cargo := '';
  v_salario := 0;

  -- Loop para percorrer os registros das tabelas utilizando WHILE
  WHILE TRUE LOOP
    -- Lendo os dados do cursor para as variáveis
    FETCH v_cursor INTO v_nome, v_cargo, v_salario;

    -- Saindo do loop quando não houver mais registros
    EXIT WHEN v_cursor%NOTFOUND;

    -- Condição para filtrar os salários maiores que 8000
    IF v_salario >= 8000 THEN
      -- Exibindo os dados das pessoa cujos salários são maiores que 8000
      DBMS_OUTPUT.PUT_LINE('Nome: ' || v_nome || ', Cargo: ' || v_cargo || ', Salário: ' || v_salario);
    END IF;
  END LOOP;

  -- Fechando o cursor
  CLOSE v_cursor;
END;
/

-- PROCEDURE
  
-- Criação de uma procedure que retorna o nome e o CPF de uma pessoa a partir do seu código
CREATE OR REPLACE PROCEDURE GetNomeECPF (
    p_codigo IN NUMBER,
    p_nome OUT VARCHAR2,
    p_cpf OUT VARCHAR2
)
AS
BEGIN
    SELECT nome, cpf INTO p_nome, p_cpf
    FROM pessoa
    WHERE codigo = p_codigo;
END;
/

--CREATE OR REPLACE TRIGGER (LINHA)


-- Criação de um trigger que atualiza a data de modificação sempre que uma linha da tabela pessoa é atualizada.
CREATE OR REPLACE TRIGGER pessoa_after_update
AFTER UPDATE ON pessoa
FOR EACH ROW
BEGIN
    UPDATE pessoa
    SET data_modificacao = SYSDATE
    WHERE codigo = :OLD.codigo;
END;
/


--CREATE OR REPLACE TRIGGER (COMANDO)

-- Criação de um trigger que valida a inserção de um novo funcionário para garantir que o salário seja maior que 2000.
CREATE OR REPLACE TRIGGER valida_salario_funcionario
BEFORE INSERT ON funcionario
FOR EACH ROW
DECLARE
    salario_minimo NUMBER := 2000;
BEGIN
    IF :NEW.salario < salario_minimo THEN
        RAISE_APPLICATION_ERROR(-20101, 'O salário do funcionário deve ser maior que ' || salario_minimo);
    END IF;
END;
/



--Bloco anonimo + %rowtype, printa na tela informacoes sobre a cirurgia do paciente de cpf 19435
declare
cirurgia_pac cirurgia%rowtype;
begin
select * into cirurgia_pac from cirurgia where cpf_paciente = '19435';
dbms_output.put_line('Cpf medico: '||cirurgia_pac.cpf_medico||' Cpf enfermeiro: '|| cirurgia_pac.cpf_enfermeiro||' Cpf paciente: '|| cirurgia_pac.cpf_paciente||' Data da cirurgia: ' ||cirurgia_pac.data_cirurgia);
end;
/
-- CREATE VIEW
-- criar uma tabela virtual de médicos pediatras, baseada na tabela real
CREATE VIEW [Pediatras] AS
SELECT crm, cpf_medico
FROM especializacao
WHERE especializacao = 'Pediatra';


-- CREATE TABLE
-- cria uma tabela com o médico honrado do mês
CREATE TABLE honrado ( 
    cpf_func VARCHAR2(5),
    nome VARCHAR2(255) NOT NULL,
    cpf_lider VARCHAR2(5)
);
INSERT INTO honrado(cpf_func, nome, cpf_lider) VALUES ('12345', 'Carlos da Silva Nascimento', '12345');

--FOR IN LOOP
-- seleciona 3 funcionarios aleatorios
FOR i IN 1 .. 3
LOOP
    SELECT cpf_fk FROM funcionario
    ORDER BY RAND ( )  
    LIMIT 1  
END LOOP;

--CREATE FUNCTION
--funcao que calcula os salarios em dolar
CREATE FUNCTION ObterSalarioEmDolar (@salario int)
RETURNS float
    AS 
    BEGIN
        RETURN @salario * 4.75
    END