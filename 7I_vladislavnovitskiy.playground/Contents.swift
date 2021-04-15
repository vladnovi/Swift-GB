import Cocoa

enum carSharingError: Error {
    case noFuel(fuelneed: Double)
    case noFreeCar
    case noCar
}

struct Car {
    var fuel: Double
    var car: Int
}

class carSharing {
    var carPark = [
        "Toyota": Car(fuel: 38.2, car: 8),
        "BMW": Car(fuel: 54.3, car: 6),
        "Volkswagen": Car(fuel: 46.8, car: 12)
    ]
    var carFuel = 0.0
    
    func errors(carName name: String) throws {
        guard let cars = carPark[name] else {
            throw carSharingError.noCar
        }
        guard cars.car > 0 else {
            throw carSharingError.noFreeCar
        }
        guard cars.fuel > carFuel else {
            throw carSharingError.noFuel(fuelneed: cars.fuel - carFuel)
        }
        carFuel -= cars.fuel
        
        var someCars = cars
        someCars.fuel -= 1.0
        carPark[name] = someCars
        
        print("Арендовали машину \(name)")
    }
}

let clientsFavCars = [
    "Jack": "Toyota",
    "Donald": "Bmw",
]

func takeClient(client: String, Cars: carSharing) throws {
    let clientName = clientsFavCars[client] ?? "Volkswagen"
    try Cars.errors(carName: clientName)
}

var client = carSharing()
client.carFuel = 30.0


do {
    try takeClient(client: "Jack", Cars: client)
} catch carSharingError.noCar{
    print("Этой машины у нас нет")
} catch carSharingError.noFreeCar{
    print("Нет свободной машины")
} catch carSharingError.noFuel(let fuelneed){
    print("Недостаточно бензина, нужно еще \(fuelneed) литров")
}
