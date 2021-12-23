//
//  Day9RecursionTest.swift
//  TDDHackerRankTests
//
//  Created by Michael Alexander Rodriguez Urbina on 19/11/21.
//

import XCTest
@testable import TDDHackerRank

class Day9RecursiveFactorialTest: XCTestCase {
    /*
     domain 2 <= n <= 12
     
     */
    
    func testFactorial_whenInputIsBelowOne_returnsOne() throws {
        let input = (-5...0)
        let expected = Array(repeating: 1, count: input.count)
        var result = Array(repeating: 0, count: input.count)
        do {
            //when
            result = try input.map{try factorial($0) }
        } catch {
            XCTFail("It is a valid input number.it shouln't throw error")
        }
        
        //then
        XCTAssertEqual(result, expected)
    }
    
    func testFactorial_whenInputIsOne_returnsOne() throws {
        let input = 1
        let expected = 1
        var result = 0
        
        do {
            //when
            result = try factorial(input)
        } catch {
            XCTFail("It is a valid input number.it shouln't throw error")
        }
        //then
        XCTAssertEqual(result, expected)
    }
    
    func testFactorial_whenInputIsAboveMaximunValuePermited_throwError() throws {
        // give
        let input = 13
        
        do {
            //when
            _ = try factorial(input)
        } catch (let error) {
            //then
            XCTAssertEqual(error as! recursiveFactorialError, recursiveFactorialError.valueAbovePermited)
        }
    }
        
        func test_whenUserProvidesANumber_InsideOfTheValidRange_returnFactorial() throws {
            //give
            let input = (2...5)
            let expected = [2,6,24,120]
            var result = Array(repeating: 0, count: input.count)
            do{
                //when
                result = try input.map{try factorial($0) }
            } catch {
                //then
                XCTFail("It is a valid input number.it shouln't throw error")
            }
            XCTAssertEqual(result, expected)
        }
}
