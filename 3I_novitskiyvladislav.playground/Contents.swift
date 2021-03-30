import Cocoa

enum Engine{
 case on, off
}
enum Windows{
 case open, close
}
enum Trunk{
 case full, empty
}

//Легковая машина
struct SportCar{
  let model: String
  let year: Int
  var engine: Engine{
     didSet {
         if engine == .on{
         print("Мотор запущен")
         }
         else{
         print("Мотор выключен")
         }
     }
  }
  var windows: Windows{
     didSet {
         if windows == .open{
         print("Окна открыты")
         }
         else{
         print("Окна закрыты")
         }
     }
  }
  var trunk: Trunk{
     didSet {
         if trunk  == .full{
         print("Багажник полный")
         }
         else{
         print("Багажник пустой")
         }
     }
  }

        mutating func engineOn(){
        self.engine = .on
        }
        mutating func engineOff(){
        self.engine = .off
        }
        mutating func windowsOpen(){
        self.windows = .open
        }
        mutating func windowsClose(){
        self.windows = .close
        }
        mutating func trunkFull(){
        self.trunk = .full
        }
        mutating func trunkEmpty(){
        self.trunk = .empty
        }
}

//Грузовик
struct TrunkCar{
  let model: String
  let year: Int
  var engine: Engine{
     didSet {
         if engine == .on{
         print("Мотор запущен")
         }
         else{
         print("Мотор выключен")
         }
     }
  }
  var windows: Windows{
     didSet {
         if windows == .open{
         print("Окна открыты")
         }
         else{
         print("Окна закрыты")
         }
     }
  }
  var trunk: Trunk{
     didSet {
         if trunk  == .full{
         print("Багажник полный")
         }
         else{
         print("Багажник пустой")
         }
     }
  }

        mutating func engineOn(){
        self.engine = .on
        }
        mutating func engineOff(){
        self.engine = .off
        }
        mutating func windowsOpen(){
        self.windows = .open
        }
        mutating func windowsClose(){
        self.windows = .close
        }
        mutating func trunkFull(){
        self.trunk = .full
        }
        mutating func trunkEmpty(){
        self.trunk = .empty
        }
}


var car1 = SportCar(model: "lexus", year: 2020, engine: .on, windows: .open, trunk: .full)
var car2 = TrunkCar(model: "kamaz", year: 2003, engine: .off, windows: .open, trunk: .full)

car1.engineOff()
car2.windowsClose()
