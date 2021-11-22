//
//  Day10BinaryNumbers.swift
//  TDDHackerRankTests
//
//  Created by Michael Alexander Rodriguez Urbina on 22/11/21.
//

import XCTest
@testable import TDDHackerRank

class Day10MaximumOnesConsecutiveInaBinaryNumberTest: XCTestCase {

    func test_whenUserProvidesNegativeNumber_printZero() {
        
        let inputNumber = -3
        let expected = 0
        
        let result = maximunOnesConsecutivesInBinaryNumber(number: inputNumber)
        
        XCTAssertTrue(inputNumber < 0, "Fails, It's a positive number")
        
        XCTAssertEqual(expected, result)
    }
    
    func test_whenUserProvidesaZeroNumber_printZero() {
        
        let inputNumber = 0
        let expected = 0
        
        let result = maximunOnesConsecutivesInBinaryNumber(number: inputNumber)
        
        XCTAssertTrue(inputNumber == 0, "Fails, It's another number different from zero.")
        
        XCTAssertEqual(expected, result)
    }
    
    func test_whenUserProvidesaPositiveNumber_printExpected(){
        
        let inputNumber = 125
        let expected = 5
        
        let result = maximunOnesConsecutivesInBinaryNumber(number: inputNumber)
        
        XCTAssertEqual(expected, result)
    }
        
}
    

