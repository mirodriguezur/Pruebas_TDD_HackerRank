//
//  Day4ClassVsInstanceTest.swift
//  TDDHackerRankTests
//
//  Created by Michael Alexander Rodriguez Urbina on 11/11/21.
//

import XCTest
import TDDHackerRank

class Day4ClassVsInstanceTest: XCTestCase {

    func test_whenUserGivesNegativeAge_ageIsSetZero(){
        let ageGiven = -12
        let ageExpect = 0
        
        let sut = Person(initialAge: ageGiven)
        
        //sut.age = 9
        XCTAssertEqual(sut.age, ageExpect)
    }
    func test_whenUserGivesAgeUnder13_printYouAreYoung(){
        let ageGiven = 10
        let Expect = "You are young."
        let sut = Person(initialAge: ageGiven)
        
        let result = sut.amIOld()
        
        XCTAssertEqual(result, Expect)
    }
    func test_whenUserGivesAgeBetween13and18_printYouAreTeeneger(){
        let ageGiven = 14
        let Expect = "You are teeneger."
        let sut = Person(initialAge: ageGiven)
        
        let result = sut.amIOld()
        
        XCTAssertEqual(result, Expect)
    }
    func test_whenUserGivesAgeOver18_printYouAreOld(){
        let ageGiven = 20
        let Expect = "You are old."
        let sut = Person(initialAge: ageGiven)
        
        let result = sut.amIOld()
        
        XCTAssertEqual(result, Expect)
    }
    func test_whenUserGivesAge_ageIncreases(){
        let ageGiven = 12
        let Expect = ageGiven+1
        let sut = Person(initialAge: ageGiven)
        
        sut.yearPasses()
        
        XCTAssertEqual(sut.age, Expect)
    }
    
    
}
