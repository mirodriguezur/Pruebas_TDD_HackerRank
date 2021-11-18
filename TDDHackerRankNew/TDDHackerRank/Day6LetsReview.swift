//
//  Day6LetsReview.swift
//  TDDHackerRank
//
//  Created by Michael Alexander Rodriguez Urbina on 15/11/21.
//

import Foundation

public func separateCharactersFromEvenIndexandOddIndex(string: String) -> String {
    
    let stringArray = Array(string)
    var evenWord:String = ""
    
    for i in 0...stringArray.count - 1 {
        
        if i % 2 == 0 {
            evenWord = evenWord + String(stringArray[i])
        }
    }
    return evenWord
}
