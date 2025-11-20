// Step 1: Create lists of challenges
let walkingChallenges: [String] = ["Walk 3 miles a day", "Walk 10,000 steps daily"]
let runningChallenges: [String] = ["Run 5 times a week", "Run a half marathon"]

// You can add more if you like, e.g.:
let weightliftingChallenges: [String] = ["Lift weights 3 times a week", "Bench press your bodyweight"]

// Step 2: Group them into an array of arrays
var challenges: [[String]] = [walkingChallenges, runningChallenges, weightliftingChallenges]

// Step 3: Print the first element in the second challenge list
print(challenges[1][0])   // "Run 5 times a week"

// Step 4: Reset all challenges at the end of the month
challenges.removeAll()
print(challenges)         // []

// Step 5: Create a new array for committed challenges
var committedChallenges: [String] = []   // could also start with some items

// Step 6: Use if/else-if/else with isEmpty and count
if committedChallenges.isEmpty {
    print("Please commit to a challenge.")
} else if committedChallenges.count == 1 {
    print("The challenge you have chosen is \(committedChallenges[0])")
} else {
    print("You have chosen multiple challenges.")
}
