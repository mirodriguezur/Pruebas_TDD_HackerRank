//
//  Day6LetsReviewTest.swift
//  TDDHackerRankTests
//
//  Created by Michael Alexander Rodriguez Urbina on 15/11/21.
//

import XCTest
import TDDHackerRank

class Day6LetsReviewTest: XCTestCase {

    func test_whenUserGivesString_returnCharOddIndex() {
        //given
        let string = "Hacker"
        let sut = Day6Strings(word: string)
        let expect = "Hce"
        // when
        
        let result = sut.oddChar()
        
        
        XCTAssertEqual(expect, result)
    }
    
    func test_whenUserGivesString_returnCharEvenIndex() {
        //given
        let string = "Hacker"
        let sut = Day6Strings(word: string)
        let expect = "akr"
        // when
        
        let result = sut.evenChar()
        
        
        XCTAssertEqual(expect, result)
    }
    //Prueba general
    
    func test_whenUserGivesString_returnEvenStringAndOddString() {
        //given
        let string = "Hacker"
        let sut = Day6Strings(word: string)
        let expect = "Hce akr"
        // when
        
        let result = sut.separateString()
        
        
        XCTAssertEqual(expect, result)
    }

}
