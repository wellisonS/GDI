// MongoDB Playground
// Use Ctrl+Space inside a snippet or a string literal to trigger completions.

// The current database to use.
use('clinica');

// Create a new document in the collection.
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
        "categoria": "Estética",
        "duracao_minutos": 90,
        "preco": 120.00
    },
    {
        "id_servico": "ce02",
        "nome": "Tratamento de Celulite",
        "descricao": "Um tratamento eficaz para redução de celulite...",
        "categoria": "Estética",
        "duracao_minutos": 120,
        "preco": 150.00
    },
    {
        "id_servico": "ce03",
        "nome": "Depilação a Laser",
        "descricao": "Remova os pelos indesejados com depilação a laser...",
        "categoria": "Estética",
        "duracao_minutos": 60,
        "preco": 200.00
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
        "preco": 140.00
    },
    {
        "id_servico": "ce07",
        "nome": "Peeling Químico",
        "descricao": "Renove sua pele com um peeling químico...",
        "categoria": "Estética",
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
        "categoria": "Estética",
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
        "categoria": "Estética",
        "duracao_minutos": 75,
        "preco": 110.00
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
        "categoria": "Estética",
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
        "categoria": "Estética",
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
        "categoria": "Estética",
        "duracao_minutos": 90,
        "preco": 120.00
    }
    ]
);
