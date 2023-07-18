-- ENTIDADES
CREATE SEQUENCE num INCREMENT by 1 START WITH 80;
-- Endereço
INSERT INTO endereco (estado,cidade,rua,cep) VALUES ('PE','Camaragibe','Rua Santana','12345'); 
INSERT INTO endereco (estado,cidade,rua,cep) VALUES ('PE','Recife','Rua do sol','12135');
INSERT INTO endereco (estado,cidade,rua,cep) VALUES ('PE','Recife','Rua Rio Igarape','45627');
INSERT INTO endereco (estado,cidade,rua,cep) VALUES ('PE','Recife','Rua da Moeda','54642');
INSERT INTO endereco (estado,cidade,rua,cep) VALUES ('PE','Olinda','Rua Afonso Maria','67892');
INSERT INTO endereco (estado,cidade,rua,cep) VALUES ('PE','Jaboatao dos Guararapes','Travessa Laporte','12735');
INSERT INTO endereco (estado,cidade,rua,cep) VALUES ('PE','Paulista','Rua Solmar','56894');
INSERT INTO endereco (estado,cidade,rua,cep) VALUES ('PE','Recife','Rua do Sol','73945');
INSERT INTO endereco (estado,cidade,rua,cep) VALUES ('PE','Salgueiro','Rua das Hortencias','23956');
INSERT INTO endereco (estado,cidade,rua,cep) VALUES ('PE','Cabo de Santo Agostinho','Rua Albatroz','32154');
INSERT INTO endereco (estado,cidade,rua,cep) VALUES ('PE','Olinda','Rua Alegria','45087');
INSERT INTO endereco (estado,cidade,rua,cep) VALUES ('PE','Recife','Rua Rio Grande','98752');
INSERT INTO endereco (estado,cidade,rua,cep) VALUES ('PE','Camaragibe','Rua Belmino Gouveia','95173');

INSERT INTO endereco (estado,cidade,rua,cep) VALUES ('PE','Olinda','Rua Alto Nova Olinda','15964');
INSERT INTO endereco (estado,cidade,rua,cep) VALUES ('SP','Guarulhos','Rua Oscar Lima','89746');
INSERT INTO endereco (estado,cidade,rua,cep) VALUES ('RJ','Rio de Janeiro','Rua Manoel Carneiro','25896');
INSERT INTO endereco (estado,cidade,rua,cep) VALUES ('SP','Sao Paulo','Rua Augusta','74153');
INSERT INTO endereco (estado,cidade,rua,cep) VALUES ('GO','Goiania','Segunda Avenida Radial','75368');
INSERT INTO endereco (estado,cidade,rua,cep) VALUES ('PE','Olinda','Rua Alegria','14796');
INSERT INTO endereco (estado,cidade,rua,cep) VALUES ('PE','Recife','Rua do Sol','15974');
INSERT INTO endereco (estado,cidade,rua,cep) VALUES ('PE','Camaragibe','Rua Itaporanga','65489');
INSERT INTO endereco (estado,cidade,rua,cep) VALUES ('PE','Sao Lourenco da Mata', 'Rua Beira Rio','99851');
INSERT INTO endereco (estado,cidade,rua,cep) VALUES ('PE','Recife','Rua Igarape','11443');
INSERT INTO endereco (estado,cidade,rua,cep) VALUES ('PE','Recife','Rua da Soledade','20328');


-- Pessoa 

-- Funcionário

