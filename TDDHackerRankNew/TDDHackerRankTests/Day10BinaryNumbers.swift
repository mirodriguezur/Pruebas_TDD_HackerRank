//
//  Day10BinaryNumbers.swift
//  TDDHackerRankTests
//
//  Created by Michael Alexander Rodriguez Urbina on 22/11/21.
//

import XCTest
@testable import TDDHackerRank

class Day10MaximumOnesConsecutiveInaBinaryNumberTest: XCTestCase {

    func test_whenUserProvidesNegativeNumber_throwError() throws {
        //given
        let inputNumber = -3
        
        do{
            //when
            _ = try maximunOnesConsecutivesInBinaryNumber(number: inputNumber)
            
        } catch (let error) {
            // then
            XCTAssertEqual(error as! binaryNumberError, binaryNumberError.inputNumberBellowPermited)
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
        
}
    

