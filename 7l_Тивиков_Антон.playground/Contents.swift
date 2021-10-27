import UIKit


enum Errors : Error{
    
    case  EngineBroke , NoFuel , RunOutOfFuel
}


class Car {
    var engine : Bool
    var gas : Int
    
    init (engine : Bool , gas : Int){
        self.engine = engine
        self.gas = gas
    }
    
    func engineStatus() throws{
        if engine == false {
            throw Errors.EngineBroke
        }else {
            print("Статус двигателя : Исправен")
        }
    }
    func gasCount() throws{
        if gas == 0 {
            throw Errors.NoFuel
        }else if gas <= 15 {
            throw Errors.RunOutOfFuel
        }else{
            print("В топливном баке : \(gas)")
        }
    }
}


var a = Car(engine: true, gas: 50)
var b = Car(engine: false, gas: 6)
var c = Car(engine: false, gas: 0)

do {
    try c.engineStatus()
}
catch Errors.EngineBroke {
    print("Двигатель не исправен")
}
        
do{
    try c.gasCount()
}
catch Errors.NoFuel{
    print("Нет топлива")
}
catch Errors.RunOutOfFuel{
    print("Топливо заканчивается.")
}

//1. Придумать класс, методы которого могут завершаться неудачей и возвращать либо значение, либо ошибку Error?. Реализовать их вызов и обработать результат метода при помощи конструкции if let, или guard let.
//
//2. Придумать класс, методы которого могут выбрасывать ошибки. Реализуйте несколько throws-функций. Вызовите их и обработайте результат вызова при помощи конструкции try/catch.
