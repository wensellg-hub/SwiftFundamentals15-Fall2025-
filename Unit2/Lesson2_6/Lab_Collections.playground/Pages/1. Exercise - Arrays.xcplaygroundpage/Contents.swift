// Step 1: Create an empty array of Strings
var registrationList: [String] = []

// Step 2: Jasmine registers
registrationList.append("Jasmine")
print(registrationList)

// Step 3: Add four more names in one step
registrationList += ["Michael", "Sofia", "Daniel", "Ava"]
print(registrationList)

// Step 4: Insert Trey as the second element
registrationList.insert("Trey", at: 1)
print(registrationList)

// Step 5: Change the sixth element to Elton
registrationList[5] = "Elton"
print(registrationList)

// Step 6: Remove the last element (Elton) and store it
let deletedItem = registrationList.removeLast()
print(deletedItem)
