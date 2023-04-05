//
//  ContentView.swift
//  BugWars
//
//  Created by Tom Phillips on 3/30/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            StarshipsView()
                .tabItem {
                    Label("Search Starships", systemImage: "magnifyingglass")
                }
            
            CalculateAgeOnMarsView()
                .tabItem {
                    Label("Age on Mars", systemImage: "globe")
                }
            
            VehicleView()
                .tabItem {
                    Label("Vehicles", systemImage: "car")
                }
            
            PeopleView()
                .tabItem {
                    Label("People", systemImage: "person.3")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
