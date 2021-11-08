//
//  day2HackerRankTests.swift
//  day2HackerRankTests
//
//  Created by Michael Alexander Rodriguez Urbina on 4/11/21.
//

import XCTest
@testable import day2HackerRank

class day2HackerRankTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testday2SumInt_whenUserGivesInteger_resultExpected() {
        //give
        let sut = SecondDay()
        let num = 12
        let expect = 16
        //when
        sut.sumInteger(num)
        //then
        
        XCTAssertEqual(sut.resultInteger, expect)
        
    }
    
    func testday2SumDouble_whenUserGiveDouble_resultExpected() {
        //give
        let sut = SecondDay()
        let num = 8.0
        let expect = 12.0
        //when
        sut.sumDouble(num)
        //then
        
        XCTAssertEqual(sut.resultDouble, expect)
        
    }
    
    func testday2SunString_whenUserGiveString_resultExpected() {
        //give
        let sut = SecondDay()
        let string = "is the best place to learn and practice coding!"
        let expect = "HackerRank is the best place to learn and practice coding!"
        //when
        sut.concatenate(with: string)
        //then
        XCTAssertEqual(sut.resultString,expect)
        }
        
    
}

