class Enemy {
    var strength = 600
}

protocol MilitaryChain {
    var  strength: Int { get }
    var nextRank: MilitaryChain? { get set }
    
    func shouldDefeatWithStrength(amount: Int)
}

class Soldier: MilitaryChain {
    var strength = 100
    
    var nextRank: MilitaryChain?
    
    func shouldDefeatWithStrength(amount: Int) {
        if amount < strength {
            print("Soldier got it")
        } else {
            print("Soldier couldn't defeat it, let's try Officer")
            nextRank?.shouldDefeatWithStrength(amount: amount)
        }
    }
}

class Officer: MilitaryChain {
    var strength = 500
    
    var nextRank: MilitaryChain?
    
    func shouldDefeatWithStrength(amount: Int) {
        if amount < strength {
            print("Officer got it")
        } else {
            print("Officer couldn't defeat it, let's try general")
            nextRank?.shouldDefeatWithStrength(amount: amount)
        }
    }
}

class General: MilitaryChain {
    var strength = 1000
    
    var nextRank: MilitaryChain?
    
    func shouldDefeatWithStrength(amount: Int) {
        if amount < strength {
            print("General got it")
        } else {
            print("Even General couldn't defeat this enemy")
        }
    }
}

let enemy = Enemy()
let soldier = Soldier()
let officer = Officer()
let general = General()

soldier.nextRank = officer
officer.nextRank = general


soldier.shouldDefeatWithStrength(amount: enemy.strength)
