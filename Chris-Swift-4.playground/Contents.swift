import UIKit

// Assignment 4: Swift Protocols and Classes (Monster Edition)

//=== Base Protocol ===>>
protocol Monster {
    var name: String { get }
    func roar() -> String
}

//=== Child Protocol ===>>
protocol FlyingMonster: Monster {
    var wingSpan: Double { get }
    func fly() -> String
}

//=== Child Protocol ===>>
protocol WaterMonster: Monster {
    var swimSpeed: Int { get }
    func swim() -> String
}

//=== Dragon Class ===>
class Dragon: FlyingMonster {
    var name: String
    var wingSpan: Double
    
    init(name: String, wingSpan: Double) {
        self.name = name
        self.wingSpan = wingSpan
    }
    
    // Methods
    func roar() -> String {
        return "\(self.name) roars fiercely, shaking the ground!"
    }
    
    func fly() -> String {
        return "\(self.name) spreads its \(self.wingSpan)-meter wings and takes to the sky!"
    }
} // Dragon

//=== Gryphon Class ===>
class Gryphon: FlyingMonster {
    var name: String
    var wingSpan: Double
    
    init(name: String, wingSpan: Double) {
        self.name = name
        self.wingSpan = wingSpan
    }
    
    // Methods
    func roar() -> String {
        return "\(self.name) screeches with a piercing cry!"
    }
    
    func fly() -> String {
        return "\(self.name) soars high with its majestic \(self.wingSpan)-meter wings!"
    }
} // Gryphon

//=== Kraken Class ===>
class Kraken: WaterMonster {
    var name: String
    var swimSpeed: Int
    
    init(name: String, swimSpeed: Int) {
        self.name = name
        self.swimSpeed = swimSpeed
    }
    
    // Methods
    func roar() -> String {
        return "\(self.name) bellows from the deep, causing waves to crash!"
    }
    
    func swim() -> String {
        return "\(self.name) glides through the water at \(self.swimSpeed) knots!"
    }
} // Kraken

//=== Merfolk Class ===>
class Merfolk: WaterMonster {
    var name: String
    var swimSpeed: Int
    
    init(name: String, swimSpeed: Int) {
        self.name = name
        self.swimSpeed = swimSpeed
    }
    
    // Methods
    func roar() -> String {
        return "\(self.name) sings an enchanting melody that stirs the seas!"
    }
    
    func swim() -> String {
        return "\(self.name) swims gracefully at \(self.swimSpeed) knots!"
    }
} // Merfolk

//=== Method to print Monsters details ===>
func printMonsterDetails(monsters: [Monster]) {
    for monster in monsters {
        if let flying = monster as? FlyingMonster {
            print("\(flying.roar())")
            print("\(flying.fly())")
        } else if let water = monster as? WaterMonster {
            print("\(water.roar())")
            print("\(water.swim())")
        }
        print("-----------------------")
    } // for
} // printMonsterDetails()

//=== Testing Instances ===>
let dragon: Dragon = Dragon(name: "Fire Drake", wingSpan: 15.0)
let gryphon: Gryphon = Gryphon(name: "Sky Hunter", wingSpan: 12.0)
let kraken: Kraken = Kraken(name: "Sea Terror", swimSpeed: 20)
let merfolk: Merfolk = Merfolk(name: "Coral Queen", swimSpeed: 10)

let monsters: [Monster] = [dragon, gryphon, kraken, merfolk]
printMonsterDetails(monsters: monsters)






