//
//   Code Testcase Test Result Test Result 2011. Final Value of Variable After Performing Operations.swift
//  AlgorithmEx
//
//  Created by Bigbear on 4/5/24.
//

import Foundation
/*
 Input: operations = ["--X","X++","X++"]
 Output: 1
 Explanation: The operations are performed as follows:
 Initially, X = 0.
 --X: X is decremented by 1, X =  0 - 1 = -1.
 X++: X is incremented by 1, X = -1 + 1 =  0.
 X++: X is incremented by 1, X =  0 + 1 =  1.
*/


class Solution2011{
    static
    func finalValueAfterOperations(_ operations: [String]) -> Int {
        var sum: Int = 0
        operations.forEach {
            if $0.contains("++") {
                sum += 1
            }
            if $0.contains("--") {
                sum -= 1
            }
        }
        return sum
    }
    
    static
    func run() {
        print(finalValueAfterOperations(["--X","X++","X++"]))
        /* Output:
         --X: X is decremented by 1, X =  0 - 1 = -1.
         X++: X is incremented by 1, X = -1 + 1 =  0.
         X++: X is incremented by 1, X =  0 + 1 =  1.
         */
    }
}
