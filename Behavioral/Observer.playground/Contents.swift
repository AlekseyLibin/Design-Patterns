import Foundation


protocol Subject {
    func add(newObserver observer: SubjectObserver)
    func remove(existingObserver observer: SubjectObserver)
    func notify(task: String)
}


protocol SubjectObserver {
    func notify(task: String)
}


class Teacher: Subject {
    
    var observersList = NSMutableSet()
    var homeTask = ""  {
        didSet {
            notify(task: homeTask)
        }
    }
    
    func add(newObserver observer: SubjectObserver) {
        observersList.add(observer)
    }
    
    func remove(existingObserver observer: SubjectObserver) {
        observersList.remove(observer)
    }
    
    func notify(task: String) {
        for observer in observersList {
            (observer as! SubjectObserver).notify(task: homeTask)
        }
    }
}

class Child: NSObject, SubjectObserver {
    func notify(task: String) {
        print ("You have received a new home task: \(task)")
    }
}

var teacher = Teacher()
var child = Child()

teacher.add(newObserver: child)
teacher.homeTask = "p.48 ex. 10"

