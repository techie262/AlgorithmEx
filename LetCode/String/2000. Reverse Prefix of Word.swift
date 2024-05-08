//
//  2000. Reverse Prefix of Word.swift
//  AlgorithmEx
//
//  Created by Bigbear on 7/5/24.
//

import Foundation
/*
 if word = "abcdefd" and ch = "d", then you should reverse the segment that starts at 0 and ends at 3 (inclusive).
 The resulting string will be "dcbaefd".
 */

class Solution2000 {
    static
    func reversePrefix(_ word: String, _ ch: Character) -> String {
        if let firstIndex = word.firstIndex(of: ch) {
            let prefix = word[...firstIndex].reversed()
            let startIndex = word.index(word.startIndex, offsetBy: prefix.count)
            let suffix = word[startIndex..<word.endIndex]
            return String(prefix + suffix)
        }
        return word
    }
    
    static
    func run() {
        print(reversePrefix("abcsdefd", "d"))
    }
}
