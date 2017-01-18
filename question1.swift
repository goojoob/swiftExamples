func isMultipleThree(number:Int) -> Bool {
    if number % 3 == 0 {
        return true
    } else {
        return false
    }
}

func isMultipleFive(number:Int) -> Bool {
    if number % 5 == 0 {
        return true
    } else {
        return false
    }
}

func isMultipleThreeFive(number:Int) -> Bool {
    if isMultipleThree(number:number) && isMultipleFive(number:number) {
        return true
    } else {
        return false
    }
}

for i in 1...100 {
    if isMultipleThreeFive(number:i) {
        print ("BucksFizz")
    } else if isMultipleFive(number:i) {
        print ("Fizz")
    } else if isMultipleThree(number:i) {
        print("Bucks")
    } else {
        print("\(i)")
    }
}