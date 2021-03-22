import Cocoa

print("1 задание с квадратным уравнением")
var a: Float
a = 4.0
var b: Float
b = 6.0
var c: Float
c = 2.0

//основное уравнение
if a == 0  {
      a = 1
}
else if b == 0{
      b = 1
}
else if c == 0{
      c = 1
}

print(a,"x + ",b,"x + ",c," = 0")


var d:Float
d = 0

//поиск дискриминанта
if (a <= 0 && c <= 0) {
     d = (b * b)+(4 * a * c)
     print("D = ",b * b,"+",4 * a * c)
}

else {
    d = (b * b)-(4 * a * c)
    print("D = ",b * b,"-",4 * a * c)
}
print("D = ",d)

let dk = d.squareRoot()
var x1:Float
x1 = 0
var x2:Float
x2 = 0

//поиск корней
if dk > 0 {
    x1 = (-b + dk) / (2 * a)
    x2 = (-b - dk) / (2 * a)
     print ("1 корень",x1," а 2 корень",x2)
}
else if dk == 0 {
    x1 = -b / (2 * a)
     print ("корень",x1)
}
else if dk < 0 {
     print ("нет корней")
}





print("2 задание с треугольником")
var kat1:Float
kat1 = 4.0
var kat2:Float
kat2 = 6.0
var g:Float
g  = (kat1 * kat1) + (kat2 * kat2)
let result1 = g.squareRoot()
var s:Float
s = (kat1 * kat2) / 2
var p:Float
p = kat1 + kat2 + s

print("гиппотенуза = ",g,"площадь = ",s,"периметр = ",p)



