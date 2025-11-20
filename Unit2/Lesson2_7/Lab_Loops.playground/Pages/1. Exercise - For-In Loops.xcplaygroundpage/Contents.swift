// Part 1: Loop through values 1 to 100
for number in 1...100 {
    print(number)
}

// Part 2: Loop through each character in the alphabet string with index
let alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
for (index, character) in alphabet.enumerated() {
    print("Index \(index): \(character)")
}

// Part 3: Dictionary of states and capitals
let stateCapitals: [String: String] = [
    "North Carolina": "Raleigh",
    "California": "Sacramento",
    "Texas": "Austin"
]

for (state, capital) in stateCapitals {
    print("The capital of \(state) is \(capital).")
}
