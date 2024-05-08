//
//  771. Jewels and Stones.swift
//  AlgorithmEx
//
//  Created by Bigbear on 5/5/24.
//

import Foundation



class Solution771 {
    static
    func numJewelsInStones(_ jewels: String, _ stones: String) -> Int {
        var sum: Int = 0
        stones.forEach {
            if jewels.contains($0) {
                sum += 1
            }
        }
        return sum
    }
    
    static
    func run() {
        print(numJewelsInStones("aAAbbbb", "aA"))
    }
}
