//nome de profissionais que oferecem um servico especifico
db.profissionais.find({
    "servicos": db.servicos.findOne({ "nome": "Limpeza de Pele Profunda" })._id
}, { "_id": 0, "nome": 1 })

//---------------------------------------------------------------------------

//retorna o total gasto em servicos por uma cliente
// define o id da cliente pelo nome
var clienteId = db.clientes.findOne({ "nome": "Maria Oliveira" })._id;
var agendamentos = db.agendamento.find({ "cliente": clienteId });
var totalGasto = 0;

agendamentos.forEach(function (agendamento) {
    var servico = db.servicos.findOne({ "_id": agendamento.servicos });
    totalGasto += servico.preco;
});

totalGasto
//-----------------------------------------------------------------------------

// retorna as informacoes dos agendamentos de uma cliente
var clienteId = db.clientes.findOne({ "nome": "Ana Ferreira" })._id;

db.agendamento.aggregate([
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



