//
//  Day10BinaryNumbers.swift
//  TDDHackerRank
//
//  Created by Michael Alexander Rodriguez Urbina on 22/11/21.
//

import Foundation

enum binaryNumberError:Error {
    case inputNumberBelowPermited
    case inputNumberAbovePermited
}

func maximunOnesConsecutivesInBinaryNumber(number: Int) throws -> Int {
    guard !(number <= 0) else  {
        throw binaryNumberError.inputNumberBelowPermited
    }
    guard !(number > 1000000) else {
        throw binaryNumberError.inputNumberAbovePermited
    }
    
    return 0
}
