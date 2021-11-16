//
//  day3HackerRank.swift
//  day2HackerRank
//
//  Created by Michael Alexander Rodriguez Urbina on 8/11/21.
//

import Foundation

public class MealCostCalulator {
    
    func solve(mealCost: Double, tipPercent: Int, taxPercent: Int) -> Int {
        let tip = tipCalculator(mealCost, tipPercent)
        let tax = taxCalculator(mealCost, taxPercent)
        return Int(round(mealCost + tip + tax))
    }
    
	func tipCalculator(_ mealCost: Double, _ tipPercent: Int) -> Double {
		return round(mealCost*(Double(tipPercent)/100) * 10) / 10
	}
	
	func taxCalculator(_ mealCost: Double, _ taxPercent: Int) -> Double {
		return mealCost*(Double(taxPercent)/100)
	}
}
