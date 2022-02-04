class DriveVehicle {
    final func startVehicle() {
        haveASeat()
        useProtection()
        lookAtTheMirror()
        turnSignal()
        driveForward()
    }
    //В данном случае все методы ниже будут переопределены(override) дочерними классами, но метод startVehicle() переопределять нельзя, иначе собъется логика приложения. Ключевое слово final как раз запрещает переопределять метод startVehicle()
    
    func haveASeat() {
        preconditionFailure("This method should be overriden")
    }
    func useProtection() {
        preconditionFailure("This method should be overriden")
    }
    func lookAtTheMirror() {
        preconditionFailure("This method should be overriden")
    }
    func turnSignal() {
        preconditionFailure("This method should be overriden")
    }
    func driveForward() {
        preconditionFailure("This method should be overriden")
    }
}
//Как я уже написал, методы вышк будут переопределены для корректной работы. Я знаю что они будут точно переопределены, а значит могу воспользоваться  функцией preconditionFailure(). Суть в том, что эти метод НЕ должны быть использованы (будут использованы их переопределенные экземпляры), а значит я могу прописать такую логику, что если вдруг вызовется этот метод, то приложение упадет и выдаст ошибку. Принцип работы preconditionFailure() в том, чтобы остановить проект с ошикой fatal error


class Bicycle: DriveVehicle {
    
     override func haveASeat() {
        print("Sit down on a bicycle seat")
    }
     override func useProtection() {
        print("Use a bucycle protection")
        
    }
     override func lookAtTheMirror() {
        print("Look at the bicycle mirror")
        
    }
     override func turnSignal() {
        print("Show your hand")
        
    }
     override func driveForward() {
        print("Drive forward")
        
    }
    
}

class Car: DriveVehicle {
    
     override func haveASeat() {
        print("Sit into the car")
    }
     override func useProtection() {
        print("Use a protection belt")
        
    }
     override func lookAtTheMirror() {
        print("Look at the rearview mirror")
        
    }
     override func turnSignal() {
        print("Turn on the turning light")
        
    }
     override func driveForward() {
        print("Push pedal")
        
    }
    
}

let car = Car()
let bicycle = Bicycle()
car.startVehicle()
