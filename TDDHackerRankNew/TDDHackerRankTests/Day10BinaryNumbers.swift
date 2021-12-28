//
//  Day10BinaryNumbers.swift
//  TDDHackerRankTests
//
//  Created by Michael Alexander Rodriguez Urbina on 22/11/21.
//

import XCTest
@testable import TDDHackerRank

class Day10MaximumOnesConsecutiveInaBinaryNumberTest: XCTestCase {
   
    /* Domain: 1 <= n <= 1000000*/
    
    func test_whenUserProvidesNumberBelowPermited_throwError() throws {
        //given
        let inputNumber = 0
        
        do{
            //when
            _ = try maximunOnesConsecutivesInBinaryNumber(number: inputNumber)
            
        } catch (let error) {
            // then
            XCTAssertEqual(error as! binaryNumberError, binaryNumberError.inputNumberBelowPermited)
        }
    }
    
    func test_whenUserProvidesNumberAbovePermited_throwError() throws {
        //given
        let inputNumber = 1000001
        
        do{
            //when
            _ = try maximunOnesConsecutivesInBinaryNumber(number: inputNumber)
            
        } catch (let error) {
            // then
            XCTAssertEqual(error as! binaryNumberError, binaryNumberError.inputNumberAbovePermited)
        }
    }

    func test_whenUserPovidesNumber_WithinTheAllowedRange_ReturnMaximumOnesConsecutiveInaBinaryNumber() throws {
        //given
        let inputNumber = 125
        var result = 0
        let expected = 5
        
        do {
            //when
            result = try maximunOnesConsecutivesInBinaryNumber(number: inputNumber)
        } catch {
            //then
            XCTFail("the input number is valid, it shouln't throw error.")
        }
        XCTAssertEqual(result, expected)
    }
        
}
    

