var steps = 0

// Function to increment steps by 1 and print the new value
func incrementSteps() {
    steps += 1
    print("Steps: \(steps)")
}

// Call the function multiple times
incrementSteps()
incrementSteps()
incrementSteps()


let goal = 10000

// Function to provide progress updates based on steps vs. goal
func progressUpdate() {
    if steps < goal / 10 {
        print("You're off to a good start.")
    } else if steps < goal / 2 {
        print("You're almost halfway there!")
    } else if steps < (goal * 9) / 10 {
        print("You're over halfway there!")
    } else if steps < goal {
        print("You're almost there!")
    } else {
        print("You beat your goal!")
    }
}

// Call the function to see the progress update
progressUpdate()
