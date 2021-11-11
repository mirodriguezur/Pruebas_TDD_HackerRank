//
//  day3HackerRankTest.swift
//  day2HackerRankTests
//
//  Created by Michael Alexander Rodriguez Urbina on 8/11/21.
//

import XCTest
@testable import day2HackerRank

class day3HackerRankTest: XCTestCase {
	
	//red -> green -> refactor
    func test_tipCalculator() {
        //given
        let sut = MealCostCalulator()
		let mealCost = 12.0
		let tipPercent = 20
		let expecteTipCost = 2.4
		
		//when
		let tipCost = sut.tipCalculator(mealCost, tipPercent)
		
		//then
		XCTAssertEqual(tipCost, expecteTipCost)
    }
	
	func test_taxCalculator() {
		//given
		let sut = MealCostCalulator()
		let mealCost = 12.0
		let taxPercent = 8
		let expecteTax = 0.96
		
		//when
		let tax = sut.taxCalculator(mealCost, taxPercent)
		
		//then
		XCTAssertEqual(tax, expecteTax)
	}

	//characterization test
    func testMealCostCalulator_mealCost(){
        //give
        let sut = MealCostCalulator()
		let mealCost = 12.0
		let tipPercent = 20
        let taxPercent = 8
		let expectMealCost = 15
		
        //when
        let result = sut.solve(mealCost: mealCost,
							   tipPercent: tipPercent,
							   taxPercent: taxPercent)
        
        //then
        XCTAssertEqual(result, expectMealCost)
    }
}
