import UIKit

enum StartStopEngine : CustomStringConvertible {
    case start , stop
    var description: String {
        switch self {
        case .start : return "Включен"
        case .stop : return "Выключен"
        }
    }
}

enum OpenCloseWindows : CustomStringConvertible{
    case open , close
    var description: String{
        switch self{
        case .open : return "Открыты"
        case . close : return "Закрыты"
        }
    }
}

protocol Car : AnyObject {
    
    var mark : String {get}
    var model : String {get}
    var date : Int {get}
    var mileage : Double {get set}
    var engine : StartStopEngine {get set}
    var windows : OpenCloseWindows {get set}
    
}
extension Car {
    
    func startEngine(){
        if engine == .start {
            print("\nДвигатель уже включен")
        }else{
            engine = .start
            print("\nДвигатель включен")
        }
    }
    func stopEngine(){
        if engine == .stop {
            print("\nДвигатель уже выключен")
        }else{
            engine = .stop
            print("\nДвигатель выключен")
        }
    }
    func openWindows(){
        if windows == .open {
            print("\nОкна уже открыты")
        }else{
            windows = .open
            print("\nОкна открыты")
        }
    }
    func closeWindows(){
        if windows == .close {
            print("\nОкна уже закрыты")
        }else{
            windows = .close
            print("\nОкна закрыты")
        }
    }
}

//
//
//
//  Класс спорткар

class SportCar : Car {
    var model: String
    var windows: OpenCloseWindows
    var engine: StartStopEngine
    var mark: String
    var date: Int
    var mileage: Double
    
    init (mark : String, model : String , date : Int , mileage : Double , windows : OpenCloseWindows , engine : StartStopEngine){
        self.mark = mark
        self.model = model
        self.date = date
        self.mileage = mileage
        self.windows = windows
        self.engine = engine
    }
    
    func discription() {
        print("\n🚘\nМашина марки : \(mark)\nМодель : \(model)\nПробег : \(mileage)\nОкна : \(windows)\nДвигатель : \(engine)\n_________________________________")
    }
}

var car1 = SportCar(mark: "Audi", model: "A6", date: 1999, mileage: 243001.2, windows: .close, engine: .stop)

car1.discription()
car1.openWindows()
car1.startEngine()
car1.discription()
car1.startEngine()

//
//
//
//Грузовик
enum Pricep : CustomStringConvertible{
    case yes , no
    var description: String{
        switch self{
        case .yes : return "Есть прицеп"
        case .no : return "Нет прицепа"
        }
    }
}

class TrunkCar : Car {
    var mark: String
    var model: String
    var date: Int
    var mileage: Double
    var engine: StartStopEngine
    var windows: OpenCloseWindows
    var pricep : Pricep
    
    init (mark : String, model : String , date : Int , mileage : Double , windows : OpenCloseWindows , engine : StartStopEngine , pricep : Pricep){
        self.mark = mark
        self.model = model
        self.date = date
        self.mileage = mileage
        self.windows = windows
        self.engine = engine
        self.pricep = pricep
    }
    
    func OffPricep(){
        if pricep == .yes {
            print("\nПрицеп отсоединен")
            pricep = .no
        }else{
            print("\nУ этого грузовика нет прицепа")
        }
    }
    func OnPricep() {
        if pricep == .yes {
            print("\nПрицеп уже присоединен")
        }else{
            pricep = .yes
            print("\nПрицеп присоединен")
        }
    }
    
    func discription() {
        print("\n🚚\nМашина марки : \(mark)\nМодель : \(model)\nПробег : \(mileage)\nОкна : \(windows)\nДвигатель : \(engine)\nПрицеп : \(pricep)\n_________________________________")
    }
}


var truck1 = TrunkCar(mark: "Kamaz", model: "4123884-04", date: 2008, mileage: 233450.55, windows: .close, engine: .stop, pricep: .no)

truck1.discription()
truck1.OnPricep()
truck1.openWindows()
truck1.startEngine()
truck1.discription()
truck1.OffPricep()
truck1.discription()

//1. Создать протокол «Car» и описать свойства, общие для автомобилей, а также метод действия. +
//
//2. Создать расширения для протокола «Car» и реализовать в них методы конкретных действий с автомобилем: открыть/закрыть окно, запустить/заглушить двигатель и т.д. (по одному методу на действие, реализовывать следует только те действия, реализация которых общая для всех автомобилей). +
//
//3. Создать два класса, имплементирующих протокол «Car» - trunkCar и sportСar. Описать в них свойства, отличающиеся для спортивного автомобиля и цистерны.
//
//4. Для каждого класса написать расширение, имплементирующее протокол CustomStringConvertible.
//

