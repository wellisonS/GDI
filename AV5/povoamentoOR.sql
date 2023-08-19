-- Inserção dos registros na tabela de médicos
INSERT INTO tabela_medicos VALUES (
    tp_medico(
        'Dr. João',
        'M',
        TO_DATE('1980-01-15', 'YYYY-MM-DD'),
        tp_endereco('SP', 'São Paulo', 'Rua A', 123, 'Apto 4', '01234'),
        tp_telefones(tp_telefone(2)),
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
        tp_telefones(tp_telefone(2)),
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
        tp_telefones(tp_telefone(2)),
        '03781',
        'CRM78',
        'Dermatologista'
    )
);