// Function that prints a brief introduction
func introduceMyself() {
    print("Hi, my name is Grant. I'm an administrative and customer service professional currently studying at Durham Technical Community College, and I enjoy learning programming and exploring new technologies.")
}

// Call the function
introduceMyself()


// Function that simulates a Magic Eight Ball
func magicEightBall() {
    let randomNum = Int.random(in: 0...4)
    
    switch randomNum {
    case 0:
        print("Yes, definitely!")
    case 1:
        print("Ask again later.")
    case 2:
        print("No way!")
    case 3:
        print("It’s possible, but uncertain.")
    case 4:
        print("Absolutely!")
    default:
        print("Error: unexpected number.")
    }
}

// Call the function multiple times to see different outputs
magicEightBall()
magicEightBall()
magicEightBall()
