// ESSE ARQUIVO CONTÉM OS SCRIPTS DE POVOAMENTO E AS CONSULTAS 
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

// **************************************************************************** ,

// Muda o nome da coleção de "agendamento" para "agendamentos". DEVE SER O PRIMEIRO A SER RODADO
db.agendamento.renameCollection("agendamentos");


//nome de profissionais que oferecem um servico especifico


// Retorna a quantidade de documentos em serviços
db.servicos.count();

//-----------------------------------------------------------------------------

// Retorna todos os agendamentos 
db.agendamentos.find().pretty();

// Altera o salário do massagista
db.profissionais.update(
    {id_profissional: "pr00"},
    {$set: {"salario": 3000}}
  )
//-----------------------------------------------------------------------------
//  Adiciona o serviço de Peeling Quimico a profissinal Ana Silva
db.profissionais.updateOne(
    {id_profissional: "pr01"},
    {$addToSet: {"servicos": db.servicos.findOne({id_servico: "ce07"})._id}}
);
//-----------------------------------------------------------------------------
//Retorna os Funcionários e quantidade de serviços que eles fazem 
db.profissionais.aggregate([
    {
        $project:{
            nome: 1,
            salario: "$salario",
            numServicos: {$size: "$servicos"},
            _id: 0
        }
    },
    { $sort: {numServicos:-1, salario: -1}}
]).pretty();
//-----------------------------------------------------------------------------
// Retona os profissionais que realizam determinados serviços
db.profissionais.find({servicos: {$all: [
    db.servicos.findOne({id_servico: "ce02"})._id,
    db.servicos.findOne({id_servico: "ce07"})._id
]}}).pretty();
//-----------------------------------------------------------------------------
//Agrega os profissionais por area, e retona o salário mais alto, o salário médio e o mais baixo, bem como o qunato que cada área rende
db.profissionais.aggregate([
    {
        $group: {
            _id: "$area",
            salario_maximo: {$max: "$salario"},
            salario_medio: {$avg: "$salario"},
            salario_menor: {$min: "$salario"},
            salario_total: {$sum: "$salario"}

        }
    }
]).pretty();
//-----------------------------------------------------------------------------
// Ordena os serviços por preço
db.servicos.find().sort({preco: 1}).pretty();
//-----------------------------------------------------------------------------
// Mostra os profissionais que ganham mais que 5000
db.profissionais.find({salario: {$gte: 5000 }}).pretty();
//-----------------------------------------------------------------------------
// Retorna os 5 serviços que custam menos que R$ 200
db.servicos.find({preco:{$lt: 200}}).limit(5).pretty();
//-----------------------------------------------------------------------------
// Retorna todos os serviços que são massagem
db.servicos.createIndex({ categoria: "text" }); 
db.servicos.find( { $text: { $search: "Massagem"} } ).pretty();
//-----------------------------------------------------------------------------
//Aplica 25% de desconto em  um serviço especifico
db.servicos.aggregate([
    { 
        $project: {
        nome: 1,
        preco: '$preco',
        promocao: {$cond: {if: {$in: ["$id_servico", ["ce01"]]},then: { $multiply: [ "$preco", 0.75 ] } , else: 'Promoção Indisponivel' }},
        _id: 0
        }
    }
]).pretty();

//-----------------------------------------------------------------------------

//Estabelece um outer join entre profissionais e servicos e utiliza isso para mostrar os serviços que são da categoria Dermatologia
db.profissionais.aggregate([
    {
        $lookup: {
            from: "servicos",
            localField: "servicos",
            foreignField: "_id",
            as: "servicos_info"
        }
    },

    {
        $project: {
            _id:0,
            nome: 1,
            area: 1,
            servicosPlano:{
                $filter: {
                    input: "$servicos_info",
                    as: "servico",
                    cond: {$eq: ["$$servico.categoria", "Dermatologia"]}
                }
            }
        }
    }
]).pretty();

//-----------------------------------------------------------------------------

//Retorna um profissional com id pr04 
db.profissionais.find({$where: function(){
    return (this.id_profissional == "pr04")
}}).pretty();


//-----------------------------------------------------------------------------
var mapFunction1 = function() {
    emit(this.area, this.salario);
 };
 var reduceFunction1 = function(keyCustId, valuesPrices) {
    return Array.sum(valuesPrices);
 };

db.profissionais.mapReduce(
    mapFunction1,
    reduceFunction1,
    {
        out: "mapReducee"
    }
);
db.mapReducee.find();

//-----------------------------------------------------------------------------
//Retorna os serviços que podem ser cobertos por plano de saúde
db.servicos.find({plano_saude : {$exists: true}}).pretty();

//-----------------------------------------------------------------------------

db.profissionais.find({
    "servicos": db.servicos.findOne({ "nome": "Limpeza de Pele Profunda" })._id
}, { "_id": 0, "nome": 1 })

//---------------------------------------------------------------------------

//retorna o total gasto em servicos por uma cliente
// define o id da cliente pelo nome
var clienteId = db.clientes.findOne({ "nome": "Maria Oliveira" })._id;
var agendamentos = db.agendamentos.find({ "cliente": clienteId });
var totalGasto = 0;

agendamentos.forEach(function (agendamentos) {
    var servico = db.servicos.findOne({ "_id": agendamentos.servicos });
    totalGasto += servico.preco;
});

totalGasto
//-----------------------------------------------------------------------------

// retorna as informacoes dos agendamentos de uma cliente
var clienteId = db.clientes.findOne({ "nome": "Ana Ferreira" })._id;

db.agendamentos.aggregate([
    {
        $match: {
            cliente: clienteId // Filtra os agendamentos pelo ID do cliente
        }
    },
    {
        $lookup: {
            from: "clientes",
            localField: "cliente",
            foreignField: "_id",
            as: "cliente_info"
        }
    },
    {
        $lookup: {
            from: "servicos",
            localField: "servicos",
            foreignField: "_id",
            as: "servico_info"
        }
    },
    {
        $lookup: {
            from: "profissionais",
            localField: "profissional",
            foreignField: "_id",
            as: "profissional_info"
        }
    },
    {
        $project: {
            // exclui o id do resultado e inclui a data
            _id: 0,
            data: 1, 
            //extrai o nomes do cliente, do servico e do profissional
            cliente: { $arrayElemAt: ["$cliente_info.nome", 0] }, 
            servico: { $arrayElemAt: ["$servico_info.nome", 0] }, 
            profissional: { $arrayElemAt: ["$profissional_info.nome", 0] } 
        }
    }
])

//-----------------------------------------------------------------------------