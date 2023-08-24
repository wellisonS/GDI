--ENTIDADES
CREATE OR REPLACE TYPE tp_endereco AS OBJECT(
    estado VARCHAR2 (50),
    cidade VARCHAR2 (50),
    rua VARCHAR2 (50),
    numero NUMBER,
    complemento VARCHAR2(50),
    cep VARCHAR2 (5)
);
/

CREATE OR REPLACE TYPE tp_telefone AS OBJECT (
    numero NUMBER
    
);
/

CREATE OR REPLACE TYPE tp_telefones AS VARRAY(3) OF tp_telefone;
/
CREATE OR REPLACE TYPE tp_pessoa AS OBJECT (

    nome VARCHAR2(50),
    sexo VARCHAR2 (1),
    data_nascimento DATE, 
    cpf VARCHAR2 (5),
    endereco tp_endereco,
    telefones tp_telefones,
    MEMBER FUNCTION detalhes RETURN VARCHAR2
) NOT INSTANTIABLE NOT FINAL;
/

CREATE OR REPLACE TYPE BODY tp_pessoa AS
    MEMBER FUNCTION detalhes RETURN VARCHAR2 IS
    BEGIN
        RETURN 'Nome: ' || nome || ', CPF: ' || cpf;
    END detalhes;
END;
/
CREATE OR REPLACE TYPE tp_medico UNDER tp_pessoa (
    crm VARCHAR2(5),
    especializacao VARCHAR2(50),
    
    -- Herança dos atributos de tp_pessoa
    MEMBER FUNCTION get_nome RETURN VARCHAR2

    
   
);
/

CREATE TYPE tp_acompanhante AS OBJECT(
    nome varchar2(30),
    cpf_acompanhante varchar2(30)
);
/

CREATE TYPE tp_prontuario AS OBJECT(
    altura VARCHAR2(4),
    pressao VARCHAR2(5),
    peso VARCHAR2(6),
    temperatura VARCHAR2(6)
);
/

CREATE OR REPLACE TYPE tp_paciente UNDER tp_pessoa(
    plano_de_saude VARCHAR2(50),
    prontuario tp_prontuario,
    acompanhante tp_acompanhante,
    OVERRIDING MEMBER FUNCTION detalhes return VARCHAR2,
    FINAL MEMBER FUNCTION print_prontuario return VARCHAR2
);
/
CREATE OR REPLACE TYPE BODY tp_paciente AS
OVERRIDING MEMBER FUNCTION detalhes RETURN VARCHAR2 IS
BEGIN
    RETURN 'Nome paciente: ' || nome || ', CPF paciente: ' || cpf || 
           ', Nome acompanhante: ' || acompanhante.nome || ', CPF acompanhante: ' || acompanhante.cpf_acompanhante;
END detalhes;
FINAL MEMBER FUNCTION print_prontuario RETURN VARCHAR2 IS
    BEGIN
        RETURN 'cpf paciente: ' || cpf || ' plano de saúde: ' || plano_de_saude || ' pressão: ' || prontuario.pressao || ' Altura: ' || prontuario.altura || ' Peso: ' || prontuario.peso || ' Temperatura: ' || prontuario.temperatura;
END print_prontuario;
END;
/

CREATE OR REPLACE TYPE BODY tp_medico AS
    MEMBER FUNCTION get_nome RETURN VARCHAR2 IS
    BEGIN
        RETURN self.nome;
    END get_nome;
END;

CREATE OR REPLACE TYPE tp_enfermeiro UNDER tp_pessoa (
    coren VARCHAR2(5),
    --Herda os atributos de tp_pessoa

    MEMBER PROCEDURE exibir_informacoes

);

--REF e WITH ROWID
CREATE OR REPLACE TYPE tp_atendente AS OBJECT(
    endereco    REF tp_endereco,
    telefone    WITH ROWID REFERENCES tp_telefone
) NOT FINAL;
/

CREATE OR REPLACE TYPE BODY tp_enfermeiro AS
    MEMBER PROCEDURE exibir_informacoes IS
    BEGIN
        DBMS_OUTPUT.PUT_LINE('Nome: ' || self.nome);
        DBMS_OUTPUT.PUT_LINE('Sexo: ' || self.sexo);
        DBMS_OUTPUT.PUT_LINE('Data de Nascimento: ' || TO_CHAR(self.data_nascimento, 'DD-MON-YYYY'));
        DBMS_OUTPUT.PUT_LINE('Endereço: ' || self.endereco.rua || ', ' || self.endereco.numero || ', ' || self.endereco.cidade || ', ' || self.endereco.estado);
        DBMS_OUTPUT.PUT_LINE('Telefone: ' || self.telefone.numero);
        DBMS_OUTPUT.PUT_LINE('CPF: ' || self.cpf);
        DBMS_OUTPUT.PUT_LINE('COREN: ' || self.coren);
    END exibir_informacoes;
END;
/

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

CREATE OR REPLACE TYPE tp_funcionario UNDER tp_pessoa (
    -- Herda de tp_pessoa
    
    CONSTRUCTOR FUNCTION tp_funcionario (x1 tp_funcionario) RETURN SELF AS RESULT

);
/

CREATE OR REPLACE TYPE BODY tp_funcionario AS
    CONSTRUCTOR FUNCTION tp_funcionario (x1 tp_funcionario) RETURN SELF AS RESULT IS
    BEGIN
        SELF.nome: x1.nome;
        SELF.sexo: x1.sexo;
        SELF.data_nascimento: x1.data_nascimento;
        SELF.endereco: x1.endereco;
        SELF.telefone: x1.telefone;
        SELF.cpf: x1.cpf;
        RETURN;
    END;
END;
/

CREATE OR REPLACE TYPE tp_funcionario UNDER tp_pessoa (
    -- ORDER
    cargo VARCHAR2 (50),
    cpf_func VARCHAR2(5),
    salario NUMBER NOT NULL,
    MEMBER PROCEDURE exibir_informacoes,
    ORDER MEMBER FUNCTION orderer(f tp_funcionario) RETURN NUMBER NOT NULL

);
/

-- **********************************************************************************
-- RELACIONAMENTOS
