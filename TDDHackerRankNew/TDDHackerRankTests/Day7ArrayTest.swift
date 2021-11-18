//
//  Day7ArrayTest.swift
//  TDDHackerRankTests
//
//  Created by Michael Alexander Rodriguez Urbina on 17/11/21.
//

import XCTest
import TDDHackerRank

class Day7invertedArrayTest: XCTestCase {

    func test_whenUserProvidesSizeOfArrayOutOfRangeOf1to1000_returnArrayZero(){
        //give
        let sizeArray = 1001
        let inputArray = Array(repeating: Int(), count: sizeArray)
        let sizeValidArray = 1000
        let expected = [0]
        //when
        let result = invertedArray(array: inputArray)
        //then
        XCTAssertGreaterThan(inputArray.count, sizeValidArray)
        XCTAssertEqual(result, expected)
    }
    
    func test_whenUserProvidesAnEmptyArray_returnArrayZero(){
        //give
        let inputArray = [Int]()
        let expectated = [0]
        //when
        let result = invertedArray(array: inputArray)
        //then
        XCTAssertEqual(result, expectated)
    }
    
    func test_whenUsersProvidesArrayOfIntegers_returnInvertedArray(){
        //give
        let inputArray = [2,3,1,4]
        let expectated = [4,1,3,2]
        //when
        let result = invertedArray(array: inputArray)
        //then
        XCTAssertEqual(result, expectated)
    }

}
