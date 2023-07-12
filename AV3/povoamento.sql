-- ENTIDADES
CREATE SEQUENCE num INCREMENT by 1 START WITH 80;
-- Endereço
INSERT INTO endereco (numero,estado,cidade,rua,complemento,cep) VALUES (num.NEXTVAL,'PE','Camaragibe','Rua Santana','','12345'); 
INSERT INTO endereco (numero,estado,cidade,rua,complemento,cep) VALUES (num.NEXTVAL,'PE','Recife','Rua do sol','','12135')
INSERT INTO endereco (numero,estado,cidade,rua,complemento,cep) VALUES (num.NEXTVAL,'PE','Recife','Rua Rio Igarape','','45627')
INSERT INTO endereco (numero,estado,cidade,rua,complemento,cep) VALUES (num.NEXTVAL,'PE','Recife','Rua da Moeda','','54642')
INSERT INTO endereco (numero,estado,cidade,rua,complemento,cep) VALUES (num.NEXTVAL,'PE','Olinda','Rua Afonso Maria','Proximo ao bar do Ze','67892')
INSERT INTO endereco (numero,estado,cidade,rua,complemento,cep) VALUES (num.NEXTVAL,'PE','Jaboatao dos Guararapes','Travessa Pedra Lavrada','','12735')
INSERT INTO endereco (numero,estado,cidade,rua,complemento,cep) VALUES (num.NEXTVAL,'PE','Paulista','Rua Solmar','','56894')
INSERT INTO endereco (numero,estado,cidade,rua,complemento,cep) VALUES (num.NEXTVAL,'PE','Recife','Rua do Sol','Depois da igreja','73945')
INSERT INTO endereco (numero,estado,cidade,rua,complemento,cep) VALUES (num.NEXTVAL,'PE','Salgueiro','Rua das Hortencias','','23956')
INSERT INTO endereco (numero,estado,cidade,rua,complemento,cep) VALUES (num.NEXTVAL,'PE','Cabo de Santo Agostinho','Rua Albatroz','','32154')
INSERT INTO endereco (numero,estado,cidade,rua,complemento,cep) VALUES (num.NEXTVAL,'PE','Olinda','Rua Alegria','Proximo ao armazem','45087')
INSERT INTO endereco (numero,estado,cidade,rua,complemento,cep) VALUES (num.NEXTVAL,'PE','Recife','Rua Rio Grande','','98752')
INSERT INTO endereco (numero,estado,cidade,rua,complemento,cep) VALUES (num.NEXTVAL,'PE','Camaragibe','Rua Belmino Gouveia','Depois da Souza Irmaos','95173')

INSERT INTO endereco (numero,estado,cidade,rua,complemento,cep) VALUES (num.NEXTVAL,'PE','Olinda','Rua Alto Nova Olinda','','15964')
INSERT INTO endereco (numero,estado,cidade,rua,complemento,cep) VALUES (num.NEXTVAL,'SP','Guarulhos','Rua Oscar Lima','','89746')
INSERT INTO endereco (numero,estado,cidade,rua,complemento,cep) VALUES (num.NEXTVAL,'RJ','Rio de Janeiro','Rua Manoel Carneiro','','25896')
INSERT INTO endereco (numero,estado,cidade,rua,complemento,cep) VALUES (num.NEXTVAL,'SP','Sao Paulo','Rua Augusta','','74153')
INSERT INTO endereco (numero,estado,cidade,rua,complemento,cep) VALUES (num.NEXTVAL,'GO','Goiania','Segunda Avenida Radial','','75368')
INSERT INTO endereco (numero,estado,cidade,rua,complemento,cep) VALUES (num.NEXTVAL,'PE','Olinda','Rua Alegria','','14796')
INSERT INTO endereco (numero,estado,cidade,rua,complemento,cep) VALUES (num.NEXTVAL,'PE','Recife','Rua do Sol','','15974')
INSERT INTO endereco (numero,estado,cidade,rua,complemento,cep) VALUES (num.NEXTVAL,'PE','Camaragibe','Rua Itaporanga','','65489')
INSERT INTO endereco (numero,estado,cidade,rua,complemento,cep) VALUES (num.NEXTVAL,'PE','Sao Lourenco da Mata', 'Rua Beira Rio','','99851')
INSERT INTO endereco (numero,estado,cidade,rua,complemento,cep) VALUES (num.NEXTVAL,'PE','Recife','Rua Igarape','','11443')
INSERT INTO endereco (numero,estado,cidade,rua,complemento,cep) VALUES (num.NEXTVAL,'PE','Recife','Rua da Soledade','','20328')


