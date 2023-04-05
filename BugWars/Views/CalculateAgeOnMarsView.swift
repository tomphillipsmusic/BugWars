//
//  CalculateAgeOnMarsView.swift
//  BugWars
//
//  Created by Tom Phillips on 4/3/23.
//

import SwiftUI

struct CalculateAgeOnMarsView: View {
    @StateObject private var vm = AgeCalculatorViewModel()
    
    var body: some View {
        VStack {
            Text("Calculate Your Age on Mars!")
                .font(.largeTitle)
            
            List {
                Section("Enter your age on Earth") {
                    Stepper("Years: \(vm.age.numberOfYears)", value: $vm.age.numberOfYears)
                    Stepper("Months: \(vm.age.numberOfMonths)", value: $vm.age.numberOfMonths)
                }
                
                Section("Your age on Mars") {
                    Text("\(vm.ageOnMars)")
                }
            }
        }
    }
}

struct CalculateAgeOnMarsView_Previews: PreviewProvider {
    static var previews: some View {
        CalculateAgeOnMarsView()
    }
}
