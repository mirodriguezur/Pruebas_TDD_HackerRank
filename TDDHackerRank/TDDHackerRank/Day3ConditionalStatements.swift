//
//  Day3ConditionalStatements.swift
//  TDDHackerRank
//
//  Created by Michael Alexander Rodriguez Urbina on 10/11/21.
//

import Foundation

public class ConditionalStatements{
    
    public init(){
        
    }
    
    public func conditionalsNumbersOddOrEven(N: Int) -> String{
        if N%2 != 0 && N<=100 && N>=1 {
            return "Weird"
        }
        else if N>=2 && N<=5{
            return "Not Weird"
        }
        else if N>=6 && N<=20{
            return "Weird"
        }
        else if N>=21 && N<=100{
            return "Not Weird"
        }
        else {
            return "Invalid number"
        }
    }
}
