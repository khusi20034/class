//adding functionality to a class by adding function to the class definition
class Person {
    let name: String
    init(name: String){
        self.name = name
    }
    func sayHello() {
        print("Hello,there!")
    }
}
let person = Person(name: "Jasmine")
print(person.name)
person.sayHello()

    //defining a base class
class Vehicle {
    var currentSpeed = 0.0
    var description: String {
        "travelling at \(currentSpeed) miles per hour"
    }
    func makeNoise(){
        
    }
}
let someVehicle = Vehicle()
print("Vehicle: \(someVehicle.description)")

    //Tandem
class Bicycle: Vehicle {
    var hasBasket = false
}
let bicycle = Bicycle()
bicycle.hasBasket = true
bicycle.currentSpeed = 15.0
print("Bicycle: \(bicycle.description)")
class Tandem: Bicycle {
    var currentNumberOfPassengers = 0
}
let tandem = Tandem()
tandem.hasBasket = true
tandem.currentNumberOfPassengers = 2
tandem.currentSpeed = 22.0
print("Tandem: \(tandem.description)")

    //override
class Car: Vehicle {
    var gear = 1
    override var description: String {
        super.description + " in gear \(gear)"
    }
}
let car = Car()
car.currentSpeed = 25.0
car.gear = 3
print("Car: \(car.description)")

    

//reference
class _Person {
    let name: String
    var age: Int
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}
var jack = _Person(name: "Jack", age: 24)
var myFriend = jack
jack.age += 1
print(jack.age)
print(myFriend.age)
