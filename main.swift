func mostFrequentChar(_ str: String) -> Character {
    var charDict = [Character: Int]()
    
    for char in str {
        charDict[char, default: 0] += 1
    }
    
    var maxChar: Character = " "
    var maxCount = 0
    
    for (char, count) in charDict {
        if count > maxCount {
            maxChar = char
            maxCount = count
        }
    }
    
    return maxChar
}


let str = "abbcccdddd"
let mostFrequent = mostFrequentChar(str)
print(mostFrequent) 
