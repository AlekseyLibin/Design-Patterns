
protocol Car {
    func drive()
}

class LittleSizeCar: Car {
    func drive() {
        print("Drive a little sized car")
    }
}

class MiddleSizeCar: Car {
    func drive() {
        print("Drive a middle sized car")
    }
}

protocol Bus {
    func drive()
}

class LittleSizeBus: Bus {
    func drive () {
        print("Drive a little sized bus")
    }
}

class MiddleSizeBus: Bus {
    func drive() {
        print("Drive a middlse sized bus")
    }
}

protocol Factory {
    func produceBus() -> Bus
    func produceCar() -> Car
}

class LittleSizeFactory: Factory {
    func produceBus() -> Bus {
        print("Little sized bus has been produced")
        return LittleSizeBus()
    }
    func produceCar() -> Car {
        print("Little sized car has been produced")
        return LittleSizeCar()
    }
}

class MiddleSizeFactory: Factory {
    func produceBus() -> Bus {
        print("Middle sized bus has been produced")
        return MiddleSizeBus()
    }
    func produceCar() -> Car {
        print("Middle sized car has been produced")
        return MiddleSizeCar()
    }
}

let littleFactory = LittleSizeFactory()
littleFactory.produceCar()
littleFactory.produceBus()

let middleFactory = MiddleSizeFactory()
middleFactory.produceCar()
middleFactory.produceBus()
