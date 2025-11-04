class temperatura{
    var celsius: Double = 0.0
    func configTemperatura(celsius: Double){
        self.celsius = celsius
        print("celsius: ", celsius)
    }
}
extension temperatura{
    //extensao para podermos também converter uma temperatura
    func converter(){
        var farenheit = (self.celsius * 1.8) + 32
        print("Farenheit: \(farenheit)")
    }
}
let temp1 = temperatura()
temp1.celsius = 25
temp1.converter()
