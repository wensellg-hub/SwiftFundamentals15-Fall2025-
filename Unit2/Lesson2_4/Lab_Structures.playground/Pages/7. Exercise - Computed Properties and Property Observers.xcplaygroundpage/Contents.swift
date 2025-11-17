// Rectangle struct with computed property
struct Rectangle {
    var width: Int
    var height: Int
    
    // Computed property for area
    var area: Int {
        return width * height
    }
}

// Create an instance and print area
let rect = Rectangle(width: 10, height: 5)
print("The area of the rectangle is \(rect.area).")


// Height struct with property observers
struct Height {
    var heightInInches: Double {
        didSet {
            // Update centimeters only if needed
            let converted = heightInInches * 2.54
            if abs(heightInCentimeters - converted) > 0.0001 {
                heightInCentimeters = converted
            }
        }
    }
    
    var heightInCentimeters: Double {
        didSet {
            // Update inches only if needed
            let converted = heightInCentimeters / 2.54
            if abs(heightInInches - converted) > 0.0001 {
                heightInInches = converted
            }
        }
    }
    
    init(heightInInches: Double) {
        self.heightInInches = heightInInches
        self.heightInCentimeters = heightInInches * 2.54
    }
    
    init(heightInCentimeters: Double) {
        self.heightInCentimeters = heightInCentimeters
        self.heightInInches = heightInCentimeters / 2.54
    }
}

// Test Height struct
var personHeight = Height(heightInInches: 65)
print("Initial height: \(personHeight.heightInInches) inches, \(personHeight.heightInCentimeters) cm")

// Change inches and see centimeters update
personHeight.heightInInches = 70
print("Updated height: \(personHeight.heightInInches) inches, \(personHeight.heightInCentimeters) cm")

// Change centimeters and see inches update
personHeight.heightInCentimeters = 180
print("Updated height: \(personHeight.heightInInches) inches, \(personHeight.heightInCentimeters) cm")
