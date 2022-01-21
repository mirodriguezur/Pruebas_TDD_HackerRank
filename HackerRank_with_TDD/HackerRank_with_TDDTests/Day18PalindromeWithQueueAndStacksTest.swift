//
//  Day8PalindromeWithQueueAndStacksTest.swift
//  HackerRank_with_TDDTests
//
//  Created by Michael Alexander Rodriguez Urbina on 20/01/22.
//

import XCTest

class Day18PalindromeWithQueueAndStacksTest: XCTestCase {
    
    
    func test_whenUserPovidesACharacter_pushesCharacterOntoStack() {
        // given
        let character:Character = "a"
        // when
        let sut = Solution ()
        sut.pushCharacter(ch: character)
        //then
        XCTAssertTrue((sut.stack?.isEmpty) != nil)
        XCTAssertEqual(sut.stack?.first, character)
    }
    
    func test_whenUserPovidesACharacter_enqueueCharacterOntoQueue() {
        // given
        let character:Character = "a"
        // when
        let sut = Solution ()
        sut.enqueueCharacter(ch: character)
        XCTAssertTrue((sut.queue?.isEmpty) != nil)
        XCTAssertEqual(sut.queue?.first, character)
    }
    
    func test_whenCallTheMethodpopCharacter_popAndReturnCharacterAtTheTopOfTheStack() {
        //given
        let inputString = "racecar"
        let sut = Solution()
        let expectedLastCharacter:Character = "r"
        let expectedStack = "raceca"
        for character in inputString {
            sut.pushCharacter(ch: character)
        }
        
        //when
        let result = sut.popCharacter()
        //Then
        XCTAssertEqual(expectedLastCharacter, result)
        XCTAssertEqual(String(sut.stack!),expectedStack)
    }
    
    func test_whenCallTheMethoddequeueCharacter_dequeuesAndReturnTheFirstCharacter() {
        let character:Character = "a"
        let sut = Solution ()
        sut.enqueueCharacter(ch: character)
        let expected:Character = "a"
    
        //when
        let result = sut.dequeueCharacter()
        XCTAssertEqual(expected, result)
    }
    
}

class Solution {
    
    var stack: [Character]? = []
    var queue: [Character]? = []
    
    func pushCharacter(ch: Character){
        stack?.append(ch)
    }
    
    func enqueueCharacter(ch: Character){
           queue?.append(ch)
       }
    
    func popCharacter() -> Character? {
        let lastCharacter = stack?.last ?? nil
        stack?.removeLast()
        return lastCharacter
    }
    
    func dequeueCharacter() -> Character? {
        let firstCharacter = queue?.first ?? nil
        queue?.removeFirst()
        return firstCharacter
    }
    
}

