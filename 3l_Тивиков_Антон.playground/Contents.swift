import UIKit

// Структура Легковой Автомобиль
struct sportCar {
    
    var name : String // Марка
    var model : String // Модель)
    var engineSize : Double // Объем двигателя
    var date : Int // Год выпуска
    var bootSpace : Double // Объем багажника
    var freeSpaceinBoot : Double // Свободный объем багажника
    var isEngineRunning : Bool // Состояние двигателя ВКЛ/ВЫКЛ
    var isWindowsOpen : Bool // Окна ОТКРЫТЫ/ЗАКРЫТЫ
    
    
    //Вывод описания свойств
    mutating func discription(){
        print("Автомобиль марки : \(name) \nМодель : \(model) \nГод выпуска: \(date) \nОбъем двигателя : \(engineSize) \nОбъем багажника \(bootSpace)\nСвободного места в багажнике : \(freeSpaceinBoot)\nДвигатель включен ? : \(isEngineRunning)\nОкна открыты ? : \(isWindowsOpen)\n")
    }
    
    // Вкл/выкл Двигатель
    mutating func startstopEngine(starting :Bool ) -> String{
        var text : String
    
        switch starting {
        case true:
            if starting == isEngineRunning{
                text = "Двигатель автомобиля \(name + " " + model) уже работает\n"
            }else{
                text = "Двигатель автомобиля \(name + " " + model) включен\n"
                isEngineRunning = true
            }
        case false:
            if starting == isEngineRunning {
                text = "Двигатель автомобиля \(name + " " + model) уже был выключен\n"
            }else{
            text = "Двигатель автомобиля \(name + " " + model) выключен\n"
                isEngineRunning = false
            }
        }
        print(text)
        return text
    }
    
    // Открыть/закрыть окна
    mutating func opencloseWindows(){
        if isWindowsOpen{
            isWindowsOpen = false
            print("Окна автомобиля \(name + " " + model) закрыты\n")
        }else {
            isWindowsOpen = true
            print("Окна автомобиля \(name + " " + model) открыты\n")
        }
    }
    
    //Положить груз в багажник
    mutating func toBootSpace(someStuffSize : Double){
        var text : String
        if someStuffSize <= bootSpace && someStuffSize <= freeSpaceinBoot {
                freeSpaceinBoot -= someStuffSize
                text = "Ваш груз сложен в багажник автомобиля \(name + " " + model).\nОставшееся свободное место :\(freeSpaceinBoot)\n"
                print(text)
        }else{
            text = "Этот груз не помещается в багажник автомобиля \(name + " " + model)\nMаксимально допустимый объем груза : \(bootSpace)\nКоличество свободного пространства в багажнике : \(freeSpaceinBoot)\n"
            print(text)
        }
    }
    
    // Достать груз из багажника
    mutating func outOfBootSpace(someStuffSize : Double){
        var text : String
        if freeSpaceinBoot <= bootSpace && someStuffSize <= freeSpaceinBoot {
            freeSpaceinBoot += someStuffSize
            text = "Вы достали из багажника автомобиля \(name + " " + model) груз размером : \(someStuffSize)\nКоличество свободного пространства в багажнике : \(freeSpaceinBoot)\n"
            print(text)
        }else{
            text = "Груз такого объема не был сложен в багажник  автомобиля \(name + " " + model).\nКоличество занятого пространства багажника : \(bootSpace - freeSpaceinBoot)\n "
            print(text)
        }
    }
}

// Инициализация экземпляров структур

        var car1 = sportCar(name: "Audi", model: "A6", engineSize: 3.0, date: 2014, bootSpace: 350.2, freeSpaceinBoot: 350.2, isEngineRunning: false, isWindowsOpen: false)

        var car2 = sportCar(name: "Mercedes-Benz", model: "GLE", engineSize: 3.5, date: 2013, bootSpace: 500.5, freeSpaceinBoot: 500.5, isEngineRunning: false, isWindowsOpen: false)



// Приминение к ним действий


car1.discription()
car2.discription()

car2.startstopEngine(starting: true)
car2.startstopEngine(starting: true)

car1.toBootSpace(someStuffSize: 0.2)
car1.toBootSpace(someStuffSize: 150)
car1.outOfBootSpace(someStuffSize: 0.2)
car1.outOfBootSpace(someStuffSize: 3405)