-- Pessoa 
INSERT INTO pessoa (cpf,nome,SEXO,data_nascimento,cep,numero,complemento) VALUES ('12345','Carlos','M',to_date('1997-04-05','yyyy-mm-dd'), '12345','81','');
INSERT INTO pessoa (cpf,nome,SEXO,data_nascimento,cep,numero,complemento) VALUES ('56789')
INSERT INTO pessoa (cpf,nome,SEXO,data_nascimento,cep,numero,complemento) VALUES ()
INSERT INTO pessoa (cpf,nome,SEXO,data_nascimento,cep,numero,complemento) VALUES ()
INSERT INTO pessoa (cpf,nome,SEXO,data_nascimento,cep,numero,complemento) VALUES ()
INSERT INTO pessoa (cpf,nome,SEXO,data_nascimento,cep,numero,complemento) VALUES ()
INSERT INTO pessoa (cpf,nome,SEXO,data_nascimento,cep,numero,complemento) VALUES ()
INSERT INTO pessoa (cpf,nome,SEXO,data_nascimento,cep,numero,complemento) VALUES ()
INSERT INTO pessoa (cpf,nome,SEXO,data_nascimento,cep,numero,complemento) VALUES ()
INSERT INTO pessoa (cpf,nome,SEXO,data_nascimento,cep,numero,complemento) VALUES ()
INSERT INTO pessoa (cpf,nome,SEXO,data_nascimento,cep,numero,complemento) VALUES ()
INSERT INTO pessoa (cpf,nome,SEXO,data_nascimento,cep,numero,complemento) VALUES ()
INSERT INTO pessoa (cpf,nome,SEXO,data_nascimento,cep,numero,complemento) VALUES ()
INSERT INTO pessoa (cpf,nome,SEXO,data_nascimento,cep,numero,complemento) VALUES ()
INSERT INTO pessoa (cpf,nome,SEXO,data_nascimento,cep,numero,complemento) VALUES ()
INSERT INTO pessoa (cpf,nome,SEXO,data_nascimento,cep,numero,complemento) VALUES ()
INSERT INTO pessoa (cpf,nome,SEXO,data_nascimento,cep,numero,complemento) VALUES ()
INSERT INTO pessoa (cpf,nome,SEXO,data_nascimento,cep,numero,complemento) VALUES ()
INSERT INTO pessoa (cpf,nome,SEXO,data_nascimento,cep,numero,complemento) VALUES ()
INSERT INTO pessoa (cpf,nome,SEXO,data_nascimento,cep,numero,complemento) VALUES ()
INSERT INTO pessoa (cpf,nome,SEXO,data_nascimento,cep,numero,complemento) VALUES ()
INSERT INTO pessoa (cpf,nome,SEXO,data_nascimento,cep,numero,complemento) VALUES ()
INSERT INTO pessoa (cpf,nome,SEXO,data_nascimento,cep,numero,complemento) VALUES ()
INSERT INTO pessoa (cpf,nome,SEXO,data_nascimento,cep,numero,complemento) VALUES ()
INSERT INTO pessoa (cpf,nome,SEXO,data_nascimento,cep,numero,complemento) VALUES ()

-- Telefone 
INSERT INTO telefone (numero,cpf_fk) VALUES (40028922,'12345');
INSERT INTO telefone (numero,cpf_fk) VALUES ();
INSERT INTO telefone (numero,cpf_fk) VALUES ();
INSERT INTO telefone (numero,cpf_fk) VALUES ();
INSERT INTO telefone (numero,cpf_fk) VALUES ();
INSERT INTO telefone (numero,cpf_fk) VALUES ();
INSERT INTO telefone (numero,cpf_fk) VALUES ();
INSERT INTO telefone (numero,cpf_fk) VALUES ();
INSERT INTO telefone (numero,cpf_fk) VALUES ();
INSERT INTO telefone (numero,cpf_fk) VALUES ();
INSERT INTO telefone (numero,cpf_fk) VALUES ();
INSERT INTO telefone (numero,cpf_fk) VALUES ();
INSERT INTO telefone (numero,cpf_fk) VALUES ();
INSERT INTO telefone (numero,cpf_fk) VALUES ();
INSERT INTO telefone (numero,cpf_fk) VALUES ();
INSERT INTO telefone (numero,cpf_fk) VALUES ();
INSERT INTO telefone (numero,cpf_fk) VALUES ();
INSERT INTO telefone (numero,cpf_fk) VALUES ();
INSERT INTO telefone (numero,cpf_fk) VALUES ();
INSERT INTO telefone (numero,cpf_fk) VALUES ();
INSERT INTO telefone (numero,cpf_fk) VALUES ();
INSERT INTO telefone (numero,cpf_fk) VALUES ();
INSERT INTO telefone (numero,cpf_fk) VALUES ();
INSERT INTO telefone (numero,cpf_fk) VALUES ();
INSERT INTO telefone (numero,cpf_fk) VALUES ();

-- Funcionario 


-- Salario 


-- Médico 


-- Especializacao 


-- Enfermeiro 


-- Atendente 


-- Paciente 

-- Dados Acompanhante 


-- Acompanhante 


-- Tarja Medicamento


-- Medicamento 


-- ******************************************************************************

-- RELACIONAMENTOS 

-- Cirurgia 


-- Medico-Paciente 


-- Preescreve


-- Agenda