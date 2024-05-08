//
//  1221. Split a String in Balanced Strings.swift
//  AlgorithmEx
//
//  Created by Bigbear on 8/5/24.
//

import Foundation
/*
 Input: s = "RLRRLLRLRL"
 Output: 4
 Explanation: s can be split into "RL", "RRLL", "RL", "RL", each substring contains same number of 'L' and 'R'.
 */

class Solution1221 {
    static
    func balancedStringSplit(_ s: String) -> Int {
        var balanceCount = 0
        var balance = 0
        
        for char in s {
            if char == "R" {
                balance += 1
            } else if char == "L" {
                balance -= 1
            }
            
            if balance == 0 {
                balanceCount += 1
            }
        }
        
        return balanceCount
    }
    
    static
    func arrayStringsAreEqual(_ word1: [String], _ word2: [String]) -> Bool {
        let string1 = word1.joined()
        let string2 = word2.joined()
        return string1 == string2
    }
    
    static
    func truncateSentence(_ s: String, _ k: Int) -> String {
        let words = s.components(separatedBy: " ")
        let str = Array(words.prefix(k)).joined(separator: " ")
        return str
    }
    
    static
    func countMatches(_ items: [[String]], _ ruleKey: String, _ ruleValue: String) -> Int {
        var count = 0
        items.forEach {
            switch ruleKey {
            case "type":
                if $0[0] == ruleValue {
                    count += 1
                }
            case "color":
                if $0[1] == ruleValue {
                    count += 1
                }
            case "name":
                if $0[2] == ruleValue {
                    count += 1
                }
            default:
                break
            }
        }
        return count
    }
    
    static
    func restoreString(_ s: String, _ indices: [Int]) -> String {
        var dict: [String: String] = [:]
        s.enumerated().forEach { (idx, char) in
            if idx < indices.count {
                let key = indices[idx]
                dict[String(key)] = String(char)
            }
            
        }
        let dictSorted = dict.sorted { Int($1.key) ?? 0 > Int($0.key) ?? 0 }
        return dictSorted.map { $0.value }.joined()
    }
    
    static
    func decodeMessage(_ key: String, _ message: String) -> String {
        var dict = [Character: Character]()
        let keyChars = Array(key.replacingOccurrences(of: " ", with: ""))
        let alphabet = Array("abcdefghijklmnopqrstuvwxyz")

        keyChars.forEach { char in
            if !dict.keys.contains(char),
               dict.count <= alphabet.count {
                if dict.isEmpty {
                    dict[char] = alphabet[0]
                } else {
                    dict[char] = alphabet[dict.count]
                }
            }
        }
        
        return String(message.map { dict[$0] ?? $0 })
    }
    
    static
    func run() {
        print(balancedStringSplit("RLRRLLLRLRL"))
        print(arrayStringsAreEqual(["ab", "c"], ["a", "bc"]))
        print(truncateSentence("Hello how are you Contestant", 4))
        print(countMatches([["phone","blue","pixel"],["computer","silver","phone"],["phone","gold","iphone"]],
                           "color",
                           "silver"))
        print(restoreString("codeleet", [4,5,6,7,0,2,1,3]))
        print(decodeMessage("the quick brown fox jumps over the lazy dog", "vkbs bs t suepuv"))
    }
}