--Médico
INSERT INTO pessoa (numero,cpf,nome,SEXO,data_nascimento,cep,complemento) VALUES (num.NEXTVAL,'12345','Carlos da Silva Nascimento','M',to_date('1997-04-05','yyyy-mm-dd'), '12345','');
INSERT INTO pessoa (numero,cpf,nome,SEXO,data_nascimento,cep,complemento) VALUES (num.NEXTVAL,'34692','Sofia Oliveira Santos','F',to_date('1995-07-10','yyyy-mm-dd'),'12135','');
INSERT INTO pessoa (numero,cpf,nome,SEXO,data_nascimento,cep,complemento) VALUES (num.NEXTVAL,'81703','João Silva Costa','M',to_date('1988-12-05','yyyy-mm-dd'),'45627','');
INSERT INTO pessoa (numero,cpf,nome,SEXO,data_nascimento,cep,complemento) VALUES (num.NEXTVAL,'52984','Laura Pereira Almeida','F',to_date('2001-03-20','yyyy-mm-dd'),'54642','');
INSERT INTO pessoa (numero,cpf,nome,SEXO,data_nascimento,cep,complemento) VALUES (num.NEXTVAL,'65317','Gabriel Santos Oliveira','M',to_date('2002-04-20','yyyy-mm-dd'),'67892','');
-- Enfermeiro
INSERT INTO pessoa (numero,cpf,nome,SEXO,data_nascimento,cep,complemento) VALUES (num.NEXTVAL,'42058','Isabella Costa Sousa','F',to_date('1979-09-15','yyyy-mm-dd'),'12735','');
INSERT INTO pessoa (numero,cpf,nome,SEXO,data_nascimento,cep,complemento) VALUES (num.NEXTVAL,'13579','Pedro Almeida Lima','M',to_date('1992-06-25','yyyy-mm-dd'),'56894','');
INSERT INTO pessoa (numero,cpf,nome,SEXO,data_nascimento,cep,complemento) VALUES (num.NEXTVAL,'78624','Alice Souza Silva','F',to_date('1985-02-08','yyyy-mm-dd') ,'73945','Apto 412');
INSERT INTO pessoa (numero,cpf,nome,SEXO,data_nascimento,cep,complemento) VALUES (num.NEXTVAL,'93210','Matheus Lima Oliveira','M',to_date('1998-11-17','yyyy-mm-dd'),'23956','');
INSERT INTO pessoa (numero,cpf,nome,SEXO,data_nascimento,cep,complemento) VALUES (num.NEXTVAL,'47163','Valentina Pereira Costa','F',to_date('1976-04-12','yyyy-mm-dd'),'32154','Apto 512');
-- Atendente
INSERT INTO pessoa (numero,cpf,nome,SEXO,data_nascimento,cep,complemento) VALUES (num.NEXTVAL,'65892','Lucas Oliveira Santos','M',to_date('2004-10-01','yyyy-mm-dd'),'45087','Apto 610');
INSERT INTO pessoa (numero,cpf,nome,SEXO,data_nascimento,cep,complemento) VALUES (num.NEXTVAL,'20387','Manuela Almeida Silva','F',to_date('1990-08-28','yyyy-mm-dd'),'98752','');
INSERT INTO pessoa (numero,cpf,nome,SEXO,data_nascimento,cep,complemento) VALUES (num.NEXTVAL,'57946','Enzo Costa Sousa','M',to_date('1983-01-03','yyyy-mm-dd'),'95173','Apto 132');
INSERT INTO pessoa (numero,cpf,nome,SEXO,data_nascimento,cep,complemento) VALUES (num.NEXTVAL,'78430','Júlia Santos Lima','F',to_date('1996-09-22','yyyy-mm-dd'),'15964','Apto 102');
INSERT INTO pessoa (numero,cpf,nome,SEXO,data_nascimento,cep,complemento) VALUES (num.NEXTVAL,'21857','Bernardo Almeida Costa','M',to_date('1989-07-19','yyyy-mm-dd'),'89746','Apto 301');
 -- Paciente
