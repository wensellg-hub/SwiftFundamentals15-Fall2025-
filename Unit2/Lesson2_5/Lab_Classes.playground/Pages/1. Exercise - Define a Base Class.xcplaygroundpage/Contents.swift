// Step 1: Define the Spaceship class
class Spaceship {
    var name: String = ""
    var health: Int = 0
    var position: Int = 0
    
    // Method to move left
    func moveLeft() {
        position -= 1
        print("Moved left. Current position: \(position)")
    }
    
    // Method to move right
    func moveRight() {
        position += 1
        print("Moved right. Current position: \(position)")
    }
    
    // Method to handle being hit
    func wasHit() {
        health -= 5
        if health <= 0 {
            print("Sorry, your ship was hit one too many times. Do you want to play again?")
        }
    }
}

// Step 2: Create an instance of Spaceship
let falcon = Spaceship()
falcon.name = "Falcon"

// Step 3: Move falcon left twice and right once
falcon.moveLeft()   // position = -1
falcon.moveLeft()   // position = -2
falcon.moveRight()  // position = -1

// Step 4: Set health and call wasHit
falcon.health = 10
falcon.wasHit()     // health = 5
print("Falcon's health: \(falcon.health)")
falcon.wasHit()     // health = 0, triggers message
print("Falcon's health: \(falcon.health)")
