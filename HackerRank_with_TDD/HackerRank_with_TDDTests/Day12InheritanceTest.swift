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
        let name = ""
        do {
            //when
            let _ = try Student(firstName: name, lastName: "prueba", id: 1234567)
        } catch (let error) {
            //then
            XCTAssertEqual(error as! objectPersonError, objectPersonError.errorFirstName)
        }
        
    }
    
    func test_whenUserProvidesFirstNameWithMoreThanOrEqualTenLetters_throwError() throws {
        //given
        let name = "Guillermina"
        do {
            //when
            let _ = try Student(firstName: name, lastName: "prueba", id: 1234567)
        } catch (let error) {
            //then
            XCTAssertEqual(error as! objectPersonError, objectPersonError.errorFirstName)
        }
    }
}

enum objectPersonError:Error {
    case errorFirstName
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
    
    //var testScores: [Int] = []
    
    override init(firstName: String, lastName: String, id: Int) throws {
        guard !(firstName.isEmpty || firstName.count > 10 ) else { throw objectPersonError.errorFirstName }
        try super.init(firstName: firstName, lastName: lastName, id: id)
    }
    
    func calculate() -> Character {
         return "a"
     }
}

