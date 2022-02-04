class Driver {
    init(isGoodDriver: Bool, name: String) {
        self.name = name
        self.isGoodDriver = isGoodDriver
    }
    let isGoodDriver: Bool
    let name: String
}

class Car {
    var goodDriverIterator: GoodDriverIterator {
        return GoodDriverIterator(drivers: drivers)
    }
    
    private var drivers = [Driver(isGoodDriver: true, name: "Aleksey"),
                           Driver(isGoodDriver: false, name: "Ivan"),
                           Driver(isGoodDriver: true, name: "Petr"),
                           Driver(isGoodDriver: false, name: "Dmitry")]
}

extension Car: Sequence {
    func makeIterator() -> GoodDriverIterator {
        return GoodDriverIterator(drivers: drivers)
    }
}

class GoodDriverIterator: IteratorProtocol {
    
    init(drivers: [Driver]) {
        self.drivers = drivers.filter { $0.isGoodDriver } // Ключевое '$0' выступает элементом массива. Тут мы фильтруем элементы массва по свойству isGoodDriver == true
    }
    
    private let drivers: [Driver]
    private var current = 0
    
    func next() -> Driver? {
        
        defer { current += 1 } // Оператор, тело которого просто выполнится в последнюю очередь в пределах зоны видимости, в которой он был вызван
        
        if drivers.count > current {
            return drivers[current]
        } else {
            return nil
        }
    }
    
    func allDrivers() -> [Driver] {
        return drivers
    }
}

let car = Car()
let goodDriverIterator = car.goodDriverIterator.next()
let goodDriverIteratorViaSequance = car.makeIterator().allDrivers()



