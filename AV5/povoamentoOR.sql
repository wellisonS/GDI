-- Inserindo valores na tabela de médicos.
INSERT INTO tabela_medicos VALUES (
    tp_medico(
        'Dr. João',
        'M',
        TO_DATE('1980-01-15', 'YYYY-MM-DD'),
        '12345',
        tp_endereco('SP', 'São Paulo', 'Rua A', 123, 'Apto 4', '01234'),
        tp_telefones(tp_telefone(819890123)),
        'CRM12',
        'Cardiologia'
    )
);

/

INSERT INTO tabela_medicos VALUES (
    tp_medico(
        'Dr. Carlos',
        'M',
        TO_DATE('1974-07-18', 'YYYY-MM-DD'),
        '44556',
        tp_endereco('PE', 'Recife', 'Rua da Aurora', 12, '', '22334'),
        tp_telefones(tp_telefone(819345678)),
        
        'CRM34',
        'Cirurgião'
    )
);

/

INSERT INTO tabela_medicos VALUES (
    tp_medico(
        'Dr. André',
        'M',
        TO_DATE('1993-12-20', 'YYYY-MM-DD'),
        '12345',
        tp_endereco('BA', 'Salvador', 'Rua da Praia', 890, 'Apto 1203', '90123'),
        tp_telefones(tp_telefone(713210987), tp_telefone(719876543)),
        'CRM35',
        'Cirurgião'
    )
);

/

INSERT INTO tabela_medicos VALUES (
    tp_medico(
        'Dr. Suzana',
        'F',
        TO_DATE('1992-05-25', 'YYYY-MM-DD'),
        '03781',
        tp_endereco('PE', 'Recife', 'Av General Polidoro', 504, 'Apto 213', '10158'),
        tp_telefones(tp_telefone(819789012)),
        
        'CRM78',
        'Dermatologista'
    )
);

/

INSERT INTO tabela_medicos VALUES (
    tp_medico(
        'Sofia Oliveira Santos',
        'F',
        TO_DATE('1995-07-10','yyyy-mm-dd'),
        '34692',
        tp_endereco('PE', 'Recife', 'Av General Polidoro', 504, 'Apto 313', '10158'),
        tp_telefones(tp_telefone(819123456), tp_telefone(819234567)),
        
        'CRM73',
        'Pediatra'
    )
);

/

INSERT INTO tabela_medicos VALUES (
    tp_medico(
        'Laura Pereira Almeida',
        'F',
        TO_DATE('2001-03-20','yyyy-mm-dd'),
        '35691',
        tp_endereco('PE', 'Recife', 'Rua da moeda', 303, 'Apto 502', '54642'),
        tp_telefones(tp_telefone(81998765452)),
        
        'CRM89',
        'Clínica Médica'
    )
);

/



-- Inserindo valores na tabela de enfermeiros.
INSERT INTO tabela_enfermeiros VALUES (
    tp_enfermeiro(
        'Maria josé Pinto de Souza',
        'F',
        TO_DATE('1990-10-10', 'YYYY-MM-DD'),
        '12445',
        tp_endereco('PE', 'Limoeiro', 'Rua Casablanca', 777, 'Apto 7', '77777'),
        tp_telefones(tp_telefone(81952231)),
        '50505'
    )
);

/

INSERT INTO tabela_enfermeiros VALUES (
    tp_enfermeiro(
        'João Grilo de Souza',
        'M',
        TO_DATE('1960-08-10', 'YYYY-MM-DD'),
        '16785',
        tp_endereco('PE', 'Camutanga', 'Rua da Cruz', 007, 'Apto 20', '20520'),
        tp_telefones(tp_telefone(814555607)),
        
        '50403'
    )
);

/

INSERT INTO tabela_enfermeiros VALUES (
    tp_enfermeiro(
        'Allana Cavalcantti da Silva',
        'F',
        TO_DATE('1998-02-10', 'YYYY-MM-DD'),
        '17584',
        tp_endereco('PE', 'Ferreiros', 'Rua da Palha', 551, 'Apto 12', '20123'),
        tp_telefones(tp_telefone(818955647)),
        
        '50111'
    )
);

/

INSERT INTO tabela_enfermeiros VALUES (
    tp_enfermeiro(
        'Eduardo Costa Neto',
        'M',
        TO_DATE('2001-05-15', 'YYYY-MM-DD'),
        '16666',
        tp_endereco('PE', 'Salgueiro', 'Rua da paz', 101, '', '20723'),
        tp_telefones(tp_telefone(819909154)),
        
        '51450'
    )
);

/

INSERT INTO tabela_enfermeiros VALUES (
    tp_enfermeiro(
        'Márcio Vitor Figueira',
        'M',
        TO_DATE('1998-05-17', 'YYYY-MM-DD'),
        '14724',
        tp_endereco('SP', 'São Paulo', 'Av. Paulista', 711, 'Apto 712', '75213'),
        tp_telefones(tp_telefone(119753462)),
        
        '54111'
    )
);

