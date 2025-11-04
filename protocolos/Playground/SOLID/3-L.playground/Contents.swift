//L - Liskov Substitution Principle
//Fonte:https://www.alura.com.br/artigos/solid?srsltid=AfmBOoqZUdYE_hILm9Bm1hQATItgTYeMhnCbxOv0VyY_F7NSsujtLLOW e https://medium.com/@amitaswal87/liskov-substitution-principle-in-swift-solid-principles-01c5da75a26b

//Problema: Temos uma classe Carro que adota o protocolo Veiculo

protocol Veiculo{
    func ligarMotor()
}

class Carro: Veiculo{
    func ligarMotor() {
        print("O motor do carro está ligado")
    }
}

// Mas, se quisermos uma classe Bicicleta que herda de Veículo. Isso fica estranho pois bicicletas não têm motor.

class Bicicleta: Veiculo{
    func ligarMotor() {
        fatalError("Bicicletas não têm motores") // essa abordagem não é recomendada
    }
}

//SOLUÇÃO: Há dois caminhos: ou Bicicleta se torna uma classe própria sem conformidade com Veículo.
//OU -> criamos protocolos para veículos motorizados e não motorizados

protocol VeiculoMotorizado{
    func ligarMotor()
}

protocol VeiculoNaoMotorizado{
    func aproveitarPasseio()
}

class Caminhao: VeiculoMotorizado{
    func ligarMotor() {
        print("O motor do caminhão está ligado")
    }
}

class Patinete: VeiculoNaoMotorizado{
    func aproveitarPasseio() {
        print("Andando no parque!")
    }
}

