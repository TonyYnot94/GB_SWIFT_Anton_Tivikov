import UIKit

// Задание 1

func isEvenNum (num : Int) -> String{
    var result = ""

    if num % 2 == 0 {
        result = "Вы указали четное число"
    }else{
        result = "Вы указали не четное число"

    }
    print("Результат задания №1\n"  ,result , "\n")
    return result
}

isEvenNum(num: 100)


// Задание 2

func divideByThree (num : Int) -> String{
        var resultn = ""

        if num % 3 == 0 {
            resultn = "Вы указали число которое делится на 3 без остатка "
        }else{
            resultn = "Вы указали число которое не делится на 3 без остатка"

        }
        print("Результат задания №2\n"  ,resultn , "\n")
        return resultn
    }

divideByThree(num: 762)


// Задание 3

var arrayOfHundredNums : [Int] = []

for i in 1...100 {
    arrayOfHundredNums.append(i)
}

print("Результат задания №3\n"  ,arrayOfHundredNums , "\n")


// Задание 4

for element in arrayOfHundredNums{

    if (element % 3) != 0 || (element % 2) == 0{
        arrayOfHundredNums.remove(at: arrayOfHundredNums.firstIndex(of: element)!)
    }
}

print("Результат задания №4\n"  ,arrayOfHundredNums , "\n")


// Задание 5

func arrayWithFiboNums (n : Int) {
    var fibArray : [Int] = []

    for fibon_i in 0...n {
        if fibon_i < 2 {
            fibArray.append(1)
        }else{
            fibArray.append(fibArray[fibon_i - 1] + fibArray[fibon_i - 2])
        }
    }
    print("Результат задания №5\n" , fibArray , "\n")
}
arrayWithFiboNums(n: 50)


// Задание 6


var newArrayEratosphen : [Int] = []
var n = 100
var helpArray : [Int] = []
for new_index in 2...n {
    helpArray.append(new_index)
}

while let p = helpArray.first {
    newArrayEratosphen.append(p)
    helpArray = helpArray.filter { $0 % p != 0 }
}

print("Результат задания №6\n" ,newArrayEratosphen, "\n")
