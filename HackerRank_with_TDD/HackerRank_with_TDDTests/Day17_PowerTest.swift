//
//  Day17_PowerTest.swift
//  HackerRank_with_TDDTests
//
//  Created by Michael Alexander Rodriguez Urbina on 17/01/22.
//

import XCTest
import Foundation

class Day17_PowerTest: XCTestCase {

    func test_whenUserGivesProvidesANegativeBase_throwError () throws {
        //given
        let base = -1
        let exponent = 3
        
        do {
            //when
            let _ = try Calculator().power(n: base, p: exponent)
            
        } catch (let error) {
            //then
            XCTAssertEqual(error as! RangeError, RangeError.NotInRange("n and p should be non-negative"))
        }
        
    }

}

// Defining enum for throwing error
// throw RangeError.NotInRange... is used to throw the error
enum RangeError : Error {
    case NotInRange(String)
}

extension RangeError: Equatable {}

// Start of class Calculator
class Calculator {
    // Start of function power
    func power(n: Int, p: Int) throws {
        // Add your code here
        guard !(n < 0) else { throw RangeError.NotInRange("n and p should be non-negative")}
        throw NSError(domain: "RangeError", code: 0)
    } // End of function power
} // End of class Calculator
