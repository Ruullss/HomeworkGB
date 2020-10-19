//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport

// Задание 1.  Написать функцию, которая определяет, четное число или нет.

func even (number : Int) {
    number % 2 == 0 ? print("Четное число") : print("Число нечетное")
}

even(number :10)


// Задание 2. Написать функцию, которая определяет, делится ли число без остатка на 3.

func delenie (number : Int) {
    number % 3 == 0 ? print("Число делится без остатка на 3") : print("Число неделится без остатка на 3")
}

delenie(number: 10)


// Задание 3. Создать возрастающий массив из 100 чисел.

//var  array = [1 ... 100]

// Задание 3.
var array = [Int]()
var i = 0
while i < 100 {
    array.append(i+1)
    i += 1
    
}
// Задание 4. Удалить из этого массива все четные числа и все числа, которые не делятся на 3
var index = 0
while array.count > 0 && index < array.count {
    if array[index] % 2 == 0 {
    array.remove(at: index)
    index -= 1
    }
    index += 1
}
 print (array)

var newArray = array
var newIndex = 0
while newArray.count > 0 && newIndex < newArray.count {
    if newArray[newIndex] % 3 != 0 {
        newArray.remove(at: newIndex)
        newIndex -= 1
    }
    newIndex += 1
}
 print (newArray)

// Задание 5. Написать функцию, которая добавляет в массив новое число Фибоначчи, и добавить при помощи нее 50 элементов.

// Не разобрался как правильно оформить данное задание в функцию ((

var fibo  =  [0,1]
func fibonacci ()   {
    var fiboIndex = 0
    var fiboIndex1 = 0
    var fiboIndex2 = 1

    for _ in 3 ... 50 {
    fiboIndex = fiboIndex1 + fiboIndex2
    fiboIndex1 = fiboIndex2
    fiboIndex2 = fiboIndex
    
    fibo.append(fiboIndex)
    }
    print(fibo)
}
    fibonacci()


// Задание 6. Не понял как сделать
    
