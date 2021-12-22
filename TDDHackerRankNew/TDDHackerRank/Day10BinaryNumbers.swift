//
//  Day10BinaryNumbers.swift
//  TDDHackerRank
//
//  Created by Michael Alexander Rodriguez Urbina on 22/11/21.
//

import Foundation

enum binaryNumberError:Error {
    case inputNumberBellowPermited
    case inputNumberAbovePermited
}

func maximunOnesConsecutivesInBinaryNumber(number: Int) throws {
    guard !(number < 0) else {
        throw binaryNumberError.inputNumberBellowPermited
    }
    guard !(number > 1000000) else {
        throw binaryNumberError.inputNumberAbovePermited
    }
    
    
    
    throw NSError(domain: "Error", code: 0)
}
