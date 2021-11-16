//
//  Day4ClassVsInstance.swift
//  TDDHackerRank
//
//  Created by Michael Alexander Rodriguez Urbina on 11/11/21.
//

import Foundation

class Person {
    
    private(set) var age: Int = 0
    
    public init(initialAge: Int){
        if initialAge<0{
            print("Age is not valid, setting age to 0")
            age = 0
        }
        else {
            age = initialAge
        }
    }
    
    public func amIOld()->String{
        if age<13 {
            return "You are young."
        }
        else if age>=13 && age<=18{
            return "You are teeneger."
        }
        else{
            return "You are old."
        }
    }
    
    public func yearPasses(){
        age += 1
    }
    
}