INSERT INTO pessoa (numero,cpf,nome,SEXO,data_nascimento,cep,complemento) VALUES (num.NEXTVAL,'93642','Giovanna Sousa Silva','F',to_date('2002-02-14','yyyy-mm-dd'),'25896','');
INSERT INTO pessoa (numero,cpf,nome,SEXO,data_nascimento,cep,complemento) VALUES (num.NEXTVAL,'40579','Miguel Lima Oliveira','M',to_date('1977-11-09','yyyy-mm-dd'),'74153','');
INSERT INTO pessoa (numero,cpf,nome,SEXO,data_nascimento,cep,complemento) VALUES (num.NEXTVAL,'72681','Heloísa Costa Santos','F',to_date('1993-06-30','yyyy-mm-dd'),'75368','');
INSERT INTO pessoa (numero,cpf,nome,SEXO,data_nascimento,cep,complemento) VALUES (num.NEXTVAL,'19435','Davi Almeida Sousa','M',to_date('1986-03-13','yyyy-mm-dd'),'14796','');
INSERT INTO pessoa (numero,cpf,nome,SEXO,data_nascimento,cep,complemento) VALUES (num.NEXTVAL,'86723','Heitor Oliveira Silva','M',to_date('1999-12-18','yyyy-mm-dd'),'15974','Apto 403');
-- Acompanhante
INSERT INTO pessoa (numero,cpf,nome,SEXO,data_nascimento,cep,complemento) VALUES (num.NEXTVAL,'51076','Maria Lima Costa','F',to_date('1980-05-06','yyyy-mm-dd'),'65489','');
INSERT INTO pessoa (numero,cpf,nome,SEXO,data_nascimento,cep,complemento) VALUES (num.NEXTVAL,'30948','Laura Costa Sousa','F',to_date('1997-10-23','yyyy-mm-dd'),'99851','');
INSERT INTO pessoa (numero,cpf,nome,SEXO,data_nascimento,cep,complemento) VALUES (num.NEXTVAL,'67512','Lorenzo Almeida Santos','M',to_date('1982-08-16','yyyy-mm-dd'),'11443','');
INSERT INTO pessoa (numero,cpf,nome,SEXO,data_nascimento,cep,complemento) VALUES (num.NEXTVAL,'84196','Lara Sousa Costa','F',to_date('1991-04-02','yyyy-mm-dd'),'20328','Apto 402');


-- Telefone 
INSERT INTO telefone (numero,cpf_fk) VALUES (81998765452,'12345');
INSERT INTO telefone (numero,cpf_fk) VALUES (819123456,'34692');
INSERT INTO telefone (numero,cpf_fk) VALUES (819789012,'81703');
INSERT INTO telefone (numero,cpf_fk) VALUES (819345678,'52984');
INSERT INTO telefone (numero,cpf_fk) VALUES (819890123,'65317');
INSERT INTO telefone (numero,cpf_fk) VALUES (819567890,'42058');
INSERT INTO telefone (numero,cpf_fk) VALUES (819234567,'13579');
INSERT INTO telefone (numero,cpf_fk) VALUES (819901234,'78624');
INSERT INTO telefone (numero,cpf_fk) VALUES (819678901,'93210');
INSERT INTO telefone (numero,cpf_fk) VALUES (819012345,'47163');
INSERT INTO telefone (numero,cpf_fk) VALUES (819456789,'65892');
INSERT INTO telefone (numero,cpf_fk) VALUES (819765432,'20387');
INSERT INTO telefone (numero,cpf_fk) VALUES (819098765,'57946');


INSERT INTO telefone (numero,cpf_fk) VALUES (819017645,'78430');
INSERT INTO telefone (numero,cpf_fk) VALUES (119957645,'21857');
INSERT INTO telefone (numero,cpf_fk) VALUES (219654821,'93642');
INSERT INTO telefone (numero,cpf_fk) VALUES (119963245,'40579');
INSERT INTO telefone (numero,cpf_fk) VALUES (629486550,'72681');
INSERT INTO telefone (numero,cpf_fk) VALUES (819123456,'19435');
INSERT INTO telefone (numero,cpf_fk) VALUES (819789012,'86723');
INSERT INTO telefone (numero,cpf_fk) VALUES (819345678,'51076');
INSERT INTO telefone (numero,cpf_fk) VALUES (819890123,'30948');
INSERT INTO telefone (numero,cpf_fk) VALUES (819567890,'67512');
INSERT INTO telefone (numero,cpf_fk) VALUES (819234567,'84196');



-- Funcionario 
insert into funcionario values ('12345');
insert into funcionario values ('34692');
insert into funcionario values ('81703');
insert into funcionario values ('52984');
insert into funcionario values ('65317');
insert into funcionario values ('42058');
insert into funcionario values ('13579');
insert into funcionario values ('78624');
insert into funcionario values ('93210');
insert into funcionario values ('47163');
insert into funcionario values ('65892');
insert into funcionario values ('20387');
insert into funcionario values ('57946');
insert into funcionario values ('78430');
insert into funcionario values ('21857');


