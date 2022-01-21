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


}

class Solution {
    
    var stack: [Character]? = []
    
    func pushCharacter(ch: Character){
        stack?.append(ch)
    }
    
    
}

