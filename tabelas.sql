-- Check List
--CREATE TABLE (OK)
--INSERT INTO 
--CLÁUSULA CONSTRAINT EM CREATE TABLE (OK)
--CREATE SEQUENCE 
--CLÁUSULA CHECK EM CREATE TABLE  (OK)



CREATE TABLE endereco (
    numero NUMBER NOT NULL,
    estado VARCHAR2(50) NOT NULL,
    cidade VARCHAR2(50) NOT NULL,
    rua VARCHAR2(50) NOT NULL,
    complemento VARCHAR2(50),
    cep VARCHAR2(5),

    CONSTRAINT endereco_pkey PRIMARY KEY (cep)
    
);



-- Pessoa
CREATE TABLE pessoa (
    cpf VARCHAR2(5),
    nome VARCHAR2(255) NOT NULL,
    SEXO CHAR,
    data_nascimento DATE NOT NULL,
    cep VARCHAR2(5) NOT NULL,
    numero NUMBER NOT NULL, 
    complemento VARCHAR2(255),

    CONSTRAINT pessoa_pkey PRIMARY KEY (cpf),
    CONSTRAINT pessoa_fkey FOREIGN KEY (cep) REFERENCES endereco (cep),
    CONSTRAINT pessoa_checkGenero CHECK (sexo = 'M' OR sexo = 'F')

);


CREATE TABLE telefone (

    numero NUMBER,
    cpf_fk VARCHAR2(5),

    CONSTRAINT telefone_pk PRIMARY KEY (numero,cpf_fk),
    CONSTRAINT telefone_fk FOREIGN KEY (cpf_fk) REFERENCES pessoa(cpf)
);


CREATE TABLE funcionario (

    cpf_fk VARCHAR2(5),

    CONSTRAINT funcionario_pk PRIMARY KEY (cpf_fk),
    CONSTRAINT funcionario_fk FOREIGN KEY (cpf_fk) REFERENCES pessoa(cpf)
);


CREATE TABLE salario (

    cargo VARCHAR2 (50),
    cpf_func VARCHAR2(5),
    salario NUMBER NOT NULL,
    CONSTRAINT salario_pk PRIMARY KEY (cargo, cpf_func),
    CONSTRAINT salario_fk FOREIGN KEY (cpf_func) REFERENCES funcionario(cpf_fk)

);


CREATE TABLE medico (


    cpf_func VARCHAR2(5),
    cpf_lider VARCHAR2(5),

    CONSTRAINT medico_pk PRIMARY KEY (cpf_func),
    CONSTRAINT medico_fk FOREIGN KEY (cpf_func) REFERENCES funcionario (cpf_fk),
    CONSTRAINT medico_lider_fk FOREIGN KEY (cpf_lider) REFERENCES medico (cpf_func)
);


CREATE TABLE especializacao(

    crm VARCHAR2(5),
    especializacao VARCHAR2(50) NOT NULL,
    cpf_medico VARCHAR2(5) NOT NULL,

    CONSTRAINT especializacao_pk PRIMARY KEY (crm),
    CONSTRAINT especializacao_fk FOREIGN KEY (cpf_medico) REFERENCES medico(cpf_func)
);

CREATE TABLE enfermeiro (

    cpf_func VARCHAR2(5),
    coren VARCHAR2(5) NOT NULL,
    
    CONSTRAINT enfermeiro_pk PRIMARY KEY (cpf_func),
    CONSTRAINT enfermeiro_fk FOREIGN KEY (cpf_func) REFERENCES funcionario (cpf_fk)
);


CREATE TABLE atendente (

    cpf_func VARCHAR2(5),
    
    CONSTRAINT atendente_pk PRIMARY KEY (cpf_func),
    CONSTRAINT atendente_fk FOREIGN KEY (cpf_func) REFERENCES funcionario (cpf_fk)
);


CREATE TABLE paciente (

    cpf_p VARCHAR2(5),
    plano_de_saude VARCHAR2(50),

    CONSTRAINT paciente_pk PRIMARY KEY (cpf_p),
    CONSTRAINT paciente_fk FOREIGN KEY (cpf_p) REFERENCES pessoa(cpf)
);


CREATE TABLE acompanhante (


    
);