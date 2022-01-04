//
//  Day12InheritanceTest.swift
//  HackerRank_with_TDDTests
//
//  Created by Michael Alexander Rodriguez Urbina on 4/01/22.
//

import XCTest

class Day12InheritanceTest: XCTestCase {

    func test_whenUserProvidesEmptyFirstName_throwError() throws {
        //given
        let firstName = ""
        do {
            //when
            let _ = try Student(firstName: firstName, lastName: "Ruiz", id: 1234567, scores: [100, 80])
        } catch (let error) {
            //then
            XCTAssertEqual(error as! objectPersonError, objectPersonError.errorFirstName)
        }
        
    }
    
    func test_whenUserProvidesFirstNameWithMoreThanOrEqualTenLetters_throwError() throws {
        //given
        let firstName = "Guillermina"
        do {
            //when
            let _ = try Student(firstName: firstName, lastName: "Ruiz", id: 1234567, scores: [100, 80])
        } catch (let error) {
            //then
            XCTAssertEqual(error as! objectPersonError, objectPersonError.errorFirstName)
        }
    }
    
    func test_whenUserProvidesEmptyLastName_throwError() throws {
        //given
        let lastName = ""
        do {
            //when
            let _ = try Student(firstName: "Michael", lastName: lastName, id: 1234567, scores: [100, 80])
        } catch (let error) {
            //then
            XCTAssertEqual(error as! objectPersonError, objectPersonError.errorLastName)
        }
    }
    
    func test_whenUserProvidesLastNameWithMoreThanOrEqualTenLetters_throwError() throws {
        //given
        let lastName = "Compagnucci"
        do {
            //when
            let _ = try Student(firstName: "Michael", lastName: lastName, id: 1234567, scores: [100, 80])
        } catch (let error) {
            //then
            XCTAssertEqual(error as! objectPersonError, objectPersonError.errorLastName)
        }
    }
    
    func test_whenUserProvidesLastALengthOfIDNumberDifferentToSeven_throwError() throws {
        //given
        let idNumber = 999
        do {
            //when
            let _ = try Student(firstName: "Michael", lastName: "Rodriguez", id: idNumber, scores: [100, 80])
        } catch (let error) {
            //then
            XCTAssertEqual(error as! objectPersonError, objectPersonError.errorIdNumber)
        }
    }
    // Domain score ->  0 <= score <= 100
    func test_whenUserProvidesAnElementOfScoreDifferentFromRange_throwError() throws {
        //given
        let scores = [101, 0]
        do {
            //when
            let _ = try Student(firstName: "Michael", lastName: "Rodriguez", id: 1234567, scores: scores)
        } catch (let error) {
            //then
            XCTAssertEqual(error as! objectPersonError, objectPersonError.errorRangeScore)
        }
    }
    
    func test_whenUserProvidesAValidData_returnScoreLetter() throws {
        //given
        let firstName = "Heraldo"
        let lastName = "Memelli"
        let idNumber = 8135627
        let scores = [82, 34, 98]
        let Expected = Character("A")
        
        do {
            //when
            let sut = try Student(firstName: firstName, lastName: lastName, id: idNumber, scores: scores)
            
            XCTAssertEqual(sut.calculate(),Expected)
        } catch {
            XCTFail("It should not enter this block.")
        }
    }
    
}

enum objectPersonError:Error {
    case errorFirstName
    case errorLastName
    case errorIdNumber
    case errorRangeScore
}

// Class Person
class Person {
    private let firstName: String
    private let lastName: String
    private let id: Int

    // Initializer
    init(firstName: String, lastName: String, id: Int) throws {
        self.firstName = firstName
        self.lastName = lastName
        self.id = id
    }

    // Print person data
    func printPerson() {
        print("Name: \(lastName), \(firstName)")
        print("ID: \(id)")
    }
}

class Student: Person {
    
    var testScores: [Int]
    
    init(firstName: String, lastName: String, id: Int, scores: [Int]) throws {
        let idString = String(id)
        guard !(firstName.isEmpty || firstName.count > 10 ) else { throw objectPersonError.errorFirstName }
        guard !(lastName.isEmpty || lastName.count > 10) else { throw objectPersonError.errorLastName }
        guard !(idString.count != 7 ) else {throw objectPersonError.errorIdNumber}
        guard !(scores.first! > 100 || scores.first! < 0 ) else {throw objectPersonError.errorRangeScore}
        self.testScores = scores
        try super.init(firstName: firstName, lastName: lastName, id: id)
    }
    
    func calculate() -> Character {
        let sum = testScores.reduce(0,+)
        let average = sum / testScores.count
        
        if average < 40 {
            return "T"
        } else if (average >= 40 && average < 55) {
            return "D"
        } else if (average >= 55 && average < 70) {
            return "P"
        } else if (average >= 70 && average < 80) {
            return "A"
        } else if (average >= 80 && average < 90) {
            return "E"
        } else {
            return "O"
        }
    }

}
