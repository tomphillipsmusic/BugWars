//
//  StarshipStore.swift
//  BugWars
//
//  Created by Tom Phillips on 4/3/23.
//

import Foundation

@MainActor
class StarshipViewModel: ObservableObject {
    @Published var starships: [Starship] = []
    @Published var searchText = ""
    
    let httpClient: StarWarsAPIClient
    
    init(httpClient: StarWarsAPIClient) {
        self.httpClient = httpClient
    }
    
    func fetchStarships() async throws {
        try await starships = httpClient.fetchStarships()
    }
    
    var filteredStarships: [Starship] {
        if searchText.isEmpty {
            return []
        }
        
        return starships.filter { $0.name.lowercased().starts(with: searchText)}
    }
}

