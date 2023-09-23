//
//  DrinkRow.swift
//  iCoffee
//
//  Created by Yousuf Yesil on 20.09.23.
//

import Foundation

struct DrinkEntry: Identifiable {
    let id = UUID()
    var name: String
    var amount: Double
    var coffein: Double
    var date: Date
    
}
