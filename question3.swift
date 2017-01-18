func isPrime(number:Int) -> Bool {
    if number <= 0 {
        return false
    }
    if number == 1 || number == 2 {
        return true
    }
    
    for i in 2..<number {
        if (number % i == 0) {
            return false
        }
    }
    
    return true
}

var primeFounds = 0
var currentNum = 0

while primeFounds < 100 {
    if isPrime(number:currentNum){
        print(currentNum)
		primeFounds += 1
    }
	
	currentNum += 1
}