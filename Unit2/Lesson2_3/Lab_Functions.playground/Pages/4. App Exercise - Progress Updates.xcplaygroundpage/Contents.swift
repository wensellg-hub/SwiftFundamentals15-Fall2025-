// Progress update function with parameters
func progressUpdate(steps: Int, goal: Int) {
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

// Test calls with different values
progressUpdate(steps: 500, goal: 10000)     // Off to a good start
progressUpdate(steps: 4000, goal: 10000)    // Almost halfway
progressUpdate(steps: 7000, goal: 10000)    // Over halfway
progressUpdate(steps: 9500, goal: 10000)    // Almost there
progressUpdate(steps: 12000, goal: 10000)   // Beat your goal


// Pacing function
func pacing(currentDistance: Double, totalDistance: Double, currentTime: Double, goalTime: Double) {
    // Calculate pace: time per unit distance so far
    let currentPace = currentTime / currentDistance
    // Projected total time if pace continues
    let projectedTime = currentPace * totalDistance
    
    if projectedTime <= goalTime {
        print("Keep it up!")
    } else {
        print("You've got to push it just a bit harder!")
    }
}

// Test calls
pacing(currentDistance: 3.0, totalDistance: 5.0, currentTime: 15.0, goalTime: 30.0) // On pace
pacing(currentDistance: 3.0, totalDistance: 5.0, currentTime: 20.0, goalTime: 30.0) // Needs push