/

-- Inserindo valores na tabela de funcionários.
INSERT INTO tabela_funcionarios VALUES (
    tp_funcionario(
        'Thomas Costa da Silva',
        'M',
        TO_DATE('1984-08-10', 'YYYY-MM-DD'),
        '78203',
        tp_endereco('PE', 'Camaragibe', 'Rua Santana', 345, 'Apto 801', '14092'),
        tp_telefones(tp_telefone(87993576802))
        
    )
);

/

INSERT INTO tabela_funcionarios VALUES (
    tp_funcionario(
        'Juliana Mendonça Melo',
        'F',
        TO_DATE('1978-11-04', 'YYYY-MM-DD'),
        '99562',
        tp_endereco('RJ', 'Rio de Janeiro', 'Rua Joaquim Cardoso', 897, 'Apto 102', '18930'),
        tp_telefones(tp_telefone(81978435600))
        
    )
);

/

INSERT INTO tabela_funcionarios VALUES (
    tp_funcionario(
        'Pedro Mendes Neto',
        'M',
        TO_DATE('1995-12-06', 'YYYY-MM-DD'),
        '29008',
        tp_endereco('PE', 'Olinda', 'Rua Beija Flor', 153, 'Apto 401', '25004'),
        tp_telefones(tp_telefone(81988623773))
        
    )
);

/

-- Inserindo valores na tabela de atendentes.
INSERT INTO tabela_atendentes VALUES (
    tp_atendente(
        'Bêtane Costa Almeida',
        'F',
        TO_DATE('1997-05-15', 'YYYY-MM-DD'),
        '54313',
        tp_endereco('PE', 'Recife', 'Rua Capitao Zuzinha', 231, 'Apto 201', '13628'),
        tp_telefones(tp_telefone(81999887654))
        
    )
);

/

INSERT INTO tabela_atendentes VALUES (
    tp_atendente(
        'Pedro Balla Azevedo Linz',
        'M',
        TO_DATE('2002-02-03', 'YYYY-MM-DD'),
        '77560',
        tp_endereco('PE', 'Guararapes', 'Rua Colonel Antenor', 405, 'Apto 1303', '22305'),
        tp_telefones(tp_telefone(81997274057))
        
    )
);

/

INSERT INTO tabela_atendentes VALUES (
    tp_atendente(
        'Analuz Leite de Albuquerque',
        'F',
        TO_DATE('1948-09-07', 'YYYY-MM-DD'),
        '68014',
        tp_endereco('PE', 'Recife', 'Rua da Aurora', 775, 'Apto 602', '59874'),
        tp_telefones(tp_telefone(81996542324))
        
    )
);

/

-- Inserindo valores na tabela de pacientes
insert into tb_paciente values(
    tp_paciente(
    'Miguel Lima Oliveira','M', TO_DATE('1977-11-09', 'yyyy-mm-dd'), '40579',
    tp_endereco('SP','Sao Paulo','Rua Augusta',123,'','74153'),
    tp_telefones(tp_telefone(119963245)),
    'Unimed',
    tp_prontuario('1.40','10/6','50kg','35°C'),
    tp_acompanhante('Laura Costa Sousa','30948')
    )
);

/

insert into tb_paciente values(
    tp_paciente(
    'Heloísa Costa Santos','F', TO_DATE('1993-06-30', 'yyyy-mm-dd'), '72681',
    tp_endereco('GO','Goiania','Segunda Avenida Radial',123,'','75368'),
    tp_telefones(tp_telefone(629486550)),
    'Hapvida',
    tp_prontuario('1.57','12/8','60kg','39°C'),
    tp_acompanhante('Lorenzo Almeida Santos','67512')
    )
);

/

insert into tb_paciente values(
    tp_paciente(
    'Davi Almeida Sousa','M', TO_DATE('1986-03-13', 'yyyy-mm-dd'), '19435',
    tp_endereco('PE','Olinda','Rua Alegria',123,'','14796'),
    tp_telefones(tp_telefone(819123456)),
    'Amil',
    tp_prontuario('1.92','13/8','120kg','38°C'),
    tp_acompanhante('Lara Sousa Costa','84196')
    )
);

/

insert into tb_paciente values(
    tp_paciente(
    'Heitor Oliveira Silva','M', TO_DATE('1999-12-18', 'yyyy-mm-dd'), '86723',
    tp_endereco('PE','Recife','Rua do Sol',123,'Apto 403','15974'),
    tp_telefones(tp_telefone(819789012)),
    'Bradesco',
    tp_prontuario('1.65','14/9','90kg','37°C'),
    tp_acompanhante('','')
    )
);

