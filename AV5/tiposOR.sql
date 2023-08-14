--ENTIDADES
CREATE OR REPLACE TYPE tp_endereco AS OBJECT(
    estado VARCHAR2 (50),
    cidade VARCHAR2 (50),
    rua VARCHAR2 (50),
    numero NUMBER
    cep VARCHAR2 (5)
);

CREATE OR REPLACE TYPE tp_telefone AS OBJECT (
    numero NUMBER, 
    cpf_fk VARCHAR2(5)
);

CREATE OR REPLACE TYPE tp_telefones AS VARRAY(3) OF tp_telefone;

-- **********************************************************************************
-- RELACIONAMENTOS