//
//  1108. Defanging an IP Address.swift
//  AlgorithmEx
//
//  Created by Bigbear on 4/5/24.
//

public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    public init() { self.val = 0; self.left = nil; self.right = nil; }
    public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
    public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
        self.val = val
        self.left = left
        self.right = right
    }
}

class Solution {
    static
    func rangeSumBST(_ root: TreeNode?, _ low: Int, _ high: Int) -> Int {
        guard let root = root else {
            return 0
        }
        var sum = 0
        
        if root.val >= low && root.val <= high {
            sum += root.val
        }
        
        if root.val > low {
            sum += rangeSumBST(root.left, low, high)
        }
        
        if root.val < high {
            sum += rangeSumBST(root.right, low, high)
        }
        
        return sum
    }
    
    static
    func run() {
        let root = TreeNode(10, TreeNode(5, TreeNode(3), TreeNode(7)), TreeNode(15, nil, TreeNode(18)))
        print(Solution.rangeSumBST(root, 7, 15)) // Output: 32
    }
    
}


