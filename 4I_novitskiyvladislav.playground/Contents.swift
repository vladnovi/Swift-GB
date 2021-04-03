import Cocoa
import UIKit
enum Transmission{
 case automatik, manual
}
enum DoorState{
 case open, close
}
enum WindowState{
 case open, close
}

class Car {
    let color: UIColor
    let transmission: Transmission
    var km: Double
    var doorState: DoorState
    var windowState: WindowState
    init(color: UIColor, mp3: Bool, transmission: Transmission, km: Double, doorState: DoorState, windowState: WindowState) {
        self.color = color
        self.mp3 = mp3
        self.transmission = transmission
        self.km = km
        self.doorState = doorState
        self.windowState = windowState
    }
}

var car1 = Car(color: .white, mp3: true, transmission: .auto, km: 10.0, doorState: .close, windowState: .open)

enum Turbo{
    case turbo, atmo
}
class SportCar: Car {
    var power: Int
    var maxSpeed: Int
    var turbo: Turbo
    init(color: UIColor, mp3: Bool, transmission: Transmission, km: Double, doorState: DoorState, windowState: WindowState, power: Int, maxSpeed: Int, turbo: Turbo) {
        self.power = power
        self.maxSpeed = maxSpeed
        self.turbo = turbo
    }
}

var sportCar1 = SportCar(color: .white, mp3: true, transmission: .auto, km: 10.0, doorState: .close, windowState: .open, power: 500, maxSpeed: 300, turbo: .turbo)

enum WheelDrive{
    case fourDrive, twoDrive
    }
    
class TrunkCar: Car {
    var trunkVolume: Double
    var wheelDrive: WheelDrive
    init(color: UIColor, mp3: Bool, transmission: Transmission, km: Double, doorState: DoorState, windowState: WindowState, trunkVolume: Double, wheelDrive: WheelDrive) {
        self.trunkVolume = trunkVolume
        self.wheelDrive = wheelDrive
    }
}

var trunkCar1 = TrunkCar(color: .white, mp3: true, transmission: .auto, km: 10.0, doorState: .close, windowState: .open, trunkVolume: 206.7, wheelDrive: .fourDrive)
