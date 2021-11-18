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
        
        let result = separateCharactersFromEvenIndexandOddIndex(string: inputString)
        //then
        XCTAssertEqual(expected, result)
    }
}
