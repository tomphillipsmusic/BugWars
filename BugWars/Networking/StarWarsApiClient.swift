//
//  StarWarsApiClient.swift
//  BugWars
//
//  Created by Tom Phillips on 3/30/23.
//

import Foundation

/// Provides a wrapper that handles fetching people, vehicles, and starships from the Star Wars API.
/// https://swapi.dev
actor StarWarsAPIClient {
    enum Endpoint {
        static let people = "people?format=wookiee"
        static let vehicles = "vehicles"
        static let starships = "starships"
    }
    
    private let baseUrl = "https://swapi.dev/api/"
    
    func fetchPeople() async throws -> [Person] {
        let url = "\(baseUrl)\(Endpoint.people)"
        return try await NetworkManager.shared.fetch(from: url)
    }
    
    func fetchVehicles() async throws -> [Vehicle] {
        let url = "\(baseUrl)\(Endpoint.vehicles)"
        let response: VehicleResponse = try await NetworkManager.shared.fetch(from: url)
        return response.results
    }
    
    func fetchStarships() async throws -> [Starship] {
        let url = "\(baseUrl)\(Endpoint.starships)"
        let response: StarshipResponse = try await NetworkManager.shared.fetch(from: url)
        return response.results
    }
}
