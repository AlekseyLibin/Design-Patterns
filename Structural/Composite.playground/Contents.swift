enum lvl {
    case low
    case intermediate
    case high
}

protocol Coworker {
    func hire(coworker: Coworker)
    func getInfo()
    var level: lvl { get }
}

//branch
class Manager: Coworker {
    init(level: lvl) {
        self.level = level
    }

    var level: lvl
    private var coworkers = [Coworker]()

    func hire(coworker: Coworker) {
        self.coworkers.append(coworker)
    }
    func getInfo() {
        print("\(self.level) level manager")
        for i in coworkers {
            i.getInfo()
        }
    }
}

//leaf
class LowLevelManager: Coworker {
    init(level: lvl) {
        self.level = level
    }

    var level: lvl

    func hire(coworker: Coworker) {
        print("Can't hire coworkers")
    }
    func getInfo() {
        print("\(self.level) level manager")
    }
}

let topManager = Manager(level: .high)

let lowManager = LowLevelManager(level: .low)
let lowManager2 = LowLevelManager(level: .low)

topManager.hire(coworker: lowManager)
topManager.hire(coworker: lowManager2)
topManager.getInfo()


