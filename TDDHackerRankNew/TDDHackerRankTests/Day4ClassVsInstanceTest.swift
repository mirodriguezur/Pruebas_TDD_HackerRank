//
//  Day4ClassVsInstanceTest.swift
//  TDDHackerRankTests
//
//  Created by Michael Alexander Rodriguez Urbina on 11/11/21.
//

import XCTest
@testable import TDDHackerRank

class Day4ClassVsInstanceTest: XCTestCase {

    func test_whenUserGivesNegativeAge_ageIsSetZero(){
        let ageGiven = -12
        let ageExpect = 0
        
        let sut = Person(initialAge: ageGiven)
        
        //sut.age = 9
        XCTAssertEqual(sut.age, ageExpect)
    }
    
    func test_whenUserProvidesAnAgeof10WhichIsUnder13_printYouAreYoung(){
        let ageGiven = 10
        let Expect = "You are young."
        let sut = Person(initialAge: ageGiven)
        
        let result = sut.amIOld()
        
        XCTAssertEqual(result, Expect)
    }
    
    func test_whenWeHave_ARange_AsImputOfAgesUnder13_printYouAreYoung(){
        let agesUnder13 = stride(from:1, through: 12, by: 1)
    
        let expectedValue = "You are young."
        let people = agesUnder13.map { Person(initialAge: $0) }
        
        let result = people.map{ $0.amIOld()}
        let older = result.first { $0 != expectedValue }
        
        XCTAssertNil(older)
    }
    
    func test_whenUserGivesAgeBetween13and18_printYouAreTeeneger(){
        let ageGiven = 14
        let Expect = "You are teeneger."
        let sut = Person(initialAge: ageGiven)
        
        let result = sut.amIOld()
        
        XCTAssertEqual(result, Expect)
    }
    
    func test_whenWeHave_ARange_AsImputOfAgesBetween13and18_printYouAreTeeneger(){
        let agesBetween13and18 = stride(from:13, through: 18, by: 1)
    
        let expectedValue = "You are teeneger."
        let people = agesBetween13and18.map { Person(initialAge: $0) }
        
        let result = people.map{ $0.amIOld()}
        let older = result.first { $0 != expectedValue }
        
        XCTAssertNil(older)
    }
    
    func test_whenUserGivesAgeOver18_printYouAreOld(){
        let ageGiven = 20
        let Expect = "You are old."
        let sut = Person(initialAge: ageGiven)
        
        let result = sut.amIOld()
        
        XCTAssertEqual(result, Expect)
    }
    
    func test_whenWeHave_ARange_AsImputOfAgesBetween13and18_printYouAreOld(){
        let agesOver18 = stride(from:19, through: 99, by: 1)
    
        let expectedValue = "You are old."
        let people = agesOver18.map { Person(initialAge: $0) }
        
        let result = people.map{ $0.amIOld()}
        let older = result.first { $0 != expectedValue }
        
        XCTAssertNil(older)
    }
    
    func test_whenUserGivesAge_ageIncreases(){
        let ageGiven = 12
        let expected = ageGiven + 1
        let sut = Person(initialAge: ageGiven)
        
        //when
        sut.yearPasses()
        
        //then
        XCTAssertEqual(sut.age, expected)
    }
    
    
}
