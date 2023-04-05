//
//  ContentView.swift
//  BugWars
//
//  Created by Tom Phillips on 3/30/23.
//

import SwiftUI

struct PeopleView: View {
    @StateObject var vm = PeopleViewModel(httpClient: StarWarsAPIClient())
    
    var body: some View {
        VStack {
            Text("Characters")
                .font(.largeTitle)
            
            List(vm.people) { person in
                Text(person.name)
            }
        }
        .task {
            do {
                try await vm.fetchPeople()
            } catch {
                print("Error: \(error)")
            }
        }
        .padding()
    }
}

struct PeopleView_Previews: PreviewProvider {
    static var previews: some View {
        PeopleView()
    }
}
