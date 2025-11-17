// RunningWorkout struct with computed property
struct RunningWorkout {
    var distance: Double
    var time: Double
    var elevation: Double
    
    // Computed property for average mile time
    var averageMileTime: Double {
        let miles = distance / 1600.0
        return time / miles
    }
}

// Create an instance and print averageMileTime
let workout = RunningWorkout(distance: 3200, time: 20.0, elevation: 50)
print("Average mile time: \(workout.averageMileTime) minutes")


// Steps struct with property observer
struct Steps {
    var steps: Int {
        willSet {
            if newValue == goal {
                print("Congratulations! You've reached your goal of \(goal) steps!")
            }
        }
    }
    var goal: Int
    
    mutating func takeStep() {
        steps += 1
    }
}

// Create an instance and test property observer
var todaySteps = Steps(steps: 9999, goal: 10000)

print("Steps before: \(todaySteps.steps)")
todaySteps.takeStep() // should trigger congratulatory message
print("Steps after: \(todaySteps.steps)")
