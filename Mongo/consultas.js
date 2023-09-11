
// Muda o nome da coleção de "agendamento" para "agendamentos". DEVE SER O PRIMEIRO A SER RODADO
db.agendamento.renameCollection("agendamentos");


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



// Retorna a quantidade de documentos em serviços
db.servicos.count();



// Retorna todos os agendamentos 
db.agendamentos.find().pretty();

// Altera o salário do massagista
db.profissionais.update(
    {id_profissional: "pr00"},
    {$set: {"salario": 3000}}
  )

//  Adiciona o serviço de Peeling Quimico a profissinal Ana Silva
db.profissionais.updateOne(
    {id_profissional: "pr01"},
    {$addToSet: {"servicos": db.servicos.findOne({id_servico: "ce07"})._id}}
);

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

//Retorna um profissional com id pr04 (ainda falta ajeitar)
db.profissionais.find({$where: function(){
    return (this.id_profissional == "pr04")
}}).pretty();

// Retona os profissionais que realizam determinados serviços
db.profissionais.find({servicos: {$all: [
    db.servicos.findOne({id_servico: "ce02"})._id,
    db.servicos.findOne({id_servico: "ce07"})._id
]}}).pretty();

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
// Ordena os serviços por preço
db.servicos.find().sort({salario: -1}).pretty();

// Mostra os profissionais que ganham mais que 5000
db.profissionais.find({salario: {$gte: 5000 }}).pretty();
// Retorna os 5 serviços que custam menos que R$ 200
db.servicos.find({preco:{$lt: 200}}).limit(5).pretty();

