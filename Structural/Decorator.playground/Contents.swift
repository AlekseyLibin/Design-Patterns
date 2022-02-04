protocol Porsche {
    func getPrice() -> Double
    func getDescription() -> String
}

class Boxster: Porsche {
    
    func getPrice() -> Double{
        return 120_000
    }
    func getDescription() -> String {
        return "Porsche Boxster"
    }
    
}

class Decorator: Porsche {
    
    private let decoratedPorsche: Porsche
    
    required init (dp: Porsche) {
        self.decoratedPorsche = dp
    }
    
    func getPrice() -> Double {
        return decoratedPorsche.getPrice()
    }
    func getDescription() -> String {
        return decoratedPorsche.getDescription()
    }

}

class PremiumAudioSystem: Decorator {
    
    required init(dp: Porsche) {
        super.init(dp: dp)
    }
    
    override func getPrice() -> Double {
        return super.getPrice() + 30_000
    }
    
    override func getDescription() -> String {
        return super.getDescription() + " with Premium Audio System"
    }
}

class PanoramicSunroof: Decorator {
    
    required init(dp: Porsche) {
        super.init(dp: dp)
    }
    
    override func getPrice() -> Double {
        return super.getPrice() + 20_000
    }
    
    override func getDescription() -> String {
        return super.getDescription() + " with Panoramic Sunroof"
    }
}



var porscheBoxster: Porsche = Boxster()
porscheBoxster.getPrice()
porscheBoxster.getDescription()


porscheBoxster = PanoramicSunroof(dp: porscheBoxster)
porscheBoxster.getPrice()
porscheBoxster.getDescription()

porscheBoxster = PremiumAudioSystem(dp: porscheBoxster)
porscheBoxster.getPrice()
porscheBoxster.getDescription()
