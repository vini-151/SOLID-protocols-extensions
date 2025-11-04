//S - Single Responsibility Principle
//Fonte:https://www.alura.com.br/artigos/solid?srsltid=AfmBOoqZUdYE_hILm9Bm1hQATItgTYeMhnCbxOv0VyY_F7NSsujtLLOW

struct Exame{
    var id: Int
    var tipo: String
}

//Problema: Em uma clínica que originalmente aceita apenas exames de sangue, agora passará a aceitar outros tipos de exames

class AprovaExames{
    func aprovarSolicitacaoExame(exame: Exame){
        if(verificaExameSangue(exame: exame)){
            print("Exame aprovado")
        }
    }
    
    func verificaExameSangue(exame: Exame) -> Bool{
        if exame.tipo == "SANGUE"{
            return true
        }else{
            return false
        }
    }
}

// se quisermos acrescentar mais tipos de exames, teremos um if gigante no 'AprovarSolicitaçãoExame

class AprovaExames2{
    func aprovarSolicitacaoExame(exame: Exame){
        if(exame.tipo == "SANGUE"){
            if(verificaExameSangue(exame: exame)){
                print("Exame aprovado")
            }
        }else if(exame.tipo == "RAIOX"){
            //mesma coisa pro raio X
        }//continua para futuros exames
    }
    
    func verificaExameSangue(exame: Exame) -> Bool{
        if exame.tipo == "SANGUE"{
            return true
        }else{
            return false
        }
    }
    //raliza mais funcoes para demais exames
    
    
    
}


// SOLUÇÃO: Cria um protocolo que representa a aprovação de uma forma genérica
// Assim, para cada exame aceito pela clínica, será possível a criação de novos tipos de aprovação que implementarão esse protocolo

protocol AprovaExameProtocol{
    func aprovarSolicitacaoExame(exame: Exame)
    func verificaCondicoesExame(exame: Exame)
}

class AprovaExameSangue: AprovaExameProtocol{
    func aprovarSolicitacaoExame(exame: Exame) {
    }
    func verificaCondicoesExame(exame: Exame) {
    }
}

class AprovaExameRaioX: AprovaExameProtocol{
    func aprovarSolicitacaoExame(exame: Exame) {
    }
    func verificaCondicoesExame(exame: Exame) {
    }
}

