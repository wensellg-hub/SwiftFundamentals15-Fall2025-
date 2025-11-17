// Greeting function
func greeting(name: String) -> String {
    return "Hi, \(name)! How are you?"
}

// Use the function and print the result
let message = greeting(name: "Sophie")
print(message)


// Function that multiplies two Ints, adds 2, and returns the result
func multiplyAndAdd(_ first: Int, _ second: Int) -> Int {
    return (first * second) + 2
}

// Use the function and print the result
let result = multiplyAndAdd(3, 4)
print(result)
