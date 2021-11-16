//
//  Day3ConditionalStatementsTest.swift
//  TDDHackerRankTests
//
//  Created by Michael Alexander Rodriguez Urbina on 10/11/21.
//

import XCTest
import TDDHackerRank

class ConditionalStatementsTest: XCTestCase {

    //edge/border case
    //is there a maximum input integer value?
    func testConditional_whenUserProvidesOddNumber_printWeird(){
        //give
        let sut = ConditionalStatements()
        let oddNumbers = stride(from:1, through: 100, by: 2)
        let inputNumber = 3
        let expect = "Weird"
        //when
        let result = sut.conditionalsNumbersOddOrEven(N: inputNumber)
        //Then
        XCTAssertTrue(oddNumbers.contains(inputNumber),"fails, the number provide is even.")
        XCTAssertEqual(result, expect)
    }
    
    func testConditional_whenUserProvidesAnEvenNumberInsideTheRange2Upto5_printNotWeird(){
        //give
        let sut = ConditionalStatements()
        let evenRange2To5 = [2,4]
        let num = 2
        let expect = "Not Weird"
        //when
        //validate if number is even and it is an integer below 5
        let result = sut.conditionalsNumbersOddOrEven(N: num)
    
        //then
        XCTAssertTrue(evenRange2To5.contains(num),"fails, number provided is odd.")
        XCTAssertEqual(result, expect)
    }
    
    func testConditional_whenUserProvidesAnEvenNumberInsideTheRange6to20_printWeird(){
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
    
    func testConditional_whenUserProvidesAnEvenNumberInsideTheRange21to100_printNotWeird(){
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
    
    func testConditional_whenUserProvidesANumberOutsideTheRageFrom1to100_printInvalidNumber(){
        //give
        let sut = ConditionalStatements()
        let range = stride(from: 1, through: 100, by: 1)
        let inputNumber = -32
        let expect = "Invalid number"
        //when
        let result = sut.conditionalsNumbersOddOrEven(N: inputNumber)
        //then
        XCTAssertFalse(range.contains(inputNumber),"num is in the correct range.")
        XCTAssertEqual(result, expect)
    }

}

