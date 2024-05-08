//
//  2942. Find Words Containing Character.swift
//  AlgorithmEx
//
//  Created by Bigbear on 5/5/24.
//

import Foundation


class Solution2942 {
    static
    func findWordsContaining(_ words: [String], _ x: Character) -> [Int] {
        var indexs: [Int] = []
        words.enumerated().forEach{ (idx, word) in
            if word.contains(x) {
                indexs.append(idx)
            }
        }
        return indexs
    }
    
    static
    func run() {
        print(findWordsContaining(["leet","code"], "e"))
    }
}
