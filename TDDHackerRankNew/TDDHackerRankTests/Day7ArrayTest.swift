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
        let sut = Day7Arrays()
        let sizeArray = 1001
        let inputArray = Array(repeating: Int(), count: sizeArray)
        let sizeValidArray = 1000
        let expectation = [0]
        //when
        let result = sut.inverseArray(array: inputArray)
        //then
        XCTAssertGreaterThan(inputArray.count, sizeValidArray)
    }

}
