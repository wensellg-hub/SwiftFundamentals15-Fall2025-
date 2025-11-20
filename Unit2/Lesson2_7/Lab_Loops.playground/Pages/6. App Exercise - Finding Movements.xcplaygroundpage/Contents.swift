let lowHR = 110
let highHR = 125
var movementHeartRates: [String: Int] = [
    "Walking": 85,
    "Running": 120,
    "Swimming": 130,
    "Cycling": 128,
    "Skiing": 114,
    "Climbing": 129
]

for (movement, heartRate) in movementHeartRates {
    // Skip movements outside the desired heart rate range
    if heartRate < lowHR || heartRate > highHR {
        continue
    }
    // Print suggestion if heart rate is within range
    print("You could go \(movement).")
}
