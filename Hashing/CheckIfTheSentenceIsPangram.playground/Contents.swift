func checkIfPangram(_ sentence: String) -> Bool {
    let countSet: Int = Set(sentence).count
    
//    if countSet == 26 {
//        return true
//    } else {
//        return false
//    }
    return countSet == 26
}


var sentence = "thequickbrownfoxjumpsoverthelazydog"
sentence.count
checkIfPangram(sentence)