car2.discription()
car1.discription()



// Структура Грузовой Автомобиль
struct trunkCar{
    var name : String // Марка
    var model : String // Модель)
    var date : Int // Год выпуска
    var bootSpace : Double // Объем багажника
    var freeSpaceinBoot : Double // Свободный объем багажника
    var isEngineRunning : Bool // Состояние двигателя ВКЛ/ВЫКЛ
    var isWindowsOpen : Bool // Окна ОТКРЫТЫ/ЗАКРЫТЫ
    
    mutating func discription(){
        print("Автомобиль марки : \(name) \nМодель : \(model) \nГод выпуска: \(date) \nОбъем багажника \(bootSpace)\nСвободного места в багажнике : \(freeSpaceinBoot)\nДвигатель включен ? : \(isEngineRunning)\nОкна открыты ? : \(isWindowsOpen)\n")
    }
    
    // Вкл/выкл Двигатель
    mutating func startstopEngine(starting :Bool ) -> String{
        var text : String
        
        switch starting {
        case true:
            if starting == isEngineRunning{
                text = "Двигатель автомобиля \(name + " " + model) уже работает\n"
            }else{
                text = "Двигатель автомобиля \(name + " " + model) включен\n"
                isEngineRunning = true
            }
        case false:
            if starting == isEngineRunning {
                text = "Двигатель автомобиля \(name + " " + model) уже был выключен\n"
            }else{
            text = "Двигатель автомобиля \(name + " " + model) выключен\n"
                isEngineRunning = false
            }
        }
        print(text)
        return text
    }
    
    // Открыть/закрыть окна
    mutating func opencloseWindows(){
        if isWindowsOpen{
            isWindowsOpen = false
            print("Окна автомобиля \(name + " " + model) закрыты\n")
        }else {
            isWindowsOpen = true
            print("Окна автомобиля \(name + " " + model) открыты\n")
        }
    }
    
    //Положить груз в багажник
    mutating func toBootSpace(someStuffSize : Double){
        var text : String
        if someStuffSize <= bootSpace && someStuffSize <= freeSpaceinBoot {
                freeSpaceinBoot -= someStuffSize
            
                text = "Ваш груз сложен в багажник автомобиля \(name + " " + model).\nОставшееся свободное место :\(freeSpaceinBoot)\n"
                print(text)
        }else{
            text = "Этот груз не помещается в багажник автомобиля \(name + " " + model)\nMаксимально допустимый объем груза : \(bootSpace)\nКоличество свободного пространства в багажнике : \(freeSpaceinBoot)\n"
            print(text)
        }
        
        

    }
    // Достать груз из багажника
    mutating func outOfBootSpace(someStuffSize : Double){
        var text : String
        if freeSpaceinBoot <= bootSpace && someStuffSize <= freeSpaceinBoot {
            freeSpaceinBoot += someStuffSize
            text = "Вы достали из багажника автомобиля \(name + " " + model) груз размером : \(someStuffSize)\nКоличество свободного пространства в багажнике : \(freeSpaceinBoot)\n"
            print(text)
        }else{
            text = "Груз такого объема не был сложен в багажник  автомобиля \(name + " " + model).\nКоличество занятого пространства багажника : \(bootSpace - freeSpaceinBoot)\n "
            print(text)
        }
        
    }
    
}

var gruz1 = trunkCar(name: "MAN", model: "TGX", date: 2021, bootSpace: 100500.0, freeSpaceinBoot: 100500.0, isEngineRunning: false, isWindowsOpen: false)

var gruz2 = trunkCar(name: "КамАЗ", model: "43118-6033-24", date: 2021, bootSpace: 176000.0, freeSpaceinBoot: 176000.0, isEngineRunning: false, isWindowsOpen: false)


gruz2.discription()
gruz1.discription()

gruz2.toBootSpace(someStuffSize: 23000)
gruz2.toBootSpace(someStuffSize: 40000)
gruz2.outOfBootSpace(someStuffSize: 1000)

gruz1.startstopEngine(starting: true)
gruz2.startstopEngine(starting: true)

gruz2.discription()
gruz1.discription()

