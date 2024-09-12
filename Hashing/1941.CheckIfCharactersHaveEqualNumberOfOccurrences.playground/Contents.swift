func areOccurrencesEqual(_ s: String) -> Bool {
    var ans: Bool = true
    let arr: [Character] = Array(s)
    var dict: [Character : Int] = [:]
    var count: Int = 0
    
    for char in arr {
        if let j = dict[char] {
            dict[char]! += 1
        } else {
            dict[char] = 1
        }
    }
    count = dict[arr[0]]!
    
    for (key, value) in dict {
        if value != count {
            return false
        }
    }
    
    return ans
  }

areOccurrencesEqual("abacbc")
areOccurrencesEqual("aaabb")

/*
 Example 1:
 Input: s = "abacbc"
 Output: true
 Explanation: The characters that appear in s are 'a', 'b', and 'c'. All characters occur 2 times in s.
 
 Example 2:
 Input: s = "aaabb"
 Output: false
 Explanation: The characters that appear in s are 'a' and 'b'.
 'a' occurs 3 times while 'b' occurs 2 times, which is not the same number of times.
 
 Plan:
 - Проходим по массиву и создаем хэшмапу
 - проходим по хэшмапе и чекаем совпадают ли все value
 */


func areOccurrencesEqual1(_ s: String) -> Bool {
    let arr: [Character] = Array(s)
    var dict: [Character : Int] = [:]
    
    for char in arr {
      dict[char, default: 0] += 1 // интересная оптимизация if-else statment
    }
 
    let frequencies = dict.values
    print(frequencies)
    
   
    
    return Set(dict.values).count == 1 // проверка уникальности value через множество. Если всех букв одинаковое количество, то в множесве бедет один элемент
  }
areOccurrencesEqual1("abacbc")
areOccurrencesEqual("aaabb")
