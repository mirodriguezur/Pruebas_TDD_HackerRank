//
//  Day8DictionariesAndMapsTest.swift
//  TDDHackerRankTests
//
//  Created by Michael Alexander Rodriguez Urbina on 18/11/21.
//

import XCTest
@testable import TDDHackerRank

class Day8ConsultPhoneBookDictionaryTest: XCTestCase {

    func test_whenUserProvidesAnEmptyString_returnEmptyName(){
        //give
        let inputString = ""
        let expected = "fails, Empty name."
        //when
        let result = consultPhoneBook(nameKey: inputString)
        //then
        XCTAssertEqual(expected, result)
    }
    
}
