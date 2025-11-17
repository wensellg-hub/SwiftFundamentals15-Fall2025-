// GPS struct without default values
struct GPS {
    var latitude: Double
    var longitude: Double
}

// Create a constant instance using memberwise initializer
let somePlace = GPS(latitude: 51.514004, longitude: 0.125226)
print("Latitude: \(somePlace.latitude), Longitude: \(somePlace.longitude)")


// Book struct without default values
struct Book {
    var title: String
    var author: String
    var pages: Int
    var price: Double
}

// Create an instance of Book using memberwise initializer
let favoriteBook = Book(title: "The Pragmatic Programmer",
                        author: "Andrew Hunt and David Thomas",
                        pages: 352,
                        price: 42.99)

print("My favorite book is \"\(favoriteBook.title)\" by \(favoriteBook.author). It has \(favoriteBook.pages) pages and costs $\(favoriteBook.price).")


// Laptop struct with some default values
struct Laptop {
    var screenSize: Int = 13
    var repairCount: Int = 0
    var yearPurchased: Int
}

// Two instances using memberwise initializers
let laptop1 = Laptop(yearPurchased: 2021) // uses defaults for screenSize and repairCount
let laptop2 = Laptop(screenSize: 15, repairCount: 2, yearPurchased: 2019)

print("Laptop1: Screen size \(laptop1.screenSize) inches, Repairs \(laptop1.repairCount), Year purchased \(laptop1.yearPurchased)")
print("Laptop2: Screen size \(laptop2.screenSize) inches, Repairs \(laptop2.repairCount), Year purchased \(laptop2.yearPurchased)")


// Height struct with custom initializers
struct Height {
    var heightInInches: Double
    var heightInCentimeters: Double
    
    // Initializer for inches
    init(inches: Double) {
        self.heightInInches = inches
        self.heightInCentimeters = inches * 2.54
    }
    
    // Initializer for centimeters
    init(centimeters: Double) {
        self.heightInCentimeters = centimeters
        self.heightInInches = centimeters / 2.54
    }
}

// Create instance using inches
var someonesHeight = Height(inches: 65)
print("Height in centimeters: \(someonesHeight.heightInCentimeters)") // should be 165.1

// Create instance using your own height (example: 70 inches)
var myHeight = Height(inches: 70)
print("My height: \(myHeight.heightInInches) inches, \(myHeight.heightInCentimeters) centimeters")