-- Salario 
INSERT INTO salario (cargo,cpf_func,salario) VALUES ('Médico','12345',8000);
INSERT INTO salario (cargo,cpf_func,salario) VALUES ('Atendente','65892',3000);
INSERT INTO salario (cargo,cpf_func,salario) VALUES ('Enfermeiro','42058',5000);
INSERT INTO salario (cargo,cpf_func,salario) VALUES ('Pediatra','34692',10000);
INSERT INTO salario (cargo,cpf_func,salario) VALUES ('Ginegologista','65317',10000);

-- Médico 
INSERT INTO medico(cpf_func, cpf_lider) VALUES ('12345','12345');
INSERT INTO medico(cpf_func, cpf_lider) VALUES ('34692','12345');
INSERT INTO medico(cpf_func, cpf_lider) VALUES ('81703','12345');
INSERT INTO medico(cpf_func, cpf_lider) VALUES ('52984','52984');
INSERT INTO medico(cpf_func, cpf_lider) VALUES ('65317','52984');

-- Especializacao 
INSERT INTO especializacao(crm, especializacao, cpf_medico) VALUES ('12345', 'Cirurgia Geral', '12345');
INSERT INTO especializacao(crm, especializacao, cpf_medico) VALUES ('78873', 'Pediatria', '34692');
INSERT INTO especializacao(crm, especializacao, cpf_medico) VALUES ('31438', 'Anestesiologia', '81703');
INSERT INTO especializacao(crm, especializacao, cpf_medico) VALUES ('41624', 'Clínica Médica', '52984');
INSERT INTO especializacao(crm, especializacao, cpf_medico) VALUES ('45678', 'Ginecologia', '65317');


-- Enfermeiro 
INSERT INTO enfermeiro(cpf_func,coren) VALUES ('42058','18705');
INSERT INTO enfermeiro(cpf_func,coren) VALUES ('13579','58176');
INSERT INTO enfermeiro(cpf_func,coren) VALUES ('78624','10251');
INSERT INTO enfermeiro(cpf_func,coren) VALUES ('93210','56705');
INSERT INTO enfermeiro(cpf_func,coren) VALUES ('47163','77517');

-- Atendente 
INSERT INTO atendente(cpf_func) VALUES ('65892');
INSERT INTO atendente(cpf_func) VALUES ('20387');
INSERT INTO atendente(cpf_func) VALUES ('57946');
INSERT INTO atendente(cpf_func) VALUES ('78430');
INSERT INTO atendente(cpf_func) VALUES ('21857');


-- Paciente 
insert into paciente values('93642','Sulamerica');
insert into paciente values('40579','Unimed');
insert into paciente values('72681','Hapvida');
insert into paciente values('19435','Amil');
insert into paciente values('86723','Bradesco');
-- Dados Acompanhante 
INSERT INTO dados_acompanhante (nome, cpf_acompanhante) VALUES ('Maria Lima Costa','51076');
INSERT INTO dados_acompanhante (nome, cpf_acompanhante) VALUES ('Laura Costa Sousa','30948');
INSERT INTO dados_acompanhante (nome, cpf_acompanhante) VALUES ('Lorenzo Almeida Santos','67512');
INSERT INTO dados_acompanhante (nome, cpf_acompanhante) VALUES ('Lara Sousa Costa','84196');


-- Acompanhante 
INSERT INTO acompanhante (cpf_acompanhante_fk,cpf_pac) VALUES ('51076','93642');
INSERT INTO acompanhante (cpf_acompanhante_fk,cpf_pac) VALUES('30948','40579');
INSERT INTO acompanhante (cpf_acompanhante_fk,cpf_pac) VALUES('67512','72681');
INSERT INTO acompanhante (cpf_acompanhante_fk,cpf_pac) VALUES('84196','19435');

