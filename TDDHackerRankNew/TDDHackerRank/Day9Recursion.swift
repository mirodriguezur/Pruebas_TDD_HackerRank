//
//  Day9Recursion.swift
//  TDDHackerRank
//
//  Created by Michael Alexander Rodriguez Urbina on 19/11/21.
//

import Foundation

func factorial(_ number: Int) throws -> Int {
    guard !(number <= 1) else { return 1 }
    guard !(number > 12)
    else {
        throw recursiveFactorialError.valueAbovePermited
    }
    return try(number * factorial(number - 1))
}

enum recursiveFactorialError: Error {
    case valueAbovePermited
}
    
