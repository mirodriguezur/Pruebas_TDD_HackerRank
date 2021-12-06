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
    
    func test_whenUserProvidesaNameThatIsNotInPhoneNumberBook_throwsError() throws {
        //give
        let inputString = "Michael"
        let expected = "Not found"
        var result = ""
        do{
            //when
            result = try consultPhoneBook(nameKey: inputString)
        } catch {
            // then
            XCTFail()
        }
        XCTAssertEqual(expected, result)
    }
    
    func test_whenUserProvidesaNameThatIsInPhoneNumberBook_returnNameAndPhoneNumber(){
        //give
        let inputString = "sam"
        let expected = "99912222"
        var result = ""
        
        do{
            //when
            result = try consultPhoneBook(nameKey: inputString)
        } catch {
            //then
            print(error)
            XCTFail("it is a valid nameKey.")
        }
        XCTAssertEqual(expected, result)
    }
}

    

