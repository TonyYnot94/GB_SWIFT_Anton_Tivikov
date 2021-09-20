import UIKit
// Задание № 1
//-5x^2 - 12x + 3 = 0   дискриминант больше 0
// x^2 - 6x + 9 = 0     дискриминант равен 0
// 2x^2 - 3x + 4 = 0    дискриминант меньше 0

let a : Double = 2
let b : Double = -3
let c : Double = 4


let discr = pow(b, 2) - (4*a*c)
print("Дискриминант = ",discr)

if discr > 0 {
    let x1 = ((-b) + sqrt(discr)) / (2 * a)
    let x2 = ((-b) - sqrt(discr)) / (2 * a)
    print("Дискриминант больше 0\nВ уравнении два кореня\nx1 = ", x1,"\nx2 = ", x2)
    print("Округленные значения x1 = ", x1.rounded(),"\nи x2 = ", x2.rounded())
}else if discr == 0 {
    let x = -b/(2*a)
    print("Дискриминант равен 0\nВ уравнении один корень\nx = ", x)
    print("Округленное значения x = ", x.rounded())
}else {
    print("Дискриминант меньше 0\nВ уравнении нет действительных корней")
}


//
//
//
//
//Задание №2
let acat : Double = 8 //катет №1
let bcat : Double = 12 // катет №2

let powgipotenyza = pow(acat, 2) + pow(bcat, 2)
let perimetr = acat + bcat + sqrt(powgipotenyza)
let ploshad = (acat * bcat) / 2

print("Гипотенуза = ",sqrt(powgipotenyza), "\nПериметр = ",perimetr , "\nПлощадь = ", ploshad)
print("Округленное значение гипотенузы = ",sqrt(powgipotenyza).rounded(), "\nОкругленное значение периметра = ",perimetr.rounded() , "\nОкругленное значение площади  = ", ploshad.rounded())


//
//
//
//
//Задание №3

var sum : Double = 100000
let perc = 5


for year in 1...5 {
    sum += (sum / 100)*5
    print( year ,"Год \nСумма = ", sum)
}
print("\nСумма на вкладе за 5 лет = " , sum ,"\nОкругленное значение", round(sum))
