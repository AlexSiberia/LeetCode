import UIKit

func isSubsequence(_ subSequence: String, _ sequence: String) -> Bool {
    
    var sequenceIndex = sequence.startIndex
    var subSequenceIndex = subSequence.startIndex
    
    while sequenceIndex < sequence.endIndex && subSequenceIndex < subSequence.endIndex {
        if sequence[sequenceIndex] == subSequence[subSequenceIndex] {
            sequenceIndex = sequence.index(after: sequenceIndex)
            subSequenceIndex = subSequence.index(after: subSequenceIndex)
        } else {
            sequenceIndex = sequence.index(after: sequenceIndex)
        }
    }
    
    return subSequenceIndex == subSequence.endIndex
}

isSubsequence("ace", "acde")
isSubsequence("acx", "acde")
