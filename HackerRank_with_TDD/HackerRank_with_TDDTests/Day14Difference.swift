//
//  Day14Difference.swift
//  HackerRank_with_TDDTests
//
//  Created by Michael Alexander Rodriguez Urbina on 7/01/22.
//

import XCTest

class Day14Difference: XCTestCase {
    
    func test_whenUsersProvidesAnEmptyArray_throwsError() throws {
        //given
        
        do {
            // when
            _ = try Difference(array: [])
        } catch (let error) {
            //then
            XCTAssertEqual(error as! differenceErrors, differenceErrors.emptyInput)
        }
    }
    
    // Valid Size:  1 <= sizeArray <=10
    func test_invertArray_WhenInputArraySizeIsGreaterThanValidSize_thowsError() throws {
        //given
        let invalidArraySize = 11
        let inputInvalidArray = Array(repeating: Int(), count: invalidArraySize)
        
        do {
            //when
            _ = try Difference(array: inputInvalidArray)
        } catch (let error) {
            //then
            XCTAssertEqual(error as! differenceErrors, differenceErrors.inputArrayExcedesValidSize)
        }
    }


}

enum differenceErrors: Error {
    case emptyInput
    case inputArrayExcedesValidSize
}

class Difference {
    private var elements = [Int]()
    var maximunDifference: Int
    
    init (array: Array<Int>) throws {
        guard !(array.isEmpty) else {throw differenceErrors.emptyInput}
        guard !(array.count > 10) else {throw differenceErrors.inputArrayExcedesValidSize}
        elements = array
        maximunDifference = 0
    }
    
}

