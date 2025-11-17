
// Function that calculates projected finish time based on current pace
func calculatePace(currentDistance: Double, totalDistance: Double, currentTime: Double) -> Double {
    let currentPace = currentTime / currentDistance
    let projectedFinishTime = currentPace * totalDistance
    return projectedFinishTime
}

// Call the function and print the return value
let projectedTime = calculatePace(currentDistance: 3.0, totalDistance: 5.0, currentTime: 15.0)
print("Projected finish time: \(projectedTime) minutes")


// Function that uses calculatePace and returns a motivational message
func pacing(currentDistance: Double, totalDistance: Double, currentTime: Double, goalTime: Double) -> String {
    let projectedTime = calculatePace(currentDistance: currentDistance, totalDistance: totalDistance, currentTime: currentTime)
    
    if projectedTime <= goalTime {
        return "Keep it up!"
    } else {
        return "You've got to push it just a bit harder!"
    }
}

// Call the function and print the return value
let message1 = pacing(currentDistance: 3.0, totalDistance: 5.0, currentTime: 15.0, goalTime: 30.0)
print(message1)

let message2 = pacing(currentDistance: 3.0, totalDistance: 5.0, currentTime: 20.0, goalTime: 30.0)
print(message2)
