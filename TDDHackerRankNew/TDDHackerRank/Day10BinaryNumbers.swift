//
//  Day10BinaryNumbers.swift
//  TDDHackerRank
//
//  Created by Michael Alexander Rodriguez Urbina on 22/11/21.
//

import Foundation

func maximunOnesConsecutivesInBinaryNumber(number: Int) -> Int {
    
    var inputNumber = number
    var sum = 0
    var max = 0
    
    guard !(number <= 0) else {
        return 0
    }
    
    while inputNumber > 0 {
        if inputNumber % 2 == 1 {
            sum += 1
            if sum > max {
                max = sum
            }
        } else {
            sum = 0
        }
        inputNumber = inputNumber / 2
    }
    
    return max
}
