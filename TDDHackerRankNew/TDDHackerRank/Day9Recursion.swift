//
//  Day9Recursion.swift
//  TDDHackerRank
//
//  Created by Michael Alexander Rodriguez Urbina on 19/11/21.
//

import Foundation

enum recursiveFactorialError: Error {
    case valueBellowPermited
    case valueAbovePermited
}

func recursiveFactorial(number: Int) throws -> Int {
    guard !(number < 1) else {
        throw recursiveFactorialError.valueBellowPermited
    }
    guard !(number > 12) else {
        throw recursiveFactorialError.valueAbovePermited
    }
    guard !(number == 1) else {return 1}
    
    return try(number * recursiveFactorial(number: number - 1))
    
}
