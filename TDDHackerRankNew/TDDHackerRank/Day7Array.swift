//
//  Day7Array.swift
//  TDDHackerRank
//
//  Created by Michael Alexander Rodriguez Urbina on 17/11/21.
//

import Foundation

public class Day7Arrays{
    public init (){}
    
    public func inverseArray(array: Array<Int>) -> Array<Int> {
        
        var newArray = Array<Int>()
        
        if array.count > 1000 {
            return [0]
        } else {
            var i = array.count - 1
            
            while i >= 0 {
                newArray.append(array[i])
                i -= 1
            }
        }
        return newArray
    }
    
    
}
