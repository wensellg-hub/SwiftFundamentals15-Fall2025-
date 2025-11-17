// Introduction function
func introduction(name: String, home: String, age: Int) {
    print("\(name), \(age), is from \(home).")
}

// Call the function
introduction(name: "Jenny", home: "California", age: 32)


// almostAddition function
func almostAddition(_ first: Int, second: Int) {
    let result = first + second - 2
    print("Result: \(result)")
}

// Call the function
almostAddition(10, second: 5)


// multiply function
func multiply(_ first: Double, by second: Double) {
    let result = first * second
    print("Result: \(result)")
}

// Call the function
multiply(3.0, by: 4.5)
