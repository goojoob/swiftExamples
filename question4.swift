extension String {

  subscript (i: Int) -> Character {
	let index = self.index(self.startIndex, offsetBy: i)
	return self[index]
  }

}

func isPalindrome(sentence:String) -> Bool {
	let upperSent = sentence.uppercased()
	
	var leftPos = 0
	var rightPos = upperSent.characters.count - 1
	
	while leftPos < rightPos {
		if upperSent[leftPos] != upperSent[rightPos] {
			return false
		}
		
		leftPos += 1
		rightPos -= 1
	}
    
    return true
}

let text = "Noel sees Leon"

if isPalindrome(sentence:text) {
	print ("'\(text)' is palindrome")
} else {
	print ("'\(text)' is not palindrome")
}