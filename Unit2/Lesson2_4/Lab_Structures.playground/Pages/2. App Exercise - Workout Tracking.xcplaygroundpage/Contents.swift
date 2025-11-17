// Define the RunningWorkout struct
struct RunningWorkout {
    var distance: Double = 0.0
    var time: Double = 0.0
    var elevation: Double = 0.0
}

// Create a variable instance of RunningWorkout
var firstRun = RunningWorkout()

// Print default values
print("Distance: \(firstRun.distance) meters, Time: \(firstRun.time) minutes, Elevation: \(firstRun.elevation) meters")

// Update values to reflect the run
firstRun.distance = 2396
firstRun.time = 15.3
firstRun.elevation = 94

// Print a statement about the run
print("I ran \(firstRun.distance) meters in \(firstRun.time) minutes and gained \(firstRun.elevation) meters of elevation.")
