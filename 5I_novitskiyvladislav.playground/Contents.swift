import Cocoa

enum WindowState {
    case open, close
}
enum EngineState {
    case on, off
}
enum Color: String {
    case black = "black",
         white = "white",
         blue = "blue",
         yellow = "yellow",
         red = "red"
}

protocol Car {
    var brand : String {get set}
    var productionYear : Int {get set}
    var color : Color {get set}
}

extension Car {
    func windowState(action: WindowState){
        switch action{
        case .open:
            print("Окно открыто")
        case .close:
            print("Окно закрыто")
        }
    }
    func engineState(action: EngineState){
        switch action{
        case .on:
            print("Двигатель запущен")
        case .off:
            print("Двигатель заглушен")
        }
    }
}

class trunkCar : Car{
    enum Tank: String{
        case full = "Полная цистерна", empty = "Пустая цистерна"
    }
    var brand : String
    var productionYear : Int
    var color : Color
    
    var tankStatus: Tank
    
    init(brand: String, productionYear: Int, color: Color, tankStatus: Tank){
        self.brand = brand
        self.productionYear = productionYear
        self.color = color
        self.tankStatus = tankStatus
    }
}
extension trunkCar: CustomStringConvertible {
    var description : String {
        return "Грузовик - цистерна \(self.brand) выпущенный в \(self.productionYear) с цветом \(self.color.rawValue).Статус цистерны - \(self.tankStatus.rawValue)"
    }
}


class sportCar : Car{
    enum wheelDrive: String{
        case fourWheelDrive = "Полный привод", twoWheelDrive = "Задний привод"
    }
    var brand : String
    var productionYear : Int
    var color : Color
    
    var wheelDriveStatus: wheelDrive
    
    init(brand: String, productionYear: Int, color: Color, wheelDriveStatus: wheelDrive){
        self.brand = brand
        self.productionYear = productionYear
        self.color = color
        self.wheelDriveStatus = wheelDriveStatus
    }
}
extension sportCar: CustomStringConvertible {
    var description : String {
        return "Спортивная машина \(self.brand) выпущенная в \(self.productionYear) с цветом \(self.color.rawValue).Привод - \(self.wheelDriveStatus.rawValue)"
    }
}

let trunk1 = trunkCar(brand: "Volvo", productionYear: 2015, color: .white, tankStatus: .full)
print(trunk1)
let sport1 = sportCar(brand: "Mercedes", productionYear: 2018, color: .black, wheelDriveStatus: .fourWheelDrive)
print(sport1)
