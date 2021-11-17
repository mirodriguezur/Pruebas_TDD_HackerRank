//
//  Day5LoopsTest.swift
//  TDDHackerRankTests
//
//  Created by Michael Alexander Rodriguez Urbina on 13/11/21.
//

import XCTest
@testable import TDDHackerRank

class Day5LoopsTestFirst10Multiples: XCTestCase {
    
    //validate valid inputs
    func test_whenUserProvidesANumber_OutsideOfTheValidRangeOfInputs_printNumberIsInvalid() {
        //given
        let inputNumber = 250
        let validRange = stride(from:2, through: 20, by: 1)
        let expected = ["Number is invalid"]
        
        //when
        let result = firstTenMultiples(number: inputNumber)
        
        //Then
        guard validRange.contains(inputNumber) else {
            return XCTAssertEqual(expected, result)
        }
        XCTFail("fails, the number is valid")
    }
    
    func test_whenUserProvidesAValidNumber_weGetIts10Multiples(){
        //given
        let inputNumber = 2
        let expected = ["2 x 1 = 2",
                        "2 x 2 = 4",
                        "2 x 3 = 6",
                        "2 x 4 = 8",
                        "2 x 5 = 10",
                        "2 x 6 = 12",
                        "2 x 7 = 14",
                        "2 x 8 = 16",
                        "2 x 9 = 18",
                        "2 x 10 = 20"]

        let result = firstTenMultiples(number: inputNumber)

        XCTAssertEqual(result, expected, "the loop didn't run 10 times.")
    }
}
