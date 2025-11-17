// Password Entry
if storedUserName.lowercased() == enteredUserName.lowercased() && storedPassword == enteredPassword {
    print("You are now logged in!")
} else {
    print("Please check your user name and password and try again.")
}


// User Search (case-insensitive)
if userName.lowercased().contains(searchName.lowercased()) {
    print("User found!")
} else {
    print("User not found.")
}
