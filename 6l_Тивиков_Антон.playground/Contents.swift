import UIKit


struct queue <Element : Comparable>{
    var nums = [Element]()
    
    mutating func addingNums (num : Element) {
        nums.append(num)
        print("\nВ массив был добавлен новый элемент : \(num)")
    }
    
    mutating func sortNumsFromMAXtoMIN () -> AnyObject {
        return print("\nМассив отсортирован по убыванию :\n \(nums.sorted(by: >))") as AnyObject
    }
    
    mutating func sortNumsFromMINtoMAX (){
        print("\nМассив отсортирован по возростанию :\n \(nums.sorted(by: <))")
    }
    
    mutating func filterNums(num : Element ){
        if [num] != nums.filter {$0 == num} {
            print("\nТакого элемента нет")
        }else {
            print("\nЗапрошеный элемент найден : \(nums.filter{$0 == num})")
        }
    }
    
    subscript (index : Int) -> Element? {
        return (index < nums.count ? nums[index]: nil)
    }
}

//
//
//

var newArr = queue<Int>(nums : [99 , 1 , 42, 3, 4 , 0 , 89])

print("\n" , newArr.nums)

newArr.addingNums(num: 45)

print("\n" , newArr.nums)
print("\n" , newArr.sortNumsFromMINtoMAX())
print("\n" , newArr.nums.count)
print("\n" , newArr[19])
print("\n" , newArr[7])
print("\n" , newArr.filterNums(num: 33))
print("\n" , newArr.filterNums(num: 89))
print("\n" , newArr.sortNumsFromMAXtoMIN())


//1. Реализовать свой тип коллекции «очередь» (queue) c использованием дженериков.
//
//2. Добавить ему несколько методов высшего порядка, полезных для этой коллекции (пример: filter для массивов)
//
//3. * Добавить свой subscript, который будет возвращать nil в случае обращения к несуществующему индексу.
