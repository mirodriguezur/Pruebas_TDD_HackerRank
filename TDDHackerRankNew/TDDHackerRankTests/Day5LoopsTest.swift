//
//  Day5LoopsTest.swift
//  TDDHackerRankTests
//
//  Created by Michael Alexander Rodriguez Urbina on 13/11/21.
//

import XCTest
import TDDHackerRank

class Day5LoopsTest: XCTestCase {
    
    func test_whenUserProvidesNumberDifferenteTo2From20_printAlertNumberIsInvalid(){
        //give
        let sut = Day5Loop()
        let inputNumber = 250
        let validRange = stride(from:1, through: 20, by: 1)
        let expectation = ["Number is invalid"]
        //when
        let result = sut.multiplicationLoop(number: inputNumber)
        //Then
        guard validRange.contains(inputNumber) else {
            return XCTAssertEqual(expectation, result)
        }
        XCTFail("fails, the number is valid")
    }
    
    func test_whenUserGivesNumber_loopRuns10Times(){
        //give
        let sut = Day5Loop()
        let inputNumber = 2
        let expectation = 10
        
        let result = sut.multiplicationLoop(number: inputNumber)
        
        XCTAssertTrue(result.count == expectation)
    }
    
    func test_whenUsersGivesNumber_lastElementArrayisValid(){
        //give
        let sut = Day5Loop()
        let inputNumber = 2
        let finalNum = 10
        let resultLoop = 20
        let expectation = "\(inputNumber) x \(finalNum) = \(resultLoop)"
        //when
        let result = sut.multiplicationLoop(number: inputNumber)
        //then
        XCTAssertEqual(expectation, result.last)
    }

}
