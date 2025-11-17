// Book struct with an instance method
struct Book {
    var title: String
    var author: String
    var pages: Int
    var price: Double
    
    // Instance method to print facts about the book
    func description() {
        print("\"\(title)\" by \(author) has \(pages) pages and costs $\(price).")
    }
}

// Create an instance of Book and call description()
let myBook = Book(title: "The Pragmatic Programmer", author: "Andrew Hunt and David Thomas", pages: 352, price: 42.99)
myBook.description()


// Post struct with a mutating method
struct Post {
    var message: String
    var likes: Int
    var numberOfComments: Int
    
    // Mutating method to increment likes
    mutating func like() {
        likes += 1
    }
}

// Create an instance of Post and test the like() method
var post = Post(message: "Hello, Swift world!", likes: 0, numberOfComments: 2)

print("Likes before: \(post.likes)")
post.like()
print("Likes after: \(post.likes)")
