class FruitShop {
    func buyFruits() -> String {
        return "Fruits"
    }
}

class MeatShop {
    func buyMeat() -> String {
        return "Meat"
    }
}

class MilkShop {
    func buyMilk() -> String {
        return "Milk"
    }
}

class SweetShop {
    func buySweets() -> String {
        return "Sweets"
    }
}

class BreadShop {
    func buyBread() -> String {
        return "Bread"
    }
}

//Facade
class SuperMarket {
    private let fruitShop = FruitShop()
    private let meatShop = MeatShop()
    private let milkShop = MilkShop()
    private let sweetsShop = SweetShop()
    private let breadShop = BreadShop()
    //private использовалось для того, чтобы при вызове метода buyProducts() на 58 строке не показывался лист из свойств fruitShop, meatShop, ...
    
    
    func buyProducts() -> String {
        var products = ""
        products += fruitShop.buyFruits() + ", "
        products += meatShop.buyMeat() + ", "
        products += milkShop.buyMilk() + ", "
        products += sweetsShop.buySweets() + ", "
        products += breadShop.buyBread()
        
        return "I've bought \(products)"
    }
}

let sm = SuperMarket()
sm.buyProducts()
