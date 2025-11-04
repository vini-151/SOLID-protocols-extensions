protocol BoasVindas {
    var nome: String { get }
    
    func messagem()
    
}

class Funcionario: BoasVindas{
    var nome = "Fulano"
    
    func messagem() {
        print("Olá", nome)
    }
}

var funcionario = Funcionario()
funcionario.messagem()
    
struct Funcionarioo: BoasVindas{
    var nome: String
    
    func messagem() {
        print("Olá", nome)
    }
}
