// Create two constants
let nameInCaps = "Grant"
let name = "grant"

// First if-else: direct comparison
if nameInCaps == name {
    print("The two strings are equal")
} else {
    print("The two strings are not equal")
}


// Second if-else: compare lowercase versions
if nameInCaps.lowercased() == name.lowercased() {
    print("\(nameInCaps.lowercased()) and \(name.lowercased()) are the same.")
} else {
    print("\(nameInCaps.lowercased()) and \(name.lowercased()) are not the same.")
}


// Check if junior ends with "Jr."
if junior.hasSuffix("Jr.") {
    print("We found a second generation name!")
}


// Case-insensitive search for Hamlet’s soliloquy
if textToSearchThrough.lowercased().contains(textToSearchFor.lowercased()) {
    print("I found it!")
}


// Print the number of characters in `name`
print("The number of characters in '\(name)' is \(name.count).")
