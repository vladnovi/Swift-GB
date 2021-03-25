import Cocoa

//1 задание
func numberFind(number: Int) {
    if number % 2 == 0 {
        print("четное")
    }
    else{
        print("нечетное")
    }
}
numberFind(number: 6)

//2 задание
func numberFind2(number: Int) {
    if number % 3 == 0 {
        print("делится без остатка")
    }
    else{
        print("делится с остатком")
    }
}
numberFind2(number: 5)

//3 задание
var array: [Int] = []
for i in 0...100{
array.append(i)
}
print(array)

//4 задание
for value in array {
    if (value % 2) == 0 {
        array.remove(at: array.firstIndex(of: value)!)
    }
    else if (value % 3) != 0 {
        array.remove(at: array.firstIndex(of: value)!)
    }
}
print(array)

//5* задание
func fibonacci (f: Int) -> [Int]  {

    var fibonacciArray = [Int]()
    for n in 0 ... f {

        if n == 0 {
            fibonacciArray.append(0)
        }
        else if n == 1 {
            fibonacciArray.append(1)
        }
        else {
           fibonacciArray.append (fibonacciArray[n-1] + fibonacciArray[n-2])
        }
    }
    return fibonacciArray
}
print(fibonacci(f: 50))


