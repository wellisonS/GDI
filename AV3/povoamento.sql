-- ENTIDADES
CREATE SEQUENCE num INCREMENT by 1 START WITH 80;
-- Endereço
INSERT INTO endereco (numero,estado,cidade,rua,complemento,cep) VALUES (num.NEXTVAL,'PE','Camaragibe','Rua Santana','','12345'); 
INSERT INTO endereco (numero,estado,cidade,rua,complemento,cep) VALUES (num.NEXTVAL,'PE','Recife','Rua do sol','','12135');
INSERT INTO endereco (numero,estado,cidade,rua,complemento,cep) VALUES (num.NEXTVAL,'PE','Recife','Rua Rio Igarape','','45627');
INSERT INTO endereco (numero,estado,cidade,rua,complemento,cep) VALUES (num.NEXTVAL,'PE','Recife','Rua da Moeda','','54642');
INSERT INTO endereco (numero,estado,cidade,rua,complemento,cep) VALUES (num.NEXTVAL,'PE','Olinda','Rua Afonso Maria','Proximo ao bar do Ze','67892');
INSERT INTO endereco (numero,estado,cidade,rua,complemento,cep) VALUES (num.NEXTVAL,'PE','Jaboatao dos Guararapes','Travessa Pedra Lavrada','','12735');
INSERT INTO endereco (numero,estado,cidade,rua,complemento,cep) VALUES (num.NEXTVAL,'PE','Paulista','Rua Solmar','','56894');
INSERT INTO endereco (numero,estado,cidade,rua,complemento,cep) VALUES (num.NEXTVAL,'PE','Recife','Rua do Sol','Depois da igreja','73945');
INSERT INTO endereco (numero,estado,cidade,rua,complemento,cep) VALUES (num.NEXTVAL,'PE','Salgueiro','Rua das Hortencias','','23956');
INSERT INTO endereco (numero,estado,cidade,rua,complemento,cep) VALUES (num.NEXTVAL,'PE','Cabo de Santo Agostinho','Rua Albatroz','','32154');
INSERT INTO endereco (numero,estado,cidade,rua,complemento,cep) VALUES (num.NEXTVAL,'PE','Olinda','Rua Alegria','Proximo ao armazem','45087');
INSERT INTO endereco (numero,estado,cidade,rua,complemento,cep) VALUES (num.NEXTVAL,'PE','Recife','Rua Rio Grande','','98752');
INSERT INTO endereco (numero,estado,cidade,rua,complemento,cep) VALUES (num.NEXTVAL,'PE','Camaragibe','Rua Belmino Gouveia','Depois da Souza Irmaos','95173');

INSERT INTO endereco (numero,estado,cidade,rua,complemento,cep) VALUES (num.NEXTVAL,'PE','Olinda','Rua Alto Nova Olinda','','15964');
INSERT INTO endereco (numero,estado,cidade,rua,complemento,cep) VALUES (num.NEXTVAL,'SP','Guarulhos','Rua Oscar Lima','','89746');
INSERT INTO endereco (numero,estado,cidade,rua,complemento,cep) VALUES (num.NEXTVAL,'RJ','Rio de Janeiro','Rua Manoel Carneiro','','25896');
INSERT INTO endereco (numero,estado,cidade,rua,complemento,cep) VALUES (num.NEXTVAL,'SP','Sao Paulo','Rua Augusta','','74153');
INSERT INTO endereco (numero,estado,cidade,rua,complemento,cep) VALUES (num.NEXTVAL,'GO','Goiania','Segunda Avenida Radial','','75368');
INSERT INTO endereco (numero,estado,cidade,rua,complemento,cep) VALUES (num.NEXTVAL,'PE','Olinda','Rua Alegria','','14796');
INSERT INTO endereco (numero,estado,cidade,rua,complemento,cep) VALUES (num.NEXTVAL,'PE','Recife','Rua do Sol','','15974');
INSERT INTO endereco (numero,estado,cidade,rua,complemento,cep) VALUES (num.NEXTVAL,'PE','Camaragibe','Rua Itaporanga','','65489');
INSERT INTO endereco (numero,estado,cidade,rua,complemento,cep) VALUES (num.NEXTVAL,'PE','Sao Lourenco da Mata', 'Rua Beira Rio','','99851');
INSERT INTO endereco (numero,estado,cidade,rua,complemento,cep) VALUES (num.NEXTVAL,'PE','Recife','Rua Igarape','','11443');
INSERT INTO endereco (numero,estado,cidade,rua,complemento,cep) VALUES (num.NEXTVAL,'PE','Recife','Rua da Soledade','','20328');


