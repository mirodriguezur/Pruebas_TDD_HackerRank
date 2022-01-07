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
    func test_WhenInputArraySizeIsGreaterThanValidSize_thowsError() throws {
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
    
    func test_whenArrayContainsElementsBelowTheAllowedRange_throwsError() throws {
        //given
        let array = [1, 2, 0, 3]
        
        do {
            //when
            _ = try Difference(array: array)
        } catch (let error) {
            //then
            XCTAssertEqual(error as! differenceErrors, differenceErrors.arrayContainsValueBelowPermited)
        }
    }
    
    func test_whenArrayContainsElementsAboveTheAllowedRange_throwsError() throws {
        //given
        let array = [1, 2, 2, 101]
        
        do {
            //when
            _ = try Difference(array: array)
        } catch (let error) {
            //then
            XCTAssertEqual(error as! differenceErrors, differenceErrors.arrayContainsValueAbovePermited)
        }
    }
    
    func test_whenUsersProvidesAValidArray_ComputeDifference() throws {
        //given
        let array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
        let expected = 9
        
        do {
            //when
            let sut = try Difference(array: array)
            sut.computeDifference()
            let result = sut.maximunDifference
            //Then
            XCTAssertEqual(expected, result)
        } catch {
            XCTFail("It should not enter this block.")
        }
    }
}

enum differenceErrors: Error {
    case emptyInput
    case inputArrayExcedesValidSize
    case arrayContainsValueBelowPermited
    case arrayContainsValueAbovePermited
}

class Difference {
    private var elements = [Int]()
    var maximunDifference: Int
    
    init (array: Array<Int>) throws {
        guard !(array.isEmpty) else {throw differenceErrors.emptyInput}
        guard !(array.count > 10) else {throw differenceErrors.inputArrayExcedesValidSize}
        guard array.first(where: { $0 < 1 }) == nil else {throw differenceErrors.arrayContainsValueBelowPermited}
        guard array.first(where: { $0 > 100 }) == nil else {throw differenceErrors.arrayContainsValueAbovePermited}
        elements = array
        maximunDifference = 0
    }
    
    func computeDifference() {
        maximunDifference = ((elements.max() ?? 0) - (elements.min() ?? 0) )
    }
    
}

