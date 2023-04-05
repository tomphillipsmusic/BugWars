//
//  VehicleStore.swift
//  BugWars
//
//  Created by Tom Phillips on 3/30/23.
//

import Foundation

@MainActor
class VehicleViewModel: ObservableObject {
    @Published var vehicles: [Vehicle] = []
    @Published var purchasedVehicles: [Vehicle] = []
    
    let httpClient: StarWarsAPIClient
    
    init(httpClient: StarWarsAPIClient) {
        self.httpClient = httpClient
    }
    
    func fetchVehicles() async throws {
        try await vehicles = httpClient.fetchVehicles()
    }
    
    func buy(vehicle: Vehicle) {
        purchasedVehicles.append(vehicle)
    }

    func remove(vehicle: Vehicle) {
        purchasedVehicles.removeAll { $0.name == vehicle.name }
    }
}

