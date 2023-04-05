//
//  AgeCalculator.swift
//  BugWars
//
//  Created by Tom Phillips on 4/3/23.
//

import Foundation

class AgeCalculatorViewModel: ObservableObject {
    @Published var age = Age()
    
    // Refer to https://www.spacecentre.nz/resources/faq/solar-system/mars/how-old-would-i-be.html for the formula to convert earth age to mars age
    var ageOnMars: Double{
        let monthsInAnEarthYear = 12
        let monthsAsDecimal = age.numberOfMonths / monthsInAnEarthYear
        let earthAgeAsDecimal = age.numberOfYears + monthsAsDecimal
        let ageOnMars = Double(earthAgeAsDecimal) / 1.88
        return ageOnMars
    }
}
