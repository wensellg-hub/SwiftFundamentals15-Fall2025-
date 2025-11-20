// Step 1: Create a dictionary with January, February, and March
var daysInMonth: [String: Int] = [
    "January": 31,
    "February": 28,
    "March": 31
]
print(daysInMonth)

// Step 2: Add April using subscripting syntax
daysInMonth["April"] = 30
print(daysInMonth)

// Step 3: Update February to 29 (leap year) using updateValue
daysInMonth.updateValue(29, forKey: "February")
print(daysInMonth)

// Step 4: Use if-let to retrieve January’s days
if let januaryDays = daysInMonth["January"] {
    print("January has \(januaryDays) days")
}

// Step 5: Create arrays
let shapesArray = ["Circle", "Square", "Triangle"]
let colorsArray = ["Red", "Green", "Blue"]

// Step 6: Create dictionary with arrays
let categorizedArrays: [String: [String]] = [
    "Shapes": shapesArray,
    "Colors": colorsArray
]
print(categorizedArrays)

// Step 7: Print the last element of colorsArray via dictionary
if let colors = categorizedArrays["Colors"] {
    print(colors.last!)   // force unwrap since we know it's not empty
}
