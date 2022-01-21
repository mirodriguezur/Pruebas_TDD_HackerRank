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
    
}

