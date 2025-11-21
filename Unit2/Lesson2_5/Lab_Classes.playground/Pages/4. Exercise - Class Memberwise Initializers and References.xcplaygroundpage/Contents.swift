// Step 1: Add initializer to Spaceship
class Spaceship {
    let name: String
    var health: Int
    var position: Int
    
    init(name: String, health: Int, position: Int) {
        self.name = name
        self.health = health
        self.position = position
    }
    
    func moveLeft() {
        position -= 1
    }
    
    func moveRight() {
        position += 1
    }
    
    func wasHit() {
        health -= 5
        if health <= 0 {
            print("Sorry, your ship was hit one too many times. Do you want to play again?")
        }
    }
}

// Step 2: Add initializer to Fighter
class Fighter: Spaceship {
    let weapon: String
    var remainingFirePower: Int
    
    init(name: String, health: Int, position: Int, weapon: String, remainingFirePower: Int) {
        self.weapon = weapon
        self.remainingFirePower = remainingFirePower
        super.init(name: name, health: health, position: position)
    }
    
    func fire() {
        if remainingFirePower > 0 {
            remainingFirePower -= 1
        } else {
            print("You have no more fire power.")
        }
    }
}

// Step 3: Add initializer to ShieldedShip
class ShieldedShip: Fighter {
    var shieldStrength: Int
    
    init(name: String, health: Int, position: Int, weapon: String, remainingFirePower: Int, shieldStrength: Int) {
        self.shieldStrength = shieldStrength
        super.init(name: name, health: health, position: position, weapon: weapon, remainingFirePower: remainingFirePower)
    }
    
    override func wasHit() {
        if shieldStrength > 0 {
            shieldStrength -= 5
        } else {
            super.wasHit()
        }
    }
}

// Step 4: Create instances
let falcon = Spaceship(name: "Falcon", health: 100, position: 0)
let destroyer = Fighter(name: "Destroyer", health: 100, position: 0, weapon: "Laser", remainingFirePower: 10)
let defender = ShieldedShip(name: "Defender", health: 100, position: 0, weapon: "Cannon", remainingFirePower: 8, shieldStrength: 25)

// Step 5: Demonstrate reference semantics
let sameShip = falcon
print("Falcon position: \(falcon.position), SameShip position: \(sameShip.position)")

sameShip.moveLeft()
print("After moving left:")
print("Falcon position: \(falcon.position), SameShip position: \(sameShip.position)")

// Explanation
print("Both positions changed because classes are reference types. 'sameShip' and 'falcon' point to the same object in memory.")
print("If they were structs, each would be a separate copy, so changing one would not affect the other.")
