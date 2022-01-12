//
//  Day12InheritanceTestWithoutThrowingErrors.swift
//  HackerRank_with_TDDTests
//
//  Created by Michael Alexander Rodriguez Urbina on 12/01/22.
//

import XCTest

class Day12InheritanceTestWithoutThrowingErrors: XCTestCase {

    func test_whenUserProvidesScores_ifTheAverageOfTheGradesIsBetween90And100_returnTheCharacterO() {
        //given
        let firstName = "Heraldo"
        let lastName = "Memeli"
        let idNumber = 8135627
        let scores = [100, 80]
        let expected:Character = "O"
        //when
        let sut = Student(firstName: firstName, lastName: lastName, id: idNumber, scores: scores)
        // then
        let result = sut.calculate()
        XCTAssertEqual(result, expected)
    }
    
    func test_whenUserProvidesScores_ifTheAverageOfTheGradesIsBetween80And90_returnTheCharacterE() {
        //given
        let firstName = "Heraldo"
        let lastName = "Memeli"
        let idNumber = 8135627
        let scores = [90, 80]
        let expected:Character = "E"
        //when
        let sut = Student(firstName: firstName, lastName: lastName, id: idNumber, scores: scores)
        // then
        let result = sut.calculate()
        XCTAssertEqual(result, expected)
    }
    
    func test_whenUserProvidesScores_ifTheAverageOfTheGradesIsBetween70And80_returnTheCharacterA() {
        //given
        let firstName = "Heraldo"
        let lastName = "Memeli"
        let idNumber = 8135627
        let scores = [80, 70]
        let expected:Character = "A"
        //when
        let sut = Student(firstName: firstName, lastName: lastName, id: idNumber, scores: scores)
        // then
        let result = sut.calculate()
        XCTAssertEqual(result, expected)
    }

}

class Person {
    private let firstName: String
    private let lastName: String
    private let id: Int

    // Initializer
    init(firstName: String, lastName: String, id: Int) {
        self.firstName = firstName
        self.lastName = lastName
        self.id = id
    }

    // Print person data
    func printPerson() {
        print("Name: \(lastName), \(firstName)")
        print("ID: \(id)")
    }
} // End of class Person

class Student: Person {
    var testScores: [Int]
    
    init(firstName: String, lastName: String, id: Int, scores: [Int]) {
        self.testScores = scores
        super.init(firstName: firstName, lastName: lastName, id: id)
    }

    func calculate() -> Character {
        let sum = testScores.reduce(0,+)
        let average = sum / testScores.count
        
        if (average >= 90 && average <= 100) {
            return "O"
        }
        else if (average >= 80 && average < 90) {
            return "E"
        }
        else if (average >= 70 && average < 80) {
            return "A"
        }
        else {
            return "P"
        }
    }

}// End of class Student
