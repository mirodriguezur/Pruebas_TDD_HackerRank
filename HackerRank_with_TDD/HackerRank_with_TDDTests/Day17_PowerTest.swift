//
//  Day17_PowerTest.swift
//  HackerRank_with_TDDTests
//
//  Created by Michael Alexander Rodriguez Urbina on 17/01/22.
//

import XCTest
import Foundation

class Day17_PowerTest: XCTestCase {

    func test_whenUserProvidesANegativeBase_throwError () throws {
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
    
    func test_whenUserProvidesANegativeExponent_throwError () throws {
        //given
        let base = 2
        let exponent = -3
        
        do {
            //when
            let _ = try Calculator().power(n: base, p: exponent)
            
        } catch (let error) {
            //then
            XCTAssertEqual(error as! RangeError, RangeError.NotInRange("n and p should be non-negative"))
        }
    }
    
    func test_whenUserProvidesPositivesIntegers_returnPowerResult () throws {
            //given
            let base = 3
            let exponent = 5
            let expected = 243
            
            do {
                //when
                let sut = Calculator()
                let result = try sut.power(n: base, p: exponent)
                //then
                XCTAssertEqual(result, expected)
                
            } catch  {
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
    func power(n: Int, p: Int) throws -> Int {
        // Add your code here
        guard !(n < 0 || p < 0) else { throw RangeError.NotInRange("n and p should be non-negative")}
        let result = pow(Double(n), Double(p))
        return Int(result)
    } // End of function power
} // End of class Calculator
