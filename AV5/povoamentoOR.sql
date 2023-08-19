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