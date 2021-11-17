//
//  Day6LetsReview.swift
//  TDDHackerRank
//
//  Created by Michael Alexander Rodriguez Urbina on 15/11/21.
//

import Foundation

public class Day6Strings {
    
    private var word: String
    
    public init (word: String){
        self.word = word
    }
    
    public func separateCharactersFromEvenIndex()->String{
        
        let wordArray = Array(word)
        var evenWord: String = ""
        
        for i in 0...wordArray.count - 1 where i % 2 == 0 {

            evenWord = evenWord + String(wordArray[i])

        }
        
        return evenWord
    }
    
    public func separateCharactersFromOddIndex()->String{
        
        let wordArray = Array(word)
        var oddWord: String = ""
        
        for i in 0...wordArray.count - 1 where i % 2 != 0 {
            
            oddWord = oddWord + String(wordArray[i])

        }
        
        return oddWord
    }
    
    public func separateStringFromEvenAndOddIndex()->String {
        separateCharactersFromEvenIndex() + " " + separateCharactersFromOddIndex()
    }
}
