protocol SwimBehavior {
    func swim()
}

class ProfessionalSwimmer: SwimBehavior {
    func swim() {
        print("Professional swimming")
    }
}

class NonSwimmer: SwimBehavior {
    func swim() {
        print("Non-swimming")
    }
}

protocol DiveBehavior {
    func dive()
}

class ProfessionalDiver: DiveBehavior {
    func dive() {
        print("Professional diving")
    }
}

class NewbieDiver: DiveBehavior {
    func dive() {
        print("Newbie diving")
    }
}

class NonDiver: DiveBehavior {
    func dive() {
        print("Non-diving")
    }
}


class Human {
    
    private var diveBehavior: DiveBehavior!
    private var swimBehavior: SwimBehavior!
    
    func performSwim() {
        swimBehavior.swim()
    }
    
    func performDive() {
        diveBehavior.dive()
    }
    
    func setSwimBehavior (sb: SwimBehavior) {
        self.swimBehavior = sb
    }
    
    func setDiveBehavior (db: DiveBehavior) {
        self.diveBehavior = db
    }
    
    func run() {
        print("run")
    }
    
    init(swimBehavior: SwimBehavior, diveBehavior: DiveBehavior) {
        self.swimBehavior = swimBehavior
        self.diveBehavior = diveBehavior
    }
    
}


let human = Human(swimBehavior: ProfessionalSwimmer(), diveBehavior: ProfessionalDiver())
human.setSwimBehavior(sb: NonSwimmer())
human.performDive()
human.performSwim()
