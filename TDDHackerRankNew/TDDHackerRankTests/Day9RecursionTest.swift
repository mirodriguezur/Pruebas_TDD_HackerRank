//
//  Day9RecursionTest.swift
//  TDDHackerRankTests
//
//  Created by Michael Alexander Rodriguez Urbina on 19/11/21.
//

import XCTest
@testable import TDDHackerRank

class Day9RecursiveFactorialTest: XCTestCase {

    func test_whenUserProvidesOneInvalidValueBellowPermited_throwsError() throws {
        //give
        let inputNumber = 0
        
        do {
            //when
            _ = try recursiveFactorial(number: inputNumber)
        } catch (let error) {
            //then
            XCTAssertEqual(error as! recursiveFactorialError, recursiveFactorialError.valueBellowPermited)
        }

    }
    
    func test_whenUserProivdesOneInvalidValueAbovePermited_throwsError() throws {
        // give
        let inputNumber = 13
        
        do {
            //when
            _ = try recursiveFactorial(number: inputNumber)
        } catch (let error) {
            //then
            XCTAssertEqual(error as!recursiveFactorialError, recursiveFactorialError.valueAbovePermited)
        }
    }
    
//    func test_whenUserProvidesANumber_InsideOfTheValidRange_returnFactorial() throws {
//        //give
//        let inputNumber = 5
//        let expectValue = 120
//        var result = 0
//        do{
//            //when
//            result = try recursiveFactorial(number: inputNumber)
//        } catch (let error) {
//            //then
//            print (error)
//            XCTFail("It is a valid input number.")
//        }
//        XCTAssertEqual(result, expectValue)
//    }
    func test_whenUserProvidesOne_returnOne() throws {
        let inputNumber = 1
        let expectValue = 1
        var result = 0
        
        do{
            //when
            result = try recursiveFactorial(number: inputNumber)
        } catch {
            //then
            XCTFail("It is a valid input number.")
        }
        XCTAssertEqual(result, expectValue)
    }
}
