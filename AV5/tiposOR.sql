--ENTIDADES
CREATE OR REPLACE TYPE tp_endereco AS OBJECT(
    estado VARCHAR2 (50),
    cidade VARCHAR2 (50),
    rua VARCHAR2 (50),
    numero NUMBER,
    complemento VARCHAR2(50),
    cep VARCHAR2 (5)
);

CREATE OR REPLACE TYPE tp_telefone AS OBJECT (
    numero NUMBER
    
);

CREATE OR REPLACE TYPE tp_telefones AS VARRAY(3) OF tp_telefone;

CREATE OR REPLACE TYPE tp_pessoa AS OBJECT (

    nome VARCHAR2(50),
    sexo VARCHAR2 (1),
    data_nascimento DATE, 
    cpf VARCHAR2 (5)
)NOT FINAL ;

-- **********************************************************************************
-- RELACIONAMENTOS