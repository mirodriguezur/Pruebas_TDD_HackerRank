//
//  day3HackerRank.swift
//  day2HackerRank
//
//  Created by Michael Alexander Rodriguez Urbina on 8/11/21.
//

import Foundation

public class ThirdDay {
    var tip: Double = 0.0
    var tax: Double = 0.0
//    var totalCost: Int = 0
    
    func solve(meal_cost: Double, tip_percent: Int, tax_percent: Int)->Int{
        let tip = meal_cost*(Double(tip_percent)/100)
        let tax = meal_cost*(Double(tax_percent)/100)
        return Int(round(meal_cost + tip + tax))
    }
    
}
