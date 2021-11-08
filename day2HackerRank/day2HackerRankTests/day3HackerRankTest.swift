//
//  day3HackerRankTest.swift
//  day2HackerRankTests
//
//  Created by Michael Alexander Rodriguez Urbina on 8/11/21.
//

import XCTest
@testable import day2HackerRank

class day3HackerRankTest: XCTestCase {

    override func setUpWithError() throws {
    }

    override func tearDownWithError() throws {
    }
    
//    func testDay3Solve_whenCalculateTip_isDouble(){
//        //given
//        let sut = ThirdDay()
//        let tip = 20.0
//        let tax = 8
//
//        //when
//        let result = sut.solve(meal_cost: 12.0,
//                               tip_percent: tip,
//                               tax_percent: tax)
//
//        XCTAssertTrue(sut.tip is Double)
//    }
    
    func test_tip() {
        //given
        let sut = 
    }
    
    func testDay3Solve_whenCalculateTax_isDouble(){
        let sut = ThirdDay()
        
        //when
        sut.solve(meal_cost: 12.0, tip_percent: 20, tax_percent: 8)
        
        XCTAssertTrue(sut.tax is Double)
    }
    
    func testDay3Solve_whenCalculateTotalCost_isInt(){
        let sut = ThirdDay()
        
        //when
        sut.solve(meal_cost: 12.0, tip_percent: 20, tax_percent: 8)
        
//        XCTAssertTrue(sut.totalCost is Int)
    }
    
    func testDay3Solve_whenUserGiveParameters_ResultExpected(){
        //give
        let sut = ThirdDay()
        let expect = 15
        
        //when
        let result = sut.solve(meal_cost: 12.0, tip_percent: 20, tax_percent: 8)
        
        //then
        XCTAssertEqual(result, expect)
        
    }


}