-- Tarja Medicamento
INSERT INTO tarja_medicamento (tarja, nome_med) VALUES ('Amarela', 'Ibuprofeno');
INSERT INTO tarja_medicamento (tarja, nome_med) VALUES ('Vermelha', 'Buscopan');
INSERT INTO tarja_medicamento (tarja, nome_med) VALUES ('Amarela', 'Paracetamol');
INSERT INTO tarja_medicamento (tarja, nome_med) VALUES ('Preta', 'Morfina');
INSERT INTO tarja_medicamento (tarja, nome_med) VALUES ('Preta', 'Diazepam');

-- Medicamento 
INSERT INTO medicamento (dosagem, nome_medicamento) VALUES ('600 mg', 'Ibuprofeno');
INSERT INTO medicamento (dosagem, nome_medicamento) VALUES ('10 mg', 'Buscopan');
INSERT INTO medicamento (dosagem, nome_medicamento) VALUES ('500 mg', 'Paracetamol');
INSERT INTO medicamento (dosagem, nome_medicamento) VALUES ('30 mg', 'Morfina');
INSERT INTO medicamento (dosagem, nome_medicamento) VALUES ('10 mg', 'Diazepam');

-- ******************************************************************************

-- RELACIONAMENTOS 

-- Cirurgia 
INSERT INTO cirurgia (cpf_medico,cpf_enfermeiro,data_cirurgia,cpf_paciente) VALUES ('12345','42058',to_date('2022-04-02','yyyy-mm-dd'),'93642');
INSERT INTO cirurgia (cpf_medico,cpf_enfermeiro,data_cirurgia,cpf_paciente) VALUES ('12345','42058',to_date('2022-07-03','yyyy-mm-dd'),'40579');
INSERT INTO cirurgia (cpf_medico,cpf_enfermeiro,data_cirurgia,cpf_paciente) VALUES ('12345','13579',to_date('2023-01-05','yyyy-mm-dd'),'93642');
INSERT INTO cirurgia (cpf_medico,cpf_enfermeiro,data_cirurgia,cpf_paciente) VALUES ('12345','93210',to_date('2021-10-22','yyyy-mm-dd'),'72681');
INSERT INTO cirurgia (cpf_medico,cpf_enfermeiro,data_cirurgia,cpf_paciente) VALUES ('12345','42058',to_date('2022-05-03','yyyy-mm-dd'),'19435');

-- Medico-Paciente 
INSERT INTO medico_paciente (cpf_medico,cpf_paciente,data_atendimento) VALUES ('52984','86723',to_date('2022-04-02','yyyy-mm-dd'));
INSERT INTO medico_paciente (cpf_medico,cpf_paciente,data_atendimento) VALUES ('34692','86723',to_date('2022-10-02','yyyy-mm-dd'));
INSERT INTO medico_paciente (cpf_medico,cpf_paciente,data_atendimento) VALUES ('65317','72681',to_date('2022-07-22','yyyy-mm-dd'));
INSERT INTO medico_paciente (cpf_medico,cpf_paciente,data_atendimento) VALUES ('52984','19435',to_date('2021-11-12','yyyy-mm-dd'));
INSERT INTO medico_paciente (cpf_medico,cpf_paciente,data_atendimento) VALUES ('52984','93642',to_date('2021-10-17','yyyy-mm-dd'));

-- Preescreve
INSERT INTO preescreve (cpf_medico,cpf_paciente,data_atendimento,dosagem,nome_med,frequencia) VALUES ('52984','86723',to_date('2022-04-02','yyyy-mm-dd'),'10 mg','Buscopan','A cada 8 horas');

-- Agenda
INSERT INTO agenda (cpf_atendente,cpf_paciente,data_agends) VALUES ();
INSERT INTO agenda (cpf_atendente,cpf_paciente,data_agends) VALUES ();
INSERT INTO agenda (cpf_atendente,cpf_paciente,data_agends) VALUES ();
INSERT INTO agenda (cpf_atendente,cpf_paciente,data_agends) VALUES ();
INSERT INTO agenda (cpf_atendente,cpf_paciente,data_agends) VALUES ();