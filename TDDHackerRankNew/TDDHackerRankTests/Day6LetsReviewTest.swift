//
//  Day6LetsReviewTest.swift
//  TDDHackerRankTests
//
//  Created by Michael Alexander Rodriguez Urbina on 15/11/21.
//

import XCTest
@testable import TDDHackerRank

class Day6SeparateAStringIntoTwoStringDependingWheterTheIndexIsEvenOrOddTest: XCTestCase {

    func test_whenUserProvidesString_returnCharacterFromEvenIndex() {
        //given
        let inputString = "Hacker"
        let expected = "Hce"
        // when
        
        let result = separateCharactersFromEvenIndex(string: inputString)
        //then
        XCTAssertEqual(expected, result)
    }
    
    func test_whenUserProvidesString_returnCharacterFromOddIndex() {
        //given
        let inputString = "Hacker"
        let expected = "akr"
        // when
        
        let result = separateCharactersFromOddIndex(string: inputString)
        //then
        XCTAssertEqual(expected, result)
    }
    
    func test_whenUserProvidesString_separateStringFromEvenAndOddIndex() {
        //given
        let inputString = "Hacker"
        let expected = "Hce akr"
        // when
        
        let result = separateCharactersCharactersFromEvenIndexandOddIndex(string: inputString)
        //then
        XCTAssertEqual(expected, result)
    }
}
