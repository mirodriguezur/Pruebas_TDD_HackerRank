//
//  Day9RecursionTest.swift
//  TDDHackerRankTests
//
//  Created by Michael Alexander Rodriguez Urbina on 19/11/21.
//

import XCTest
@testable import TDDHackerRank

class Day9RecursiveFactorialTest: XCTestCase {

    func test_whenUserProvidesZeroOrOne_returnOne(){
        //give
        let numbersUnder2 = [0,1]
        let expectValue = 1
        
        //when
        let results = numbersUnder2.map { recursiveFactorial(number: $0)
        }
        let verification = results.first{$0 != expectValue}
        //then
        XCTAssertNil(verification)
    }

}
