//
//  Day7InvertingArrayOfIntegers.swift
//  HackerRank_with_TDDTests
//
//  Created by Michael Alexander Rodriguez Urbina on 25/11/21.
//

import XCTest

class Day7InvertingArrayOfIntegers: XCTestCase {
    func test_invertArray_withEmptyInputArray_throwsError() throws {
        //given
        
        do {
            //when
            _ = try invertArray([])
        } catch (let error) {
            //then
            //            XCTAssertNotNil(error)
            XCTAssertEqual(error as! invertingArrayErrors, invertingArrayErrors.emptyInput)
        }
    }
    
    func test_invertArray_WhenInputArraySizeIsGreaterThanValidSize_thowsError() throws {
        //given
        let invalidArraySize = 1001
        let inputInvalidArray = Array(repeating: Int(), count: invalidArraySize)
        
        do {
            //when
            try invertArray(inputInvalidArray)
        } catch (let error) {
            //then
            XCTAssertEqual(error as! invertingArrayErrors, invertingArrayErrors.inputArrayExcedesValidSize)
        }
    }
    
    func test_invertArray_WhenInputArrayContainsOneInvalidValueBellowPermited_thowsError() throws {
        //given
        let inputArray = [-1]
        
        do {
            //when
            try invertArray(inputArray)
        } catch (let error) {
            //then
            XCTAssertEqual(error as! invertingArrayErrors, invertingArrayErrors.arrayContainsValueBellowPermited)
        }
    }
    
    func test_invertArray_WhenInputArrayContainsOneValueBellowPermited_thowsError() throws {
        //given
        let inputArray = [-1]
        
        do {
            //when
            try invertArray(inputArray)
        } catch (let error) {
            //then
            XCTAssertEqual(error as! invertingArrayErrors, invertingArrayErrors.arrayContainsValueBellowPermited)
        }
    }
    
    func test_invertArray_WhenInputArrayContainsOneValueAbovePermited_thowsError() throws {
        //given
        let inputArray = [10001]
        
        do {
            //when
            try invertArray(inputArray)
        } catch (let error) {
            //then
            XCTAssertEqual(error as! invertingArrayErrors, invertingArrayErrors.arrayContainsValueAbovePermited)
        }
    }
    
}

// Production Code ------------------------------------------------

enum invertingArrayErrors: Error {
    case inputArrayExcedesValidSize
    case emptyInput
    case arrayContainsValueBellowPermited
    case arrayContainsValueAbovePermited
}

func invertArray(_ array: Array<Int>) throws {
    guard !array.isEmpty else {
        throw invertingArrayErrors.emptyInput
    }
    guard array.count < 1000 else {
        throw invertingArrayErrors.inputArrayExcedesValidSize
    }
    guard array.first(where: { $0 < 0 }) == nil else {
        throw invertingArrayErrors.arrayContainsValueBellowPermited
    }
    guard array.first(where: { $0 > 10000 }) == nil else {
        throw invertingArrayErrors.arrayContainsValueAbovePermited
    }
    throw NSError(domain: "", code: 0)
    //    return array
    
}




