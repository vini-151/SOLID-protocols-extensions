//S - Single Responsibility Principle
//Fonte:https://www.alura.com.br/artigos/solid?srsltid=AfmBOoqZUdYE_hILm9Bm1hQATItgTYeMhnCbxOv0VyY_F7NSsujtLLOW

//Problema: Uma classe gerenciadora de tarefas que faz trabalhos além do gerenciamento de tarefas

class GerenciadorDeTarefas {
    func conectarAPI(){
        
    }
    
    func criarTarefa(){
        
    }
    
    func atualizarTarefa(){
        
    }
    
    func removerTarefa(){
        
    }
    
    func enviarNotificacao(){
        
    }
    
    func produzirRelatorio(){
        
    }
    
    func enviarRelatorio(){
        
    }
}

//Solução: Criar classes diferentes para cada responsabilidade: Gerenciador de tarefas, concetar API, notificações,

class ConectorAPI{
    func conectarAPI(){
        
    }
}

class Notificador{
    func enviarNotificacao(){
        
    }
}

class GeradorDeRelatorio{
    func produzirRelatorio(){
        
    }
    
    func enviarRelatorio(){
        
    }
}




