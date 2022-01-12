//
//  Day12InheritanceTest.swift
//  HackerRank_with_TDDTests
//
//  Created by Michael Alexander Rodriguez Urbina on 4/01/22.
//

import XCTest

class Day12InheritanceTestWithThrowingErrors: XCTestCase {

    func test_whenUserProvidesEmptyFirstName_throwError() throws {
        //given
        let firstName = ""
        do {
            //when
            let _ = try Estudiante(firstName: firstName, lastName: "Ruiz", id: 1234567, scores: [100, 80])
        } catch (let error) {
            //then
            XCTAssertEqual(error as! objectPersonError, objectPersonError.invalidFirstName)
        }
        
    }
    
    func test_whenUserProvidesFirstNameWithMoreThanOrEqualTenLetters_throwError() throws {
        //given
        let firstName = "Guillermina"
        do {
            //when
            let _ = try Estudiante(firstName: firstName, lastName: "Ruiz", id: 1234567, scores: [100, 80])
        } catch (let error) {
            //then
            XCTAssertEqual(error as! objectPersonError, objectPersonError.invalidFirstName)
        }
    }
    
    func test_whenUserProvidesEmptyLastName_throwError() throws {
        //given
        let lastName = ""
        do {
            //when
            let _ = try Estudiante(firstName: "Michael", lastName: lastName, id: 1234567, scores: [100, 80])
        } catch (let error) {
            //then
            XCTAssertEqual(error as! objectPersonError, objectPersonError.invalidLastName)
        }
    }
    
    func test_whenUserProvidesLastNameWithMoreThanOrEqualTenLetters_throwError() throws {
        //given
        let lastName = "Compagnucci"
        do {
            //when
            let _ = try Estudiante(firstName: "Michael", lastName: lastName, id: 1234567, scores: [100, 80])
        } catch (let error) {
            //then
            XCTAssertEqual(error as! objectPersonError, objectPersonError.invalidLastName)
        }
    }
    
    func test_whenUserProvidesLastALengthOfIDNumberDifferentToSeven_throwError() throws {
        //given
        let idNumber = 999
        do {
            //when
            let _ = try Estudiante(firstName: "Michael", lastName: "Rodriguez", id: idNumber, scores: [100, 80])
        } catch (let error) {
            //then
            XCTAssertEqual(error as! objectPersonError, objectPersonError.invalidIdNumber)
        }
    }
    
    func test_whenUserProvidesAnEmptyArrayScore_throwError() throws {
        //given

        do {
            //when
            let _ = try Estudiante(firstName: "Michael", lastName: "Rodriguez", id: 1234567, scores: [])
        } catch (let error) {
            //then
            XCTAssertEqual(error as! objectPersonError, objectPersonError.emptyScoreInput)
        }
    }
    
    // Domain score ->  0 <= score <= 100
    func test_whenUserProvidesAnElementOfScoreDifferentFromRange_throwError() throws {
        //given
        let scores = [101, 45]
        do {
            //when
            let _ = try Estudiante(firstName: "Michael", lastName: "Rodriguez", id: 1234567, scores: scores)
        } catch (let error) {
            //then
            XCTAssertEqual(error as! objectPersonError, objectPersonError.wrongScoreRange)
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
            let sut = try Estudiante(firstName: firstName, lastName: lastName, id: idNumber, scores: scores)
            
            XCTAssertEqual(sut.calculate(),Expected)
        } catch {
            XCTFail("It should not enter this block.")
        }
    }
    
}

enum objectPersonError:Error {
    case invalidFirstName
    case invalidLastName
    case invalidIdNumber
    case emptyScoreInput
    case wrongScoreRange
}

// Class Person
class Persona {
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

class Estudiante: Persona {
    
    var testScores: [Int]
    
    init(firstName: String, lastName: String, id: Int, scores: [Int]) throws {
        let idString = String(id)
        guard !(firstName.isEmpty || firstName.count > 10 ) else { throw objectPersonError.invalidFirstName }
        guard !(lastName.isEmpty || lastName.count > 10) else { throw objectPersonError.invalidLastName }
        guard !(idString.count != 7 ) else {throw objectPersonError.invalidIdNumber}
        guard !(scores.isEmpty) else {throw objectPersonError.emptyScoreInput}
        guard !(scores.first! > 100 || scores.first! < 0 ) else {throw objectPersonError.wrongScoreRange}
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