/



insert into tb_paciente values(
    tp_paciente(
    'Giovanna Sousa Silva','F', TO_DATE('2002-02-14', 'yyyy-mm-dd'), '93642',
    tp_endereco('RJ','Rio de Janeiro','Rua Manoel Carneiro',1,'','25896'),
    tp_telefones(tp_telefone(219654821)),
    'Sulamerica',
    tp_prontuario('1.75','13/2','87kg','36°C'),
    tp_acompanhante('Maria Lima Costa','51076')
    )
);

/

INSERT INTO tabela_medicamentos VALUES (
    10500,
    'rivotril',
    tp_tarja_medicamento('PRETA')


);
INSERT INTO tabela_medicamentos VALUES (
    1000,
    'vitamina C',
    tp_tarja_medicamento('SEM TARJA')


);
INSERT INTO tabela_medicamentos VALUES (
    2000,
    'paracentamol',
    tp_tarja_medicamento('LARANJA')


);
INSERT INTO tabela_medicamentos VALUES (
    10000,
    'dipirona',
    tp_tarja_medicamento('SEM TARJA')


);
-- ****************************  RELACIONAMENTOS 

-- INSERINDO AGENDAMENTOS 
INSERT INTO tabela_agenda VALUES (
    (SELECT REF(a) FROM tabela_atendentes a WHERE a.cpf = '68014'),
    (SELECT REF(p) FROM tb_paciente p WHERE p.cpf = '93642'),

        TO_DATE('2023-08-30', 'YYYY-MM-DD')
    );  
/

-- INSERINDO NA NESTED TABLE 

INSERT INTO tb_lista_telefones VALUES (
    tp_enfermeiro(
        'Maria josé Pinto de Souza',
        'F',
        TO_DATE('1990-10-10', 'YYYY-MM-DD'),
        '12445',
        tp_endereco('PE', 'Limoeiro', 'Rua Casablanca', 777, 'Apto 7', '77777'),
        tp_telefones(tp_telefone(81952231)),
        '50505'
    ),
    tp_nt_fone(tp_telefone(5478962),tp_telefone(54785462))
);


-- INSERINDO CIRURGIAS 

INSERT INTO tabela_cirurgia VALUES (
    (SELECT REF(a) FROM tabela_medicos a WHERE a.crm = 'CRM34'),
    (SELECT REF(a) FROM tabela_enfermeiros a WHERE a.coren = '54111'),
    (SELECT REF(p) FROM tb_paciente p WHERE p.cpf = '40579'),

        TO_DATE('2022-08-19', 'YYYY-MM-DD')
    );
/

INSERT INTO tabela_cirurgia VALUES (
    (SELECT REF(a) FROM tabela_medicos a WHERE a.crm = 'CRM34'),
    (SELECT REF(a) FROM tabela_enfermeiros a WHERE a.coren = '50505'),
    (SELECT REF(p) FROM tb_paciente p WHERE p.cpf = '93642'),
    TO_DATE('2023-05-19', 'YYYY-MM-DD')
);
/

INSERT INTO tabela_cirurgia VALUES (
    (SELECT REF(a) FROM tabela_medicos a WHERE a.crm = 'CRM34'),
    (SELECT REF(a) FROM tabela_enfermeiros a WHERE a.coren = '50403'),
    (SELECT REF(p) FROM tb_paciente p WHERE p.cpf = '86723'),
    TO_DATE('2021-08-19', 'YYYY-MM-DD')
);
/

INSERT INTO tabela_cirurgia VALUES (
    (SELECT REF(a) FROM tabela_medicos a WHERE a.crm = 'CRM35'),
    (SELECT REF(a) FROM tabela_enfermeiros a WHERE a.coren = '50111'),
    (SELECT REF(p) FROM tb_paciente p WHERE p.cpf = '93642'),
    TO_DATE('2020-07-24', 'YYYY-MM-DD')
);
/

INSERT INTO tabela_cirurgia VALUES (
    (SELECT REF(a) FROM tabela_medicos a WHERE a.crm = 'CRM34'),
    (SELECT REF(a) FROM tabela_enfermeiros a WHERE a.coren = '51450'),
    (SELECT REF(p) FROM tb_paciente p WHERE p.cpf = '19435'),
    TO_DATE('2021-07-19', 'YYYY-MM-DD')
);
/

INSERT INTO tabela_cirurgia VALUES (
    (SELECT REF(a) FROM tabela_medicos a WHERE a.crm = 'CRM35'),
    (SELECT REF(a) FROM tabela_enfermeiros a WHERE a.coren = '50403'),
    (SELECT REF(p) FROM tb_paciente p WHERE p.cpf = '72681'),
    TO_DATE('2022-10-19', 'YYYY-MM-DD')
);
/

