struct RunningWorkout {
    var distance: Double
    var time: Double
    var elevation: Double
    
    // Type properties for unit conversions
    static let meterInFeet: Double = 3.28084
    static let mileInMeters: Double = 1600.0
    
    // Type method to calculate average mile time
    static func mileTimeFor(distance: Double, time: Double) -> Double {
        // Convert distance in meters to miles
        let miles = distance / mileInMeters
        // Calculate average time per mile
        return time / miles
    }
}

// Call the type method and print the result
let averageMileTime = RunningWorkout.mileTimeFor(distance: 5000, time: 1500)
print("Average mile time: \(averageMileTime) seconds")

// Print type properties
print("Meters in a foot: \(RunningWorkout.meterInFeet)")
print("Meters in a mile: \(RunningWorkout.mileInMeters)")
