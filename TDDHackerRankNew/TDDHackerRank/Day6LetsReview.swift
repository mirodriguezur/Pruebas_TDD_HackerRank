//
//  Day6LetsReview.swift
//  TDDHackerRank
//
//  Created by Michael Alexander Rodriguez Urbina on 15/11/21.
//

import Foundation
    
func separateCharactersFromEvenIndex(string: String = "") -> String {
    
    let stringArray = Array(string)
    var evenWord: String = ""
    
    for i in 0...stringArray.count - 1 where i % 2 == 0{
        evenWord = evenWord + String(stringArray[i])
    }
    
    return evenWord
}

func separateCharactersFromOddIndex(string: String = "") -> String {
    
    let stringArray = Array(string)
    var oddWord: String = ""
    
    for i in 0...stringArray.count - 1 where i % 2 != 0{
        oddWord = oddWord + String(stringArray[i])
    }
    
    return oddWord

}

func separateCharactersCharactersFromEvenIndexandOddIndex(string: String) -> String {
    return separateCharactersFromEvenIndex(string: string) + " " + separateCharactersFromOddIndex(string: string)
}
