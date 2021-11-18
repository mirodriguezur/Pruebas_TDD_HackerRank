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
    
    func test_whenUserProvidesaNameThatIsNotInPhoneNumberBook_returnNotFound(){
        //give
        let inputString = "Michael"
        let expected = "Not Found"
        //when
        let result = consultPhoneBook(nameKey: inputString)
        //then
        XCTAssertEqual(expected, result)
    }
    
    func test_whenUserProvidesaNameThatIsInPhoneNumberBook_returnPhoneNumber(){
        //give
        let inputString = "sam"
        let expected = "99912222"
        //when
        let result = consultPhoneBook(nameKey: inputString)
        //then
        XCTAssertEqual(expected, result)
    }
}