-- Pessoa 
INSERT INTO pessoa (cpf,nome,SEXO,data_nascimento,cep) VALUES ('12345','Carlos da Silva Nascimento','M',to_date('1997-04-05','yyyy-mm-dd'), '12345');
INSERT INTO pessoa (cpf,nome,SEXO,data_nascimento,cep) VALUES ('34692','Sofia Oliveira Santos','F',to_date('1995-07-10','yyyy-mm-dd'),'12135');
INSERT INTO pessoa (cpf,nome,SEXO,data_nascimento,cep) VALUES ('81703','João Silva Costa','M',to_date('1988-12-05','yyyy-mm-dd'),'45627');
INSERT INTO pessoa (cpf,nome,SEXO,data_nascimento,cep) VALUES ('52984','Laura Pereira Almeida','F',to_date('2001-03-20','yyyy-mm-dd'),'54642');
INSERT INTO pessoa (cpf,nome,SEXO,data_nascimento,cep) VALUES ('65317','Gabriel Santos Oliveira','M',to_date('2002-04-20','yyyy-mm-dd'),'67892');
INSERT INTO pessoa (cpf,nome,SEXO,data_nascimento,cep) VALUES ('42058','Isabella Costa Sousa','F',to_date('1979-09-15','yyyy-mm-dd'),'12735');
INSERT INTO pessoa (cpf,nome,SEXO,data_nascimento,cep) VALUES ('13579','Pedro Almeida Lima','M',to_date('1992-06-25','yyyy-mm-dd'),'56894');
INSERT INTO pessoa (cpf,nome,SEXO,data_nascimento,cep) VALUES ('78624','Alice Souza Silva','F',to_date('1985-02-08','yyyy-mm-dd') ,'73945');
INSERT INTO pessoa (cpf,nome,SEXO,data_nascimento,cep) VALUES ('93210','Matheus Lima Oliveira','M',to_date('1998-11-17','yyyy-mm-dd'),'23956');
INSERT INTO pessoa (cpf,nome,SEXO,data_nascimento,cep) VALUES ('47163','Valentina Pereira Costa','F',to_date('1976-04-12','yyyy-mm-dd'),'32154');
INSERT INTO pessoa (cpf,nome,SEXO,data_nascimento,cep) VALUES ('65892','Lucas Oliveira Santos','M',to_date('2004-10-01','yyyy-mm-dd'),'45087');
INSERT INTO pessoa (cpf,nome,SEXO,data_nascimento,cep) VALUES ('20387','Manuela Almeida Silva','F',to_date('1990-08-28','yyyy-mm-dd'),'98752');
INSERT INTO pessoa (cpf,nome,SEXO,data_nascimento,cep) VALUES ('57946','Enzo Costa Sousa','M',to_date('1983-01-03','yyyy-mm-dd'),'95173');

INSERT INTO pessoa (cpf,nome,SEXO,data_nascimento,cep) VALUES ('78430','Júlia Santos Lima','F',to_date('1996-09-22','yyyy-mm-dd'));
INSERT INTO pessoa (cpf,nome,SEXO,data_nascimento,cep) VALUES ('21857','Bernardo Almeida Costa','M',to_date('1989-07-19','yyyy-mm-dd'));
INSERT INTO pessoa (cpf,nome,SEXO,data_nascimento,cep) VALUES ('93642','Giovanna Sousa Silva','F',to_date('2002-02-14','yyyy-mm-dd'));
INSERT INTO pessoa (cpf,nome,SEXO,data_nascimento,cep) VALUES ('40579','Miguel Lima Oliveira','M',to_date('1977-11-09','yyyy-mm-dd'));
INSERT INTO pessoa (cpf,nome,SEXO,data_nascimento,cep) VALUES ('72681','Heloísa Costa Santos','F',to_date('1993-06-30','yyyy-mm-dd'));
INSERT INTO pessoa (cpf,nome,SEXO,data_nascimento,cep) VALUES ('19435','Davi Almeida Sousa','M',to_date('1986-03-13','yyyy-mm-dd'));
INSERT INTO pessoa (cpf,nome,SEXO,data_nascimento,cep) VALUES ('86723','Heitor Oliveira Silva','M',to_date('1999-12-18','yyyy-mm-dd'));
INSERT INTO pessoa (cpf,nome,SEXO,data_nascimento,cep) VALUES ('51076','Maria Lima Costa','F',to_date('1980-05-06','yyyy-mm-dd'));
INSERT INTO pessoa (cpf,nome,SEXO,data_nascimento,cep) VALUES ('30948','Laura Costa Sousa','F',to_date('1997-10-23','yyyy-mm-dd'));
INSERT INTO pessoa (cpf,nome,SEXO,data_nascimento,cep) VALUES ('67512','Lorenzo Almeida Santos','M',to_date('1982-08-16','yyyy-mm-dd'));
INSERT INTO pessoa (cpf,nome,SEXO,data_nascimento,cep) VALUES ('84196','Lara Sousa Costa','F',to_date('1991-04-02','yyyy-mm-dd'));
INSERT INTO pessoa (cpf,nome,SEXO,data_nascimento,cep) VALUES ('16320','Arthur Costa Oliveira','M',to_date('2003-11-27','yyyy-mm-dd'));

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