//D - Dependency Inversion Principle
//Fonte:https://www.alura.com.br/artigos/solid?srsltid=AfmBOoqZUdYE_hILm9Bm1hQATItgTYeMhnCbxOv0VyY_F7NSsujtLLOW e https://medium.com/@amitaswal87/dependency-inversion-in-swift-6fa3acd2289a

//Problema: Num determinado sistema, temos a situação:

class BancoDeDados{
    func fetch(){
        print("fetch dados")
    }
}

class GeradorRelatorios{
    let banco: BancoDeDados
    
    init(banco: BancoDeDados) {
        self.banco = banco
    }
    
    func gerarRelatorio(){
        banco.fetch()
        print("gerando relatorio")
    }
}

let banco = BancoDeDados()
let relatorio = GeradorRelatorios(banco: banco)
relatorio.gerarRelatorio()

//Mas temos um problema. Mas caso um dia precisarmos alterar o serviço de banco de dados para um outro serviço, o acoplamento torna dificil em trocarmos o serviço sem modificar a classe GeradorRelatorios

//SOLUÇÃO: Podemos criar um protocolo que ambos bancos de dados adotarão

protocol BancoDeDadosProtocol{
    func fetchDados()
}

class BancoDeDadosIpeAmarelo: BancoDeDados{
    func fetchDados(){
        print("fetch banco de dados Ipê Amarelo")
    }
}

class BancoDeDadosIpeRoxo: BancoDeDados{
    func fetchDados(){
        print("fetch banco de dados Ipê Roxo")
    }
}

let bancoIpeAmarelo = BancoDeDadosIpeAmarelo()
let bancoIpeRoxo = BancoDeDadosIpeRoxo()

// NOTA: Agora, a classe GeradorRelatorios dependerá da nova interface no construtor

class NovoGeradorRelatorios{
    let banco: BancoDeDadosProtocol
    
    init(banco: BancoDeDadosProtocol) {
        self.banco = banco
    }
    
    func gerarRelatorio(){
        banco.fetchDados()
        print("gerando relatorio")
    }
}
