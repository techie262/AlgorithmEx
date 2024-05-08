//
//  1108. Defanging an IP Address.swift
//  AlgorithmEx
//
//  Created by Bigbear on 4/5/24.
//

import Foundation
/*
Given a valid (IPv4) IP address, return a defanged version of that IP address.

A defanged IP address replaces every period "." with "[.]".

*/


class Solution1108 {
    static
    func defangIPaddr(_ address: String) -> String {
        address.replacingOccurrences(of: ".", with: "[.]", options: .literal, range: nil)
    }
    
    static
    func run() {
        print(defangIPaddr("255.100.50.0")) // Output: "255[.]100[.]50[.]0"
    }
}
