protocol State {
    func on(printer: Printer)
    func off(printer: Printer)
    func printDocument(printer: Printer)
}

class On: State {
    func on(printer: Printer) {
        print("It is already ON")
    }
    func off(printer: Printer) {
        printer.set(state: Off())
        print("Printer has been turned OFF")
    }
    func printDocument(printer: Printer) {
        printer.set(state: Print())
        print("Printing...")
    }
}
class Off: State {
    func on(printer: Printer) {
        printer.set(state: On())
        print("Turning ON...")
    }
    func off(printer: Printer) {
        print("Printer is already OFF")
    }
    func printDocument(printer: Printer) {
        print("Error: Printer is OFF")
        
    }
}
class Print: State {
    func on(printer: Printer) {
        print("It is already ON")
    }
    func off(printer: Printer) {
        printer.set(state: Off())
        print("Turning the printer OFF...")
    }
    func printDocument(printer: Printer) {
        print("Error: It is already printing")
    }
}

class Printer {
      var state: State
    
    init() {
        self.state = On()
    }
    
     func set(state: State) {
        self.state = state
    }
        
    func turnOn() {
        state.on(printer: self)
    }
    func turnOff() {
        state.off(printer: self)
    }
    func print() {
        state.printDocument(printer: self)
    }
}


let printer = Printer()
printer.turnOn()
printer.print()
printer.turnOff()
printer.print()

