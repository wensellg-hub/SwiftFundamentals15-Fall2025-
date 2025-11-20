// Step 1: Create the dictionary with initial values
var paces: [String: Double] = [
    "Easy": 10.0,
    "Medium": 8.0,
    "Fast": 6.0
]
print(paces)

// Step 2: Add a new key/value pair for Sprint
paces["Sprint"] = 4.0
print(paces)

// Step 3: Update Medium and Fast values
paces["Medium"] = 7.5
paces["Fast"] = 5.8
print(paces)

// Step 4: Remove Sprint from the dictionary
paces.removeValue(forKey: "Sprint")
print(paces)

// Step 5: Access Medium pace and print statement
if let mediumPace = paces["Medium"] {
    print("Okay! I'll keep you at a \(mediumPace) minute mile pace.")
}
