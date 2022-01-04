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
            let _ = try Student(firstName: firstName, lastName: "Ruiz", id: 1234567)
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
            let _ = try Student(firstName: firstName, lastName: "Ruiz", id: 1234567)
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
            let _ = try Student(firstName: "Michael", lastName: lastName, id: 1234567)
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
            let _ = try Student(firstName: "Michael", lastName: lastName, id: 1234567)
        } catch (let error) {
            //then
            XCTAssertEqual(error as! objectPersonError, objectPersonError.errorLastName)
        }
    }
    
    func test_whenUserProvidesLastALengthOfIDNumberDifferentToSeven_throwError() throws {
        //given
        let idNumber = 123
        do {
            //when
            let _ = try Student(firstName: "Michael", lastName: "Rodriguez", id: idNumber)
        } catch (let error) {
            //then
            XCTAssertEqual(error as! objectPersonError, objectPersonError.errorIdNumber)
        }
    }
}

enum objectPersonError:Error {
    case errorFirstName
    case errorLastName
    case errorIdNumber
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
        guard !(lastName.isEmpty || lastName.count > 10) else { throw objectPersonError.errorLastName }
        guard !(id > 7 || id < 7) else {throw objectPersonError.errorIdNumber}
        try super.init(firstName: firstName, lastName: lastName, id: id)
    }
    
    func calculate() -> Character {
         return "a"
     }
}

