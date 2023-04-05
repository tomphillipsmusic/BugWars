//
//  VehicleCartView.swift
//  BugWars
//
//  Created by Tom Phillips on 4/3/23.
//

import SwiftUI

struct VehicleCartView: View {
    @ObservedObject var vm: VehicleViewModel
    
    var body: some View {
        VStack {
            Text("Shopping Cart")
                .font(.largeTitle)
            List {
                ForEach(vm.purchasedVehicles, id: \.name) { vehicle in
                    HStack {
                        Text(vehicle.name)
                        Spacer()
                        Button("Remove") {
                            vm.remove(vehicle: vehicle)
                        }
                    }
                }
            }
        }
    }
}

struct VehicleCartView_Previews: PreviewProvider {
    static var previews: some View {
        VehicleCartView(vm: VehicleViewModel(httpClient: StarWarsAPIClient()))
    }
}
