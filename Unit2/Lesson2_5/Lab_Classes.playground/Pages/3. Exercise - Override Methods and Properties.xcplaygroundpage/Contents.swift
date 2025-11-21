// Base classes provided
class Spaceship {
    var name: String = ""
    var health = 100
    var position = 0
    
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

class Fighter: Spaceship {
    var weapon = ""
    var remainingFirePower = 5
    
    func fire() {
        if remainingFirePower > 0 {
            remainingFirePower -= 1
        } else {
            print("You have no more fire power.")
        }
    }
}

// Step 1: Define ShieldedShip subclass
class ShieldedShip: Fighter {
    var shieldStrength = 25
    
    // Step 2: Override wasHit
    override func wasHit() {
        if shieldStrength > 0 {
            shieldStrength -= 5
        } else {
            // Step 3: Call superclass implementation instead of rewriting health decrement
            super.wasHit()
        }
    }
}

// Step 4: Create instance and test
let defender = ShieldedShip()
defender.name = "Defender"
defender.weapon = "Cannon"

// Demonstrate inherited methods
defender.moveRight()
print("Position after moving right: \(defender.position)")

defender.fire()
print("Remaining fire power: \(defender.remainingFirePower)")

// Test shield and health behavior
defender.wasHit()
print("Shield strength: \(defender.shieldStrength), Health: \(defender.health)")

// Keep hitting until shield is gone
defender.wasHit()
defender.wasHit()
defender.wasHit()
defender.wasHit()
defender.wasHit() // shield now 0
print("Shield strength: \(defender.shieldStrength), Health: \(defender.health)")

// Now health will decrement
defender.wasHit()
print("Shield strength: \(defender.shieldStrength), Health: \(defender.health)")
