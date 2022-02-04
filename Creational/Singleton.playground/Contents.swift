class Safe {
    var money = 0
    static let shared = Safe()
}


let safe1 = Safe.shared
safe1.money += 10_000


let safe2 = Safe.shared
print(safe2.money)

