-- Inserindo valores na tabela de médicos.
INSERT INTO tabela_medicos VALUES (
    tp_medico(
        'Dr. João',
        'M',
        TO_DATE('1980-01-15', 'YYYY-MM-DD'),
        tp_endereco('SP', 'São Paulo', 'Rua A', 123, 'Apto 4', '01234'),
        tp_telefones(tp_telefone(819890123)),
        '12345',
        'CRM12',
        'Cardiologia'
    )
);

INSERT INTO tabela_medicos VALUES (
    tp_medico(
        'Dr. Carlos',
        'M',
        TO_DATE('1974-07-18', 'YYYY-MM-DD'),
        tp_endereco('PE', 'Recife', 'Rua da Aurora', 12, '', '22334'),
        tp_telefones(tp_telefone(819345678)),
        '44556',
        'CRM34',
        'Cirurgião'
    )
);

INSERT INTO tabela_medicos VALUES (
    tp_medico(
        'Dr. Suzana',
        'F',
        TO_DATE('1992-05-25', 'YYYY-MM-DD'),
        tp_endereco('PE', 'Recife', 'Av General Polidoro', 504, 'Apto 213', '10158'),
        tp_telefones(tp_telefone(819789012)),
        '03781',
        'CRM78',
        'Dermatologista'
    )
);

INSERT INTO tabela_medicos VALUES (
    tp_medico(
        'Sofia Oliveira Santos',
        'F',
        TO_DATE('1995-07-10','yyyy-mm-dd'),
        tp_endereco('PE', 'Recife', 'Av General Polidoro', 504, 'Apto 313', '10158'),
        tp_telefones(tp_telefone(819123456), tp_telefone(819234567)),
        '34692',
        'CRM73',
        'Pediatra'
    )
);

INSERT INTO tabela_medicos VALUES (
    tp_medico(
        'Laura Pereira Almeida',
        'F',
        TO_DATE('2001-03-20','yyyy-mm-dd'),
        tp_endereco('PE', 'Recife', 'Rua da moeda', 303, 'Apto 502', '54642'),
        tp_telefones(tp_telefone(81998765452)),
        '35691',
        'CRM89',
        'Clínica Médica'
    )
);





-- Inserindo valores na tabela de enfermeiros.
INSERT INTO tabela_enfermeiros VALUES (
    tp_enfermeiro(
        'Maria josé Pinto de Souza',
        'F',
        TO_DATE('1990-10-10', 'YYYY-MM-DD'),
        tp_endereco('PE', 'Limoeiro', 'Rua Casablanca', 777, 'Apto 7', '77777'),
        tp_telefones(tp_telefone(81952231)),
        '12445',
        '50505'
    )
);

INSERT INTO tabela_enfermeiros VALUES (
    tp_enfermeiro(
        'João Grilo de Souza',
        'M',
        TO_DATE('1960-08-10', 'YYYY-MM-DD'),
        tp_endereco('PE', 'Camutanga', 'Rua da Cruz', 007, 'Apto 20', '20520'),
        tp_telefones(tp_telefone(814555607)),
        '16785',
        '50403'
    )
);

INSERT INTO tabela_enfermeiros VALUES (
    tp_enfermeiro(
        'Allana Cavalcantti da Silva',
        'F',
        TO_DATE('1998-02-10', 'YYYY-MM-DD'),
        tp_endereco('PE', 'Ferreiros', 'Rua da Palha', 551, 'Apto 12', '20123'),
        tp_telefones(tp_telefone(818955647)),
        '17584',
        '50111'
    )
);

INSERT INTO tabela_enfermeiros VALUES (
    tp_enfermeiro(
        'Eduardo Costa Neto',
        'M',
        TO_DATE('2001-05-15', 'YYYY-MM-DD'),
        tp_endereco('PE', 'Salgueiro', 'Rua da paz', 101, '', '20723'),
        tp_telefones(tp_telefone(819909154)),
        '16666',
        '51450'
    )
);

