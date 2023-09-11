use('clinica');
db.createCollection("servicos");

db.getCollection('servicos').insertMany([
    {
        "id_servico": 'ce00',
        "nome": "Massagem Relaxante",
        "descricao": "Uma massagem suave e relaxante...",
        "categoria": "Massagem",
        "duracao_minutos": 60,
        "preco": 80.00,
    },
    {
        "id_servico": "ce01",
        "nome": "Limpeza de Pele Profunda",
        "descricao": "Uma limpeza facial profunda para uma pele radiante...",
        "categoria": "Dermatologia",
        "duracao_minutos": 90,
        "preco": 120.00,
        "plano_saude" : "sim"
    },
    {
        "id_servico": "ce02",
        "nome": "Tratamento de Celulite",
        "descricao": "Um tratamento eficaz para redução de celulite...",
        "categoria": "Dermatologia",
        "duracao_minutos": 120,
        "preco": 150.00,
        "plano_saude" : "sim"
    },
    {
        "id_servico": "ce03",
        "nome": "Depilação a Laser",
        "descricao": "Remova os pelos indesejados com depilação a laser...",
        "categoria": "Estética",
        "duracao_minutos": 60,
        "preco": 200.00,
         
    },
    {
        "id_servico": "ce04",
        "nome": "Preenchimento Labial",
        "descricao": "Destaque seus lábios com preenchimento labial...",
        "categoria": "Estética",
        "duracao_minutos": 30,
        "preco": 180.00
    },
    {
        "id_servico": "ce05",
        "nome": "Microagulhamento Facial",
        "descricao": "Melhore a textura da pele com microagulhamento...",
        "categoria": "Estética",
        "duracao_minutos": 75,
        "preco": 160.00
    },
    {
        "id_servico": "ce06",
        "nome": "Endermologia",
        "descricao": "Tratamento corporal para melhorar a circulação...",
        "categoria": "Estética",
        "duracao_minutos": 90,
        "preco": 140.00,
        "plano_saude": "sim"
    },
    {
        "id_servico": "ce07",
        "nome": "Peeling Químico",
        "descricao": "Renove sua pele com um peeling químico...",
        "categoria": "Dermatologia",
        "duracao_minutos": 45,
        "preco": 130.00
    },
    {
        "id_servico": "ce08",
        "nome": "Massagem Terapêutica",
        "descricao": "Uma massagem terapêutica para relaxamento...",
        "categoria": "Estética",
        "duracao_minutos": 60,
        "preco": 90.00
    },
    {
        "id_servico": "ce09",
        "nome": "Tratamento Facial Anti-Idade",
        "descricao": "Reduza sinais de envelhecimento com tratamento facial...",
        "categoria": "Dermatologia",
        "duracao_minutos": 120,
        "preco": 220.00
    },
    {
        "id_servico": "ce10",
        "nome": "Manicure e Pedicure",
        "descricao": "Cuide das suas unhas com uma manicure e pedicure...",
        "categoria": "Estética",
        "duracao_minutos": 90,
        "preco": 70.00
    },
    {
        "id_servico": "ce11",
        "nome": "Drenagem Linfática",
        "descricao": "Melhore a circulação e reduza inchaços com drenagem...",
        "categoria": "Dermatologia",
        "duracao_minutos": 75,
        "preco": 110.00,
        "plano_saude": "sim"
    },
    {
        "id_servico": "ce12",
        "nome": "Design de Sobrancelhas",
        "descricao": "Destaque o olhar com um design de sobrancelhas...",
        "categoria": "Estética",
        "duracao_minutos": 30,
        "preco": 50.00
    },
    {
        "id_servico": "ce13",
        "nome": "Máscara Facial de Ouro",
        "descricao": "Experimente o luxo de uma máscara facial de ouro...",
        "categoria": "Estética",
        "duracao_minutos": 45,
        "preco": 180.00
    },
    {
        "id_servico": "ce14",
        "nome": "Bronzeamento a Jato",
        "descricao": "Obtenha um bronzeado instantâneo com bronzeamento a jato...",
        "categoria": "Estética",
        "duracao_minutos": 60,
        "preco": 70.00
    },
    {
        "id_servico": "ce15",
        "nome": "Tratamento de Acne",
        "descricao": "Reduza a acne com um tratamento especializado...",
        "categoria": "Dermatologia",
        "duracao_minutos": 90,
        "preco": 140.00
    },
    {
        "id_servico": "ce16",
        "nome": "Depilação de Sobrancelhas com Linha",
        "descricao": "Um método preciso de depilação de sobrancelhas...",
        "categoria": "Estética",
        "duracao_minutos": 15,
        "preco": 25.00
    },
    {
        "id_servico": "ce17",
        "nome": "Tratamento de Estrias",
        "descricao": "Reduza a aparência de estrias com tratamento especializado...",
        "categoria": "Dermatologia",
        "duracao_minutos": 90,
        "preco": 160.00
    },
    {
        "id_servico": "ce18",
        "nome": "Maquiagem Profissional",
        "descricao": "Transforme sua aparência com uma maquiagem profissional...",
        "categoria": "Estética",
        "duracao_minutos": 60,
        "preco": 80.00
    },
    {
        "id_servico": "ce19",
        "nome": "Tratamento Capilar",
        "descricao": "Revitalize seu cabelo com um tratamento capilar...",
        "categoria": "Dermatologia",
        "duracao_minutos": 90,
        "preco": 120.00
    }
    ]
);


