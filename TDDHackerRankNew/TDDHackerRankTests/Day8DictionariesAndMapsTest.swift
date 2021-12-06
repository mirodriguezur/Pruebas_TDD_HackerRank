//
//  Day8DictionariesAndMapsTest.swift
//  TDDHackerRankTests
//
//  Created by Michael Alexander Rodriguez Urbina on 18/11/21.
//

import XCTest
@testable import TDDHackerRank

class Day8ConsultPhoneBookDictionaryTest: XCTestCase {

    func test_whenUserProvidesAnEmptyString_throwsError() throws {
        //given
        let emptyString = ""
        do{
            //when
            _ = try consultPhoneBook(nameKey: emptyString)
        } catch (let error) {
            //then
            XCTAssertEqual(error as! PhoneBookDictionaryErrors, PhoneBookDictionaryErrors.emptyInput)
        }
    }

}
    