INSERT INTO tabela_enfermeiros VALUES (
    tp_enfermeiro(
        'Márcio Vitor Figueira',
        'M',
        TO_DATE('1998-05-17', 'YYYY-MM-DD'),
        tp_endereco('SP', 'São Paulo', 'Av. Paulista', 711, 'Apto 712', '75213'),
        tp_telefones(tp_telefone(119753462)),
        '14724',
        '54111'
    )
);


-- Inserindo valores na tabela de funcionários.
INSERT INTO tabela_funcionarios VALUES (
    tp_funcionario(
        'Thomas Costa da Silva',
        'M',
        TO_DATE('1984-08-10', 'YYYY-MM-DD'),
        tp_endereco('PE', 'Camaragibe', 'Rua Santana', 345, 'Apto 801', '14092'),
        tp_telefones(tp_telefone(87993576802)),
        '78203',
    )
);
INSERT INTO tabela_funcionarios VALUES (
    tp_funcionario(
        'Juliana Mendonça Melo',
        'F',
        TO_DATE('1978-11-04', 'YYYY-MM-DD'),
        tp_endereco('RJ', 'Rio de Janeiro', 'Rua Joaquim Cardoso', 897, 'Apto 102', '18930'),
        tp_telefones(tp_telefone(81978435600)),
        '99562',
    )
);
INSERT INTO tabela_funcionarios VALUES (
    tp_funcionario(
        'Pedro Mendes Neto',
        'M',
        TO_DATE('1995-12-06', 'YYYY-MM-DD'),
        tp_endereco('PE', 'Olinda', 'Rua Beija Flor', 153, 'Apto 401', '25004'),
        tp_telefones(tp_telefone(81988623773)),
        '29008',
    )
);


-- Inserindo valores na tabela de atendentes.
INSERT INTO tabela_atendentes VALUES (
    tp_atendente(
        'Bêtane Costa Almeida',
        'F',
        TO_DATE('1997-05-15', 'YYYY-MM-DD'),
        tp_endereco('PE', 'Recife', 'Rua Capitao Zuzinha', 231, 'Apto 201', '13628'),
        tp_telefones(tp_telefone(81999887654)),
        '54313',
    )
);
INSERT INTO tabela_atendentes VALUES (
    tp_funcionario(
        'Pedro Balla Azevedo Linz',
        'M',
        TO_DATE('2002-02-03', 'YYYY-MM-DD'),
        tp_endereco('PE', 'Guararapes', 'Rua Colonel Antenor', 405, 'Apto 1303', '22305'),
        tp_telefones(tp_telefone(81997274057)),
        '77560',
    )
);
INSERT INTO tabela_atendentes VALUES (
    tp_funcionario(
        'Analuz Leite de Albuquerque',
        'F',
        TO_DATE('1948-09-07', 'YYYY-MM-DD'),
        tp_endereco('PE', 'Recife', 'Rua da Aurora', 775, 'Apto 602', '59874'),
        tp_telefones(tp_telefone(81996542324)),
        '680104',
    )
);

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
insert into tb_paciente values(
    tp_paciente(
    'Heitor Oliveira Silva','M', TO_DATE('1999-12-18', 'yyyy-mm-dd'), '86723',
    tp_endereco('PE','Recife','Rua do Sol',123,'Apto 403','15974'),
    tp_telefones(tp_telefone(819789012)),
    'Bradesco',
    tp_prontuario('1.65','14/9','90kg','37°C'),
    tp_acompanhante()
    )
);
insert into tb_paciente values(
    tp_paciente(
    'Miguel Lima Oliveira','M', TO_DATE('1977-11-09', 'yyyy-mm-dd'), '40579',
    tp_endereco('SP','Sao Paulo','Rua Augusta',123,'apto 1301','74153'),
    tp_telefones(tp_telefone(119963245)),
    'Unimed',
    tp_prontuario('1.40','10/6','50kg','35°C'),
    tp_acompanhante('Laura Costa Sousa','30948')
    )
);
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