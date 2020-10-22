//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport

enum TruckAction: String {
    
    case engineOn = "Engine On", engineOff = "Engine Off"
    case openWindows = "Окно открыто", сloseWindows = "Окно закрыто"
    case loadOn = "Необходимо загрузить" , unload = " Необходимо выгрузить"
}

enum CarAction : String {

    case engineOn = "Engine On", engineOff = "Engine Off"
    case openWindows = "Окно открыто", сloseWindows = "Окно закрыто"
    case loadOn = "Необходимо загрузить" , unload = " Необходимо выгрузить"
}

struct Truck {
    var carBrand : String
    var productionDate : Int
    var volTrailer : Int
    var engineStart : TruckAction
    var windows : TruckAction
    var filledTrailerVol : TruckAction
    
    func discribeAuto () {
        print("Автомобиль \(self.carBrand), \(self.productionDate) года выпуска имеет объем багажника \(self.volTrailer) литров. Состояние автомобиля \n \(self.engineStart.rawValue) \n \(self.windows.rawValue) \n\(self.filledTrailerVol.rawValue)")
    }
    
    
    mutating func actionEngine (engine : Truck)  {
        self.engineStart = .engineOn
    }
}

struct Car {
    var carBrand : String
    var productionDate : Int
    var volTrunk : Int
    var engineStart : CarAction
    var windows : CarAction
    var filledTrunkVol : CarAction
}

var lotus = Car(carBrand: "Lotus", productionDate: 2010, volTrunk: 450, engineStart:.engineOn, windows: .сloseWindows, filledTrunkVol: .loadOn)

var scania = Truck(carBrand: "Scania", productionDate: 2016, volTrailer: 50000, engineStart: .engineOn, windows: .сloseWindows, filledTrailerVol: .unload)

func discribeAuto (car : Car) {
    print("Автомобиль \(car.carBrand), \(car.productionDate) года выпуска имеет объем багажника \(car.volTrunk) литров. Состояние автомобиля \n \(car.engineStart.rawValue) \n \(car.windows.rawValue) \n \(car.filledTrunkVol.rawValue)")
}

discribeAuto(car: lotus)

scania.discribeAuto()

lotus.carBrand = "BMW"
print(lotus.carBrand)

lotus.engineStart = .engineOff
print(lotus.engineStart)

scania.productionDate = 2012
print(scania.carBrand)
