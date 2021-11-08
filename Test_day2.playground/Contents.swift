import UIKit
import XCTest

class SecondDay<Element> {
    var a: Element
    var b: Double?
    var resultadoInteger: Element?
    var resultadoDouble: Double = 0.0
    
    init(a: Element, b: Double? = nil, resultadoInteger: Element? = nil){
        self.a = a
        self.b = b
        self.resultadoInteger = resultadoInteger
    }
    
    func sumInteger(){
        resultadoInteger = a as! Int + 4 as? Element
    }
    
    func sumResultdoDouble(_ vard: Element){
        resultadoDouble = vard as! Double + 4.0
    }
}

class SeconDayTest: XCTestCase {

    func testNormal(){
        let i = 4
        let sum = 12 + i
        
        XCTAssertEqual(16, sum)
    }
    func test_SumIntegers(){
        //let g: Int
        let i = 4
        let sum = 12 + i
        
        XCTAssertTrue(sum is Int)
    }
    func test_SumIntegersday2(){
        let num = 12.0
        
        //let sut = SecondDay(a: entero)
        let sut = SecondDay<Any>(a: num)
        
        sut.sumInteger()
        
        XCTAssertTrue(sut.resultadoInteger is Int)
    }
}

SeconDayTest.defaultTestSuite.run()
