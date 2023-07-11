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

CREATE TABLE dados_acompanhante (
    
    nome VARCHAR2(255),
    cpf_acompanhante VARCHAR2(5),

    CONSTRAINT dados_acompanhante_pk PRIMARY KEY (cpf_acompanhante)

);

CREATE TABLE acompanhante (

    cpf_acompanhante_fk VARCHAR2(5),
    cpf_pac VARCHAR2(5),

    CONSTRAINT acompanhante_pk PRIMARY KEY (cpf_acompanhante_fk,cpf_pac),
    CONSTRAINT acompanhante_dados_fk FOREIGN KEY (cpf_acompanhante_fk) REFERENCES dados_acompanhante (cpf_acompanhante),
    CONSTRAINT acompanhante_pac_fk FOREIGN KEY (cpf_pac) REFERENCES paciente(cpf_p)

);


CREATE TABLE tarja_medicamento (

    tarja VARCHAR2(50) NOT NULL,
    nome_med VARCHAR2(255),

    CONSTRAINT tarja_medicamento_pk PRIMARY KEY (nome_med)
);


CREATE TABLE medicamento (

    dosagem VARCHAR2(10),
    nome_medicamento VARCHAR2 (255),

    CONSTRAINT medicamento_pk PRIMARY KEY (dosagem,nome_medicamento),
    CONSTRAINT medicamento_fk FOREIGN KEY (nome_medicamento) REFERENCES tarja_medicamento (nome)


);

-- REALACIONAMENTOS 

CREATE TABLE cirurgia (

    cpf_medico VARCHAR2(5),
    cpf_enfermeiro VARCHAR2(5),
    data_cirurgia DATE,
    cpf_paciente VARCHAR2(5),

    CONSTRAINT cirurgia_pk PRIMARY KEY (cpf_medico,cpf_enfermeiro,data_cirurgia,cpf_paciente),
    CONSTRAINT cirurgia_med_fk FOREIGN KEY (cpf_medico) REFERENCES medico (cpf_func),
    CONSTRAINT cirurgia_enf_fk FOREIGN KEY (cpf_enfermeiro) REFERENCES enfermeiro (cpf_func),
    CONSTRAINT cirurgia_pac_fk FOREIGN KEY (cpf_paciente) REFERENCES paciente (cpf_p)
);

CREATE TABLE medico_paciente (
    cpf_medico VARCHAR2(5),
    cpf_paciente VARCHAR2(5),
    data_atendimento DATE,

    CONSTRAINT medico_paciente_pk PRIMARY KEY (cpf_medico,cpf_paciente,data_atendimento),
    CONSTRAINT medico_paciente_med_fk FOREIGN KEY (cpf_medico) REFERENCES medico (cpf_func),
    CONSTRAINT medico_paciente_pac_fk FOREIGN KEY (cpf_paciente) REFERENCES paciente (cpf_p)
    
);
CREATE TABLE preescreve (

    cpf_medico VARCHAR2(5),
    cpf_paciente VARCHAR2(5),
    data_atendimento DATE,
    dosagem VARCHAR2 (10),
    nome_med VARCHAR2 (255),
    frequencia VARCHAR2 (50) NOT NULL,


    CONSTRAINT preescreve_pk PRIMARY KEY (cpf_medico,cpf_paciente,data_atendimento,dosagem,nome_med),
    CONSTRAINT preescreve_medpac_fk FOREIGN KEY (cpf_medico,cpf_paciente, data_atendimento) REFERENCES medico_paciente (cpf_medico,cpf_paciente,data_atendimento),
    CONSTRAINT preescreve_med_fk FOREIGN KEY (nome_med,dosagem) REFERENCES medicamento (nome_medicamento,dosagem)
);


