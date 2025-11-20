// Part 1: Loop through alphabet and print every other letter
let alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"

for (index, letter) in alphabet.enumerated() {
    // Skip odd indices, only print even ones
    if !index.isMultiple(of: 2) {
        continue
    }
    print(letter)
}

// Part 2: Dictionary of states and capitals
let stateCapitals: [String: String] = [
    "North Carolina": "Raleigh",
    "California": "Sacramento",
    "Texas": "Austin"
]

for (state, capital) in stateCapitals {
    print("The capital of \(state) is \(capital).")
    if state == "North Carolina" {
        print("I found my home!")
        break
    }
}
