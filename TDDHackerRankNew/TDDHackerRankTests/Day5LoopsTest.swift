//
//  Day5LoopsTest.swift
//  TDDHackerRankTests
//
//  Created by Michael Alexander Rodriguez Urbina on 13/11/21.
//

import XCTest
import TDDHackerRank

class Day5LoopsTest: XCTestCase {
    
    func test_whenUserGivesNumberDifferenteTo2From20_PrintAlertInvalidRange(){
        //give
        let sut = Day5Loop()
        let num = 250
        let validRange = stride(from:1, through: 20, by: 1)
        let expect = ["Number is invalid"]
        //when
        let result = sut.multiplicationLoop(number: num)
        //Then
        guard validRange.contains(num) else {
            return XCTAssertEqual(expect, result)
        }
        XCTFail("The number is valid")
    }
    
    func test_whenUserGivesNumber_cycleRuns10Times(){
        //give
        let sut = Day5Loop()
        let num = 2
        let expect = 10
        
        let result = sut.multiplicationLoop(number: num)
        
        XCTAssertTrue(result.count == expect)
    }
    
    func test_whenUsersGivesNumber_expectationLastReturn(){
        //give
        let sut = Day5Loop()
        let num = 2
        let finalNum = 10
        let resultLoop = 20
        let expect = "\(num) x \(finalNum) = \(resultLoop)"
        //when
        let result = sut.multiplicationLoop(number: num)
        //then
        XCTAssertEqual(expect, result.last)
    }

}
