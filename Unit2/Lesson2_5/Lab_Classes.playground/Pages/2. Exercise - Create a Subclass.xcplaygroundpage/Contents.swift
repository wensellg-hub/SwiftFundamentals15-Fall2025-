// Base class provided
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

// Step 1: Define Fighter subclass
class Fighter: Spaceship {
    var weapon: String = ""
    var remainingFirePower: Int = 5
    
    func fire() {
        if remainingFirePower > 0 {
            remainingFirePower -= 1
            print("Fired \(weapon)! Remaining fire power: \(remainingFirePower)")
        } else {
            print("You have no more fire power.")
        }
    }
}

// Step 2: Create instance of Fighter
let destroyer = Fighter()
destroyer.weapon = "Laser"
destroyer.remainingFirePower = 10
destroyer.name = "Destroyer"

// Demonstrate inherited properties and methods
print("Initial position: \(destroyer.position)")
destroyer.moveRight()
print("Position after moving right: \(destroyer.position)")

// Step 3: Why can't we print weapon on falcon?
let falcon = Spaceship()
// print(falcon.weapon) ❌ This doesn't compile because `Spaceship` has no `weapon` property.
print("Falcon is a Spaceship, not a Fighter, so it has no weapon property.")

// Step 4: Call fire() on destroyer a few times
destroyer.fire()  // Remaining fire power: 9
destroyer.fire()  // Remaining fire power: 8
destroyer.fire()  // Remaining fire power: 7
