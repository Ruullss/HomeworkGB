//: A UIKit based Playground for presenting user interface
  
import Foundation

enum Clearance {
        case low, high
    }
enum Trailer : String {
        case yes = "Есть прицеп", no = "Нет прицепа"
    }
enum CarActionTruck : String {
        case hookTheTrailerOn = "Прицеп зацеплен", hookTheTrailerOff = "Прицеп не зацеплен"
    }
   
    
class Car {
    var carBrand : String
    var productionDate : Int
    var wheels : Int
    var engineVolume : Int
    var hp : Int
    
    
    init(carBrand : String, productionDate : Int, wheels : Int, engineVolume : Int, hp : Int) {
            self.carBrand = carBrand
            self.productionDate = productionDate
            self.wheels = wheels
            self.engineVolume = engineVolume
            self.hp = hp
    }
    func car() {
        print("Общий класс")
    }
    
}


class SportCar: Car {
    var clearance : Clearance
    
    init(clearance : Clearance) {
        self.clearance = clearance
        
        super.init(carBrand: "Dodge", productionDate: 2015, wheels: 4, engineVolume: 5500, hp: 426)
    }
}

class TruckCar: Car {
    var carrying : Int
    var trailer : Trailer
    var hookTrailer : CarActionTruck
    
    init(carrying : Int, trailer : Trailer, hookTrailer : CarActionTruck) {
        self.carrying = carrying
        self.trailer = trailer
        self.hookTrailer = hookTrailer
        
        super.init(carBrand: "Scania", productionDate: 2010, wheels: 10, engineVolume: 14000 , hp: 440)
    }
    
   override func car () {
        print ("Грузовик \(carBrand) \(productionDate) года выпуска, имеет \(wheels) колес, объем двигателя \(engineVolume), лощадинных сил \(hp). \n \(trailer.rawValue) \(hookTrailer.rawValue)")
    }
    
    
}
let scaniaTruckCar = TruckCar(carrying: 50000, trailer: .yes, hookTrailer: .hookTheTrailerOn)
let daftruckCar = TruckCar(carrying: 450000, trailer: .no, hookTrailer: .hookTheTrailerOff)

scaniaTruckCar.car()
daftruckCar.car()


