protocol Vehicle {
    func drive()
}

protocol VehicleFactory {
    func produce() -> Vehicle
}


class Car: Vehicle {
    func drive() {
        print("You are driving a car")
    }
}

class Truck: Vehicle {
    func drive() {
        print("You are driving a truck")
    }
}

class Bus: Vehicle {
    func drive() {
        print("You are driving a car")
    }
}


class CarFactory: VehicleFactory {
    func produce() -> Vehicle {
        print("Car has been produced")
        return Car()
    }
}

class TruckFactory: VehicleFactory {
    func produce() -> Vehicle {
        print("Truck has been produced")
        return Truck()
    }
}

class BusFactory: VehicleFactory {
    func produce() -> Vehicle {
        print("Bus has been produced")
        return Bus()
    }
}

let carFactory = CarFactory()
carFactory.produce()

let truckFactory = TruckFactory()
truckFactory.produce()

let busFactory = BusFactory()
busFactory.produce()
