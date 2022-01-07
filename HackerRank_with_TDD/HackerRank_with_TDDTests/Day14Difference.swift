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
            _ = try Difference(matriz: [])
        } catch (let error) {
            //then
            XCTAssertEqual(error as! differenceErrors, differenceErrors.emptyInput)
        }
    }

}

enum differenceErrors: Error {
    case emptyInput
}

class Difference {
    private var elements = [Int]()
    var maximunDifference: Int
    
    init (matriz: Array<Int>) throws {
        guard !(matriz.isEmpty) else {throw differenceErrors.emptyInput}
        elements = matriz
        maximunDifference = 0
    }
    
}

