//
//  day2HackerRankTest.swift
//  day2HackerRank
//
//  Created by Michael Alexander Rodriguez Urbina on 4/11/21.
//

import Foundation

public class SecondDay{
    let constInteger:Int = 4
    let constDouble:Double = 4.0
    let constString:String = "HackerRank "
    var resultInteger:Int = 0
    var resultDouble:Double = 0.0
    var resultString:String = " "
    //var resultAny: Any
    
    //init(resultAny: Any){
    //    self.resultAny = resultAny
    //}
    
    func sumInteger(_ num: Int) {
        resultInteger = constInteger + num
    }
    
    func sumDouble(_ num: Double){
        resultDouble = constDouble + num
    }
    
    func concatenate(with string: String){
        resultString = constString + string
    }
    
}
