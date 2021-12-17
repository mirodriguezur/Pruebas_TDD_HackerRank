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

func recursiveFactorial(number: Int) throws {
    guard !(number < 1) else {
        throw recursiveFactorialError.valueBellowPermited
        
    }
    
    throw NSError(domain: "Error", code: 0)
}
