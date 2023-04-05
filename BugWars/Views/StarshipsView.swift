//
//  StarshipsView.swift
//  BugWars
//
//  Created by Tom Phillips on 4/3/23.
//

import SwiftUI

struct StarshipsView: View {
    @StateObject var vm = StarshipViewModel(httpClient: StarWarsAPIClient())
    
    var body: some View {
        NavigationStack {
            List(vm.filteredStarships, id: \.name) { starship in
                Text(starship.name)
            }
            .navigationTitle("Starship Search")
            .searchable(text: $vm.searchText)
        }
        .task {
            do {
                try await vm.fetchStarships()
            } catch {
                print("Error: \(error)")
            }
            
        }
        .padding()
    }
}

struct StarshipsView_Previews: PreviewProvider {
    static var previews: some View {
        StarshipsView()
    }
}