INSERT INTO tabela_cirurgia VALUES (
    (SELECT REF(a) FROM tabela_medicos a WHERE a.crm = 'CRM34'),
    (SELECT REF(a) FROM tabela_enfermeiros a WHERE a.coren = '50111'),
    (SELECT REF(p) FROM tb_paciente p WHERE p.cpf = '40579'),
    TO_DATE('2023-01-30', 'YYYY-MM-DD')
);
/

INSERT INTO tabela_cirurgia VALUES (
    (SELECT REF(a) FROM tabela_medicos a WHERE a.crm = 'CRM35'),
    (SELECT REF(a) FROM tabela_enfermeiros a WHERE a.coren = '51450'),
    (SELECT REF(p) FROM tb_paciente p WHERE p.cpf = '93642'),
    TO_DATE('2020-11-19', 'YYYY-MM-DD')
);
/

INSERT INTO tabela_cirurgia VALUES (
    (SELECT REF(a) FROM tabela_medicos a WHERE a.crm = 'CRM34'),
    (SELECT REF(a) FROM tabela_enfermeiros a WHERE a.coren = '50111'),
    (SELECT REF(p) FROM tb_paciente p WHERE p.cpf = '19435'),
    TO_DATE('2022-02-15', 'YYYY-MM-DD')
);
/

INSERT INTO tabela_cirurgia VALUES (
    (SELECT REF(a) FROM tabela_medicos a WHERE a.crm = 'CRM35'),
    (SELECT REF(a) FROM tabela_enfermeiros a WHERE a.coren = '50403'),
    (SELECT REF(p) FROM tb_paciente p WHERE p.cpf = '72681'),
    TO_DATE('2022-01-15', 'YYYY-MM-DD')
);
/

-- INSERINDO NA TABELA MEDICO-PACIENTE 

INSERT INTO tabela_medico_paciente VALUES (
    (SELECT REF(a) FROM tabela_medicos a WHERE a.crm = 'CRM34'),
    (SELECT REF(p) FROM tb_paciente p WHERE p.cpf = '93642'),

        TO_DATE('2022-08-30', 'YYYY-MM-DD')
    );

/

INSERT INTO tabela_medico_paciente VALUES (
    (SELECT REF(a) FROM tabela_medicos a WHERE a.crm = 'CRM12'),
    (SELECT REF(p) FROM tb_paciente p WHERE p.cpf = '40579'),

        TO_DATE('2022-04-22', 'YYYY-MM-DD')
    );
/
INSERT INTO tabela_medico_paciente VALUES (
    (SELECT REF(a) FROM tabela_medicos a WHERE a.crm = 'CRM12'),
    (SELECT REF(p) FROM tb_paciente p WHERE p.cpf = '19435'),

        TO_DATE('2021-03-15', 'YYYY-MM-DD')
    );
/

INSERT INTO tabela_medico_paciente VALUES (
    (SELECT REF(a) FROM tabela_medicos a WHERE a.crm = 'CRM89'),
    (SELECT REF(p) FROM tb_paciente p WHERE p.cpf = '86723'),

        TO_DATE('2020-02-16', 'YYYY-MM-DD')
    );
/
INSERT INTO tabela_medico_paciente VALUES (
    (SELECT REF(a) FROM tabela_medicos a WHERE a.crm = 'CRM89'),
    (SELECT REF(p) FROM tb_paciente p WHERE p.cpf = '86723'),

        TO_DATE('2022-01-30', 'YYYY-MM-DD')
    );

/

INSERT INTO tabela_preescreve VALUES (
    
    (SELECT REF(a) FROM tabela_medicos a WHERE a.crm = 'CRM89'),
    (SELECT REF(m) FROM tabela_medicamentos m WHERE m.nome_medicamento = 'rivotril'),
    (SELECT REF(p) FROM tb_paciente p WHERE p.cpf = '86723'),
    TO_DATE('2020-01-01', 'YYYY-MM-DD')

);

/

INSERT INTO tabela_preescreve VALUES (
    
    (SELECT REF(a) FROM tabela_medicos a WHERE a.crm = 'CRM89'),
    (SELECT REF(m) FROM tabela_medicamentos m WHERE m.nome_medicamento = 'vitamina c'),
    (SELECT REF(p) FROM tb_paciente p WHERE p.cpf = '93642'),
    TO_DATE('2021-05-15', 'YYYY-MM-DD')

);

/

INSERT INTO tabela_preescreve VALUES (
    
    (SELECT REF(a) FROM tabela_medicos a WHERE a.crm = 'CRM89'),
    (SELECT REF(m) FROM tabela_medicamentos m WHERE m.nome_medicamento = 'vitamina c'),
    (SELECT REF(p) FROM tb_paciente p WHERE p.cpf = '19435'),
    TO_DATE('2022-09-30','YYYY-MM-DD')

);

/

