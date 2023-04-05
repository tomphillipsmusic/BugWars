//
//  DataStore.swift
//  BugWars
//
//  Created by Tom Phillips on 3/30/23.
//

import Foundation

@MainActor
class PeopleViewModel: ObservableObject {
    @Published var people: [Person] = []
    
    let httpClient: StarWarsAPIClient
    
    init(httpClient: StarWarsAPIClient) {
        self.httpClient = httpClient
    }
    
    func fetchPeople() async throws {
        try await people = httpClient.fetchPeople()
    }

}
