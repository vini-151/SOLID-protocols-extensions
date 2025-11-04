//I - Interface Segregation Principle 
//Fonte:https://www.alura.com.br/artigos/solid?srsltid=AfmBOoqZUdYE_hILm9Bm1hQATItgTYeMhnCbxOv0VyY_F7NSsujtLLOW

//Problema: Num sistema de gerenciamento de funcionários, temos um protocolo que representa o funcionário e classes que conformam com o protocolo

protocol Funcionario {
    var salario: Double { get }
    func gerarComissao()
}

class Vendedor: Funcionario {
    var salario: Double = 1000
    func gerarComissao() {
        // gera comissao
    }
}

// Mas se temos uma classe Recepcionista, teremos um problema: recepcionista nao possui comissao e o nosso protocolo obriga que classes que adotem ele sigam seus métodos, o que forçaria a classe Recepcionista a implementar um método que nao faz sentido pra ela

// SOLUÇÃO: Criar protocólos específicos ou invés de um único protocólo

protocol FuncionarioNovo{
    var salario: Double { get }
}

protocol Comissionavel{
    func gerarComissao()
}

class VendedorNovo: Funcionario, Comissionavel {
    var salario: Double = 1000
    func gerarComissao() {
        // gera comissao
    }
}

class Recepcionista: FuncionarioNovo {
    var salario: Double = 1200
}
