enum CarType {
    case huge
    case fast
}

protocol Car {
    func drive()
}

class HugeCar: Car {
    func drive() {
        print("You are driving a huge car")
    }
}

class FastCar: Car {
    func drive() {
        print("You are driving a fast car")
    }
}

class Factory {
      static func produceCar(type: CarType) -> Car {
         var car: Car
        switch type {
        case .huge: car = HugeCar()
        case .fast: car = FastCar()
        }
        
        return car
    }
}


let coupe = Factory.produceCar(type: .fast)
coupe.drive()
