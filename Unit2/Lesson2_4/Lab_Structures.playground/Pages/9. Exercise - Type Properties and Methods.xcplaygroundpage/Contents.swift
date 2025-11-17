
// User struct with type property and type method
struct User {
    var userName: String
    var email: String
    var age: Int
    
    // Type property to track the current logged-in user
    static var currentUser: User = User(userName: "GrantWensell",
                                        email: "grant@example.com",
                                        age: 34)
    
    // Type method to log in a new user
    static func logIn(user: User) {
        currentUser = user
        print("\(user.userName) has logged in.")
    }
}

// Access and print the properties of currentUser
print("Current user: \(User.currentUser.userName), Email: \(User.currentUser.email), Age: \(User.currentUser.age)")

// Create a different user and log them in
let newUser = User(userName: "SwiftLearner", email: "swift@example.com", age: 25)
User.logIn(user: newUser)

// Print updated currentUser properties
print("Current user: \(User.currentUser.userName), Email: \(User.currentUser.email), Age: \(User.currentUser.age)")
