//
//  Day7ArrayTest.swift
//  TDDHackerRankTests
//
//  Created by Michael Alexander Rodriguez Urbina on 17/11/21.
//

import XCTest
import TDDHackerRank

class Day7ArrayTest: XCTestCase {

    func test_whenUserProvidesSizeOfArrayOutOfRangeOf1to1000_returnArrayZero(){
        //give
        let sizeArray = 1001
        let inputArray = Array(repeating: Int(), count: sizeArray)
        let sizeValidArray = 1000
        let expectated = [0]
        //when
        let result = inverseArray(array: inputArray)
        //then
        XCTAssertGreaterThan(inputArray.count, sizeValidArray)
        XCTAssertEqual(result, expectated)
    }
    
    func test_whenUsersProvidesArrayOfIntegers_returnInverseArray(){
        //give
        let inputArray = [2,3,1,4]
        let expectated = [4,1,3,2]
        //when
        let result = inverseArray(array: inputArray)
        //then
        XCTAssertEqual(result, expectated)
    }

}
