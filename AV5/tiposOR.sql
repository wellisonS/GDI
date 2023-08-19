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
 /

CREATE OR REPLACE TYPE tp_telefones AS VARRAY(3) OF tp_telefone;
/
CREATE OR REPLACE TYPE tp_pessoa AS OBJECT (

    nome VARCHAR2(50),
    sexo VARCHAR2 (1),
    data_nascimento DATE, 
    endereco tp_endereco,
    telefone tp_telefones,
    cpf VARCHAR2 (5)
) NOT FINAL NOT INSTANTIABLE;
/
CREATE OR REPLACE TYPE tp_medico UNDER tp_pessoa (
    crm VARCHAR2(5),
    especializacao VARCHAR2(50),
    
    -- Herança dos atributos de tp_pessoa
    MEMBER FUNCTION get_nome RETURN VARCHAR2

    
   
);
/
CREATE OR REPLACE TYPE BODY tp_medico AS
    MEMBER FUNCTION get_nome RETURN VARCHAR2 IS
    BEGIN
        RETURN self.nome;
    END get_nome;
END;

-- **********************************************************************************
-- RELACIONAMENTOS