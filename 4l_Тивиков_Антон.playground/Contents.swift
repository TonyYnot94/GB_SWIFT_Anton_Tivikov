import UIKit

class Car {

    var mark : String
    var model : String
    var mileage : Double
    var isWindowsOpen : WindowsIsOpen
    var isEngineRunning : EngineIsRunning
    
    init(mark : String , model : String , mileage : Double , isWindowsOpen : WindowsIsOpen, isEngineRunning : EngineIsRunning  ){
        self.mark = mark
        self.model = model
        self.mileage = mileage
        self.isWindowsOpen = isWindowsOpen
        self.isEngineRunning = isEngineRunning
    }
    
    enum WindowsIsOpen : CustomStringConvertible {
        
        case opened , closed
        
        var description: String {
            
            switch self {
                
            case .opened :
            return "Открыты"
            case .closed :
            return "Закрыты"
            }
        }
        
    }
    
    enum EngineIsRunning : CustomStringConvertible {
        case run, stop
        
        var description: String {
            switch self {
            case .run :
                return "Включен"
            case .stop :
                return "Остановлен"
            }
        }
    }
   
    func discription(){
        print("\nОписание объекта класса №1(Родительского) 🚘 \nМашина марки : \(mark)\nМодель : \(model)\nПробег : \(mileage)\nОкна : \(isWindowsOpen)\nДвигатель : \(isEngineRunning)")
    }
    
    func startEngine(){
        if isEngineRunning == .run{
            print("\nДвигатель уже включен")
        }else{
            isEngineRunning = .run
            print("\nДвигатель включен")
        }
    }
    
    func stopEngine(){
        if isEngineRunning == .stop {
            print("\nДвигатель уже выключен")
        }else{
            isEngineRunning = .stop
            print("\nДвигатель выключен")
        }
    }
    
    func actionMethod(){
    }
}


var car1 = Car(mark: "Audi", model: "A6", mileage: 0, isWindowsOpen: .closed, isEngineRunning: .stop)


car1.discription()
car1.startEngine()
car1.discription()
car1.startEngine()

//
//
//
//
//
//

class SportCar : Car {
    enum CarType : CustomStringConvertible {
        case supercar , gipercar , supermegaturbocar
        var description: String {
            switch self {
            case .supercar : return "Суперкар"
            case .gipercar : return "Гиперкар"
            case .supermegaturbocar : return "ПУШКА-ГОНКА-РАКЕТА"
            }
        }
    }
    
    enum WheelDrive : CustomStringConvertible {
        case FWD , RWD , AWD
        
        var description: String {
            switch self {
            case .FWD :
                return "Передний"
            case .RWD :
                return "Задний"
            case .AWD :
                return "Полный"
            }
        }
    }
    
    enum Transmission : CustomStringConvertible {
        case manual, automatic
        
        var description: String {
            switch self {
            case .manual :
                return "Механическая коробка передач"
            case .automatic :
                return "Автоматическая коробка передач"
            }
        }
    }
    
    var transmission : Transmission
    var wheelDrive : WheelDrive
    var type : CarType
    
    
    init(mark: String, model: String, mileage: Double, isWindowsOpen: Car.WindowsIsOpen, isEngineRunning: Car.EngineIsRunning , transmission : Transmission, wheelDrive : WheelDrive, type : CarType) {
        self.transmission = transmission
        self.wheelDrive = wheelDrive
        self.type = type
        super .init(mark: mark, model: model, mileage: mileage, isWindowsOpen: isWindowsOpen, isEngineRunning: isEngineRunning)
    }
    
    override func discription() {
        print("\nОписание объекта класса №2(СпортКар) 🏎 \nМашина марки : \(mark)\nМодель : \(model)\nТип автомобиля : \(type)\nПробег : \(mileage)\nОкна : \(isWindowsOpen)\nДвигатель : \(isEngineRunning)\nКоробка передач : \(transmission)\nПривод : \(wheelDrive)")
        
       
    }
   
}


var sportcar = SportCar(mark: "Porsche", model: "911", mileage: 1200.2, isWindowsOpen: .closed, isEngineRunning: .run, transmission: .manual, wheelDrive: .RWD, type: .supermegaturbocar)

var sportcar2 = SportCar(mark: "Bugatti", model: "Chiron", mileage: 0.0, isWindowsOpen: .closed, isEngineRunning: .stop, transmission: .automatic, wheelDrive: .AWD , type: .gipercar)

sportcar.discription()
sportcar.startEngine()
sportcar2.discription()
sportcar2.startEngine()


//
//
//
//
//
//

class TrunkCar : Car{
    
    enum CarType : CustomStringConvertible {
        case semi_trailer , trailer , flatbet
        
        var description: String {
            switch self {
            case .semi_trailer : return "Седельный тягач"
            case .trailer : return "Бортовой с прицепом"
            case .flatbet : return "Бортовой"
            }
        }
    }
    
    
    enum WheelDrive : CustomStringConvertible {
        case FWD , RWD , AWD
        
        var description: String {
            switch self {
            case .FWD :
                return "Передний"
            case .RWD :
                return "Задний"
            case .AWD :
                return "Полный"
            }
        }
    }
    
    
    enum Transmission : CustomStringConvertible {
        case manual, automatic
        
        var description: String {
            switch self {
            case .manual :
                return "Механическая коробка передач"
            case .automatic :
                return "Автоматическая коробка передач"
            }
        }
    }
    
    
    enum Pricep : CustomStringConvertible {
       
        case yes , no
        
        var description: String {
            switch self {
        case .yes : return "Есть прицеп"
        case .no : return "Нет прицепа"
            }
        }
    }
    
    
    var transmission : Transmission
    var wheelDrive : WheelDrive
    var type : CarType
    var pricep : Pricep
    
    override func actionMethod() {
        if pricep == .yes {
            print("У этого грузовика можно отцепить прицеп")
        }else {
            print("У этого грузовика - нет прицепа")
        }
    }
    
    init(mark: String, model: String, mileage: Double, isWindowsOpen: Car.WindowsIsOpen, isEngineRunning: Car.EngineIsRunning, transmission : Transmission, wheelDrive : WheelDrive, type : CarType , pricep : Pricep) {
        self.pricep = pricep
        self.transmission = transmission
        self.wheelDrive = wheelDrive
        self.type = type
        super .init(mark: mark, model: model, mileage: mileage, isWindowsOpen: isWindowsOpen, isEngineRunning: isEngineRunning)
    }
    
    override func discription() {
        print("\nОписание объекта класса №3(Грузовик) 🚚 \nМашина марки : \(mark)\nМодель : \(model)\nТип автомобиля : \(type)\nПробег : \(mileage)\nОкна : \(isWindowsOpen)\nДвигатель : \(isEngineRunning)\nКоробка передач : \(transmission)\nПривод : \(wheelDrive)\nПрицеп : \(pricep)")
    }
}


var truck = TrunkCar(mark: "Man", model: "GTX", mileage: 234345.34, isWindowsOpen: .closed, isEngineRunning: .stop, transmission: .automatic, wheelDrive: .AWD, type: .semi_trailer, pricep: .yes)
var truck2 = TrunkCar(mark: "KAMAZ", model: "124456321009", mileage: 100500.15, isWindowsOpen: .closed, isEngineRunning: .stop, transmission: .automatic, wheelDrive: .RWD, type: .flatbet, pricep: .no)

truck.discription()
truck2.discription()
truck2.actionMethod()
truck.actionMethod()
truck.startEngine()

