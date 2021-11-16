//
//  Day5Loops.swift
//  TDDHackerRank
//
//  Created by Michael Alexander Rodriguez Urbina on 13/11/21.
//

import Foundation

public class Day5Loop {
    
    public init(){}
    
    public func multiplicationLoop(number: Int)-> Array<String>{
            if number >= 2 && number <= 20 {
                var resultArray = [String]()
                var i = 1
                repeat {
                    let result = number * i
                    resultArray.append("\(number) x \(i) = \(result)")
                    i += 1
                } while i < 11
                return resultArray
            } else {
                return ["Number is invalid"]
            }
    }
    
}



