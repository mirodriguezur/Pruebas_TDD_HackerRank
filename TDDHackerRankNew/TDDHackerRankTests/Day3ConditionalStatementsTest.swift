//
//  Day3ConditionalStatementsTest.swift
//  TDDHackerRankTests
//
//  Created by Michael Alexander Rodriguez Urbina on 10/11/21.
//

import XCTest
import TDDHackerRank

class ConditionalStatementsTest: XCTestCase {

    func testConditional_whenUserGivesOddNumber_printWeird(){
        //give
        let sut = ConditionalStatements()
        let oddNumbers = stride(from:1, through: 100, by: 2)
        let num = 3
        let expect = "Weird"
        //when
        let result = sut.conditionalsNumbersOddOrEven(N: num)
        //Then
        XCTAssertTrue(oddNumbers.contains(num),"num is not odd")
        XCTAssertEqual(result, expect)
        
    }
    
    func testConditional_whenUserGivesRangeOf2To5_printNotWeird(){
        //give
        let sut = ConditionalStatements()
        let evenRange2To5 = [2,4]
        let num = 2
        let expect = "Not Weird"
        //when
        let result = sut.conditionalsNumbersOddOrEven(N: num)
        //then
        XCTAssertTrue(evenRange2To5.contains(num),"num is not even")
        XCTAssertEqual(result, expect)
    }
    
    func testConditional_whenUserGivesRangeOf6to20_printWeir(){
        //give
        let sut = ConditionalStatements()
        let evenRange6To20 = stride(from: 6, through: 20, by: 2)
        let num = 20
        let expect = "Weird"
        //when
        let result = sut.conditionalsNumbersOddOrEven(N: num)
        //then
        XCTAssertTrue(evenRange6To20.contains(num),"num is not even")
        XCTAssertEqual(result, expect)
    }
    
    func testConditional_whenUserGivesRangeOf21to100_printWeir(){
        //give
        let sut = ConditionalStatements()
        let evenRange21To100 = stride(from: 22, through: 100, by: 2)
        let num = 100
        let expect = "Not Weird"
        //when
        let result = sut.conditionalsNumbersOddOrEven(N: num)
        //then
        XCTAssertTrue(evenRange21To100.contains(num),"num is not even")
        XCTAssertEqual(result, expect)
    }
    
    func testConditional_whenUserGivesinvalidNumber_printInvalidNumber(){
        //give
        let sut = ConditionalStatements()
        let evenTotalRange = stride(from: 1, through: 100, by: 1)
        let num = -32
        let expect = "Invalid number"
        //when
        let result = sut.conditionalsNumbersOddOrEven(N: num)
        //then
        XCTAssertFalse(evenTotalRange.contains(num),"num is in the correct range.")
        XCTAssertEqual(result, expect)
    }

}

