//
//  Day7Array.swift
//  TDDHackerRank
//
//  Created by Michael Alexander Rodriguez Urbina on 17/11/21.
//

import Foundation

public func invertedArray(array: Array<Int>) -> Array<Int> {
    
    var newArray = Array<Int>()
    var i = array.count - 1
    
    guard !(array.count > 1000) else {
        return [0]
    }
    
    guard !array.isEmpty else {
        return [0]
    }
    
    while i >= 0 {
        newArray.append(array[i])
        i -= 1
    }

    return newArray
}



