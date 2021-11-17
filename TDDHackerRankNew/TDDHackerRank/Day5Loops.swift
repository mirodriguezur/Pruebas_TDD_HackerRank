//
//  Day5Loops.swift
//  TDDHackerRank
//
//  Created by Michael Alexander Rodriguez Urbina on 13/11/21.
//

import Foundation

func firstTenMultiples(number: Int)-> Array<String> {
    guard number >= 2 && number <= 20 else {
        return ["Number is invalid"]
    }
    
    return (1...10).map { "\(number) x \($0) = \(number * $0)" }
}
