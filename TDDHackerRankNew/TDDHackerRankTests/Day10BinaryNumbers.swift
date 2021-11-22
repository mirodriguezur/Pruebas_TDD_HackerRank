//
//  Day10BinaryNumbers.swift
//  TDDHackerRankTests
//
//  Created by Michael Alexander Rodriguez Urbina on 22/11/21.
//

import XCTest

class Day10MaximumOnesConsecutiveInaBinaryNumberTest: XCTestCase {

    func test_whenUserProvidesNegativeNumber_printZero() {
        
        let inputNumber = -4
        let expected = 0
        
        let result = maximunOnesConsecutivesInBinaryNumber(number: inputNumber)
        
        XCTAssertTrue(inputNumber > 0, "Fails, It's a positive number")
        
        XCTAssertEqual(expected, result)
        
    }
    
}