db.createCollection("profissionais");

db.getCollection('profissionais').insertMany([
 {
        "nome": "Pedro Luís",
        "area": "massagista",
        "salario": 2500.00,
        "servicos": [
            db.servicos.findOne({id_servico: "ce00"})._id, 
            db.servicos.findOne({id_servico: "ce06"})._id, 
            db.servicos.findOne({id_servico: "ce08"})._id
        ],
        "id_profissional": "pr00"
    },
    {
        "nome": "Ana Silva",
        "area": "Dermatologista",
        "salario": 15000.00,
        "servicos": [
            db.servicos.findOne({id_servico: "ce01"})._id, 
            db.servicos.findOne({id_servico: "ce02"})._id, 
            db.servicos.findOne({id_servico: "ce03"})._id, 
            db.servicos.findOne({id_servico: "ce04"})._id, 
            db.servicos.findOne({id_servico: "ce05"})._id
        ],
        "id_profissional": "pr01"
    },
    {
        "nome": "Paula Pimentel",
        "area": "Dermatologista",
        "salario": 13000.00,
        "servicos": [
            db.servicos.findOne({id_servico: "ce07"})._id, 
            db.servicos.findOne({id_servico: "ce09"})._id, 
            db.servicos.findOne({id_servico: "ce11"})._id, 
            db.servicos.findOne({id_servico: "ce15"})._id, 
            db.servicos.findOne({id_servico: "ce17"})._id, 
            db.servicos.findOne({id_servico: "ce19"})._id
        ],
        "id_profissional": "pr04"
    },
    {
        "nome": "Mariana Santos",
        "area": "Maquiadora",
        "salario": 3000.00,
        "servicos": [
            db.servicos.findOne({id_servico: "ce12"})._id, 
            db.servicos.findOne({id_servico: "ce16"})._id,  
            db.servicos.findOne({id_servico: "ce18"})._id
        ],
        "id_profissional": "pr02"
    },
    {
    "nome": "Julia Fernandes",
    "area": "Manicure/pedicure",
    "salario": 2900.00,
    "servicos": [
        db.servicos.findOne({id_servico: "ce10"})._id,
        db.servicos.findOne({id_servico: "ce14"})._id
    ],
    "id_profissional": "pr03"
}
]
);

db.createCollection("clientes");
db.getCollection('clientes').insertMany([
    {
        "id": "c01",
        "nome": "João da Silva",
        "telefone": "+55 81 93456-7890",
        "endereco": {
            "rua": "Rua Principal, 123",
            "cidade": "RECIFE",
            "estado": "PERNAMBUCO",
            "cep": "12345-678"
        }
    },
    {
        "id": "c02",
        "nome": "Maria Oliveira",
        "telefone": "+55 81 98765 4210",
        "endereco": {
            "rua": "Rua aurora, 124",
            "cidade": "RECIFE",
            "estado": "PERNAMBUCO",
            "cep": "12345-678"
        }
    },
    {
        "id": "c03",
        "nome": "Carlos Santos",
        "telefone": "+55 81 11122 3333",
        "endereco": {
            "rua": "Rua setubal, 125",
            "cidade": "RECIFE",
            "estado": "PERNAMBUCO",
            "cep": "12345-678"
        }
    },
    {
        "id": "c04",
        "nome": "Ana Ferreira",
        "telefone": "+55 81 55555 5555",
        "endereco": {
            "rua": "Rua Soledade, 126",
            "cidade": "RECIFE",
            "estado": "PERNAMBUCO",
            "cep": "12345-678"
        }
    },
    {
        "id": "c05",
        "nome": "Rafaela Silva",
        "telefone": "+55 81 77788 9999",
        "endereco": {
            "rua": "Rua da Moeda, 127",
            "cidade": "RECIFE",
            "estado": "PERNAMBUCO",
            "cep": "12345-678"
        }
    }    
]);


db.createCollection("agendamento");

db.getCollection('agendamento').insertOne({
    'servicos': db.servicos.findOne({id_servico: "ce19"})._id,
    'profissional': db.profissionais.findOne({id_profissional: "pr04"})._id,
    'cliente': db.clientes.findOne({id: "c01"})._id,
    'data': '07/08/2023'
});

db.getCollection('agendamento').insertOne({
    'servicos': db.servicos.findOne({id_servico: "ce14"})._id,
    'profissional': db.profissionais.findOne({id_profissional: "pr03"})._id,
    'cliente': db.clientes.findOne({id: "c02"})._id,
    'data': '06/11/2023'
});


db.getCollection('agendamento').insertOne({
    'servicos': db.servicos.findOne({id_servico: "ce00"})._id,
    'profissional': db.profissionais.findOne({id_profissional: "pr00"})._id,
    'cliente': db.clientes.findOne({id: "c03"})._id,
    'data': '12/10/2023'
});

db.getCollection('agendamento').insertOne({
    'servicos': db.servicos.findOne({id_servico: "ce01"})._id,
    'profissional': db.profissionais.findOne({id_profissional: "pr01"})._id,
    'cliente': db.clientes.findOne({id: "c04"})._id,
    'data': '10/01/2023'
});

db.getCollection('agendamento').insertOne({
    'servicos': db.servicos.findOne({id_servico: "ce12"})._id,
    'profissional': db.profissionais.findOne({id_profissional: "pr02"})._id,
    'cliente': db.clientes.findOne({id: "c05"})._id,
    'data': '21/03/2023'
});

