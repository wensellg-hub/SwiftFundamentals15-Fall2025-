import Foundation

let cadence: Double = 180
var testSteps = 0

// While loop version
while testSteps < 10 {
    print("Take a step")
    testSteps += 1
    Thread.sleep(forTimeInterval: 60 / cadence)
}

// Repeat-while loop version
testSteps = 0

repeat {
    print("Take a step")
    testSteps += 1
    Thread.sleep(forTimeInterval: 60 / cadence)
} while testSteps < 10
