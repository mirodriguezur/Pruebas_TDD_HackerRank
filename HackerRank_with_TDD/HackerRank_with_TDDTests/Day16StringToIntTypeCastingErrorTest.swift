//
//  Day16StringToIntTypeCastingErrorTest.swift
//  HackerRank_with_TDDTests
//
//  Created by Michael Alexander Rodriguez Urbina on 14/01/22.
//

import XCTest

class Day16StringToIntTypeCastingErrorTest: XCTestCase {
    
    func test_whenUserProvidesStringThatDoesNotContainNumbers_throwError () throws {
        //given
        let inputString = "za"
        
        do {
            //when
            let _ = try stringToInt(inputString: inputString)
        } catch (let error) {
            // then
            XCTAssertEqual(error as! StringToIntTypecastingError, StringToIntTypecastingError.BadString)
        }
    }
    
    func test_whenUserProvidesStringWithNumbers_returnIntWithEqualNumber () throws {
        //given
        let inputString = "3"
        let expected = 3
        
        do {
            //when
            let result = try stringToInt(inputString: inputString)
            //then
            XCTAssertEqual(expected, result)
        } catch (let error) {
            XCTAssertEqual(error as! StringToIntTypecastingError, StringToIntTypecastingError.BadString)
        }
    }
        

}

/*
 * Define an ErrorType
 */
enum StringToIntTypecastingError: Error {
    case BadString
}

func stringToInt(inputString: String) throws -> Int  {
    guard Int(inputString) != nil else {
        throw StringToIntTypecastingError.BadString
    }
    
    return Int(inputString)!
}
