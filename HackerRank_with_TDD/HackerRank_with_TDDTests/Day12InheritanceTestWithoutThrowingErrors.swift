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
        let sut = Estudiante(firstName: firstName, lastName: lastName, id: idNumber, scores: scores)
        // then
        let result = sut.calculate()
        
        XCTAssertEqual(result, expected)
    }

}

class Persona {
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

class Estudiante: Persona {
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
        else {
            return "P"
        }
    }

}// End of class Student
