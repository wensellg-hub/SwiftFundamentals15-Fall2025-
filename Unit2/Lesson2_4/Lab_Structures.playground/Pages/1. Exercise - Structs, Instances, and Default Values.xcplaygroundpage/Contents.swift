// GPS struct with default values
struct GPS {
    var latitude: Double = 0.0
    var longitude: Double = 0.0
}

// Create an instance of GPS
var somePlace = GPS()

// Print default values
print("Latitude: \(somePlace.latitude), Longitude: \(somePlace.longitude)")

// Update values
somePlace.latitude = 51.514004
somePlace.longitude = 0.125226

// Print updated values
print("Latitude: \(somePlace.latitude), Longitude: \(somePlace.longitude)")


// Book struct with default values
struct Book {
    var title: String = ""
    var author: String = ""
    var pages: Int = 0
    var price: Double = 0.0
}

// Create an instance of Book
var favoriteBook = Book()

// Print default title
print("Favorite book title (default): \(favoriteBook.title)")

// Update properties to reflect your favorite book
favoriteBook.title = "The Pragmatic Programmer"
favoriteBook.author = "Andrew Hunt and David Thomas"
favoriteBook.pages = 352
favoriteBook.price = 42.99

// Print facts about the book
print("My favorite book is \"\(favoriteBook.title)\" by \(favoriteBook.author).")
print("It has \(favoriteBook.pages) pages and costs $\(favoriteBook.price).")
