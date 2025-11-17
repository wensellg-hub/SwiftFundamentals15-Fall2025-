// Extend RunningWorkout with a method
struct RunningWorkout {
    var distance: Double
    var time: Double
    var elevation: Double
    
    // Method to print workout stats
    func postWorkoutStats() {
        print("You ran \(distance) meters in \(time) minutes with an elevation gain of \(elevation) meters.")
    }
}

// Create an instance and call the method
let firstRun = RunningWorkout(distance: 2396, time: 15.3, elevation: 94)
firstRun.postWorkoutStats()


// Extend Steps with a mutating method
struct Steps {
    var steps: Int
    var goal: Int
    
    // Method to increment steps
    mutating func takeStep() {
        steps += 1
    }
}

// Create an instance and test the method
var todaySteps = Steps(steps: 9999, goal: 10000)

print("Steps before: \(todaySteps.steps)")
todaySteps.takeStep()
print("Steps after: \(todaySteps.steps)")
