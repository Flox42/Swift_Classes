//: Playground - noun: a place where people can play

import UIKit

class Vehicle {
    private var engine = "4 cylinder"
    private var color = "Silver"
    private var _odometer = 500
    
    //GETTER / SETTER (Accessors & Mutators) or COMPUTED PROPERTY
    var odometer: Int {
        get {
            return _odometer
        }
        set {
            if newValue > _odometer {
                _odometer = newValue //This prevents the user from changing the property in an illegal manner
            }
        }
    }
    
    init(engine: String, color: String) {
        self.engine = engine
        self.color = color
    }
    
    init(){
        
    }
    
    func enterMiles(miles: Int) {
        odometer += miles
    }
}

var srx = Vehicle(engine: "6 cylinder", color: "Red")

var volvo = Vehicle()

var silverado = Vehicle()

print(srx.color)
print(volvo.color)

var vehicles = [Vehicle]()
vehicles.append(srx)
vehicles.append(volvo)
vehicles.append(silverado)

print(srx.odometer)
srx.enterMiles(4500)
print(srx.odometer)

srx.odometer = 400
print(srx.odometer)

srx.odometer = 6000
print(srx.odometer)



//********************** INHERITANCE **************************

class Person {
    var eyecolor = "Blue"
    var name: String
    var speed = "10 mph"
    var benchPress = "200 LBS"
    
    init(name: String) {
        self.name = name
    }
    
    func catchPhrase() -> String {
        return "Hi, I'm an average person"
    }
}

var jon = Person(name: "Jon")

class Animorph: Person {
    var animalType = "Dog"
    
    convenience init(type: String, name: String) {
        self.init(name: name)
        self.animalType = type
        self.speed = "25 mph"
    }
    
    override func catchPhrase() -> String {
        return "I can turn into an animal!"
    }
}

print(jon.eyecolor)
print(jon.catchPhrase())

var dolphin = Animorph(type: "Dolphin", name: "Flipper")
print(dolphin.eyecolor)
print(dolphin.catchPhrase())



class SuperHero: Person {
    var specialPower = "X-Ray Vision"
    var backStory = "Got irradiated"
    
    convenience init(name: String, press: String) {
        self.init(name: name)
        benchPress = press
    }
    
    override func catchPhrase() -> String {
        return "With great power go to infinity and beyond"
    }
}

var pukeMan = SuperHero(name: "Puke Man", press: "5000 LBS")

print(pukeMan.benchPress)
print(pukeMan.catchPhrase())
