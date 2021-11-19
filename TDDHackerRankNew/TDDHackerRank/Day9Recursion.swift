//
//  Day9Recursion.swift
//  TDDHackerRank
//
//  Created by Michael Alexander Rodriguez Urbina on 19/11/21.
//

import Foundation

func recursiveFactorial(number: Int) -> Int {
    guard !(number == 0 || number == 1) else {return 1}
    
    guard !(number > 12 || number < 2) else {return 0}
    
    return number * recursiveFactorial(number: number - 1)
}
