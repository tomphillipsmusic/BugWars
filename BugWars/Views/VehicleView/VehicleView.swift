//
//  VehicleView.swift
//  BugWars
//
//  Created by Tom Phillips on 3/30/23.
//

import SwiftUI

struct VehicleView: View {
    @StateObject var vehicleStore = VehicleViewModel(httpClient: StarWarsAPIClient())
    @State private var isShowingCart = false
    
    var body: some View {
        NavigationStack {
            VStack {
                Text("Vehicles")
                    .font(.largeTitle)
                List(vehicleStore.vehicles, id: \.name) { vehicle in
                    listRow(for: vehicle)
                }
            }
            .toolbar {
                cartButton
            }
            .sheet(isPresented: $isShowingCart, content: {
                VehicleCartView(vm:vehicleStore)
            })
            .task {
                do {
                    try await vehicleStore.fetchVehicles()
                } catch {
                    print("Error: \(error)")
                }
                
            }
        .padding()
        }
    }
    
    func listRow(for vehicle: Vehicle) -> some View {
        HStack {
            Text(vehicle.name)
            Spacer()
            Button("Add to Cart") {
                vehicleStore.buy(vehicle: vehicle)
            }
        }
    }
    
    var cartButton: some View {
        Button {
            isShowingCart = true
        } label: {
            Image(systemName: "cart")
        }
    }
}

struct VehicleView_Previews: PreviewProvider {
    static var previews: some View {
        VehicleView()
    }
}
