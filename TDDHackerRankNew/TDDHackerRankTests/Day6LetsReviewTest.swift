//
//  Day6LetsReviewTest.swift
//  TDDHackerRankTests
//
//  Created by Michael Alexander Rodriguez Urbina on 15/11/21.
//

import XCTest
import TDDHackerRank

class Day6StringTest: XCTestCase {

    func test_whenUserGivesString_returnCharacterFromEvenIndex() {
        //given
        let inputString = "Hacker"
        let sut = Day6Strings(word: inputString)
        let expectation = "Hce"
        // when
        
        let result = sut.separateCharactersFromEvenIndex()
        
        
        XCTAssertEqual(expectation, result)
    }
    
    func test_whenUserGivesString_returnCharacterFromOddIndex() {
        //given
        let inputString = "Hacker"
        let sut = Day6Strings(word: inputString)
        let expectation = "akr"
        // when
        
        let result = sut.separateCharactersFromOddIndex()
        
        
        XCTAssertEqual(expectation, result)
    }
    //Prueba general
    
    func test_whenUserGivesString_returnStringWithCharactersFromEvenIndexAndStringWithCharactersFromODDIndex() {
        //given
        let inputString = "Hacker"
        let sut = Day6Strings(word: inputString)
        let expectation = "Hce akr"
        // when
        
        let result = sut.separateStringFromEvenAndOddIndex()
        
        
        XCTAssertEqual(expectation, result)
    }

}
