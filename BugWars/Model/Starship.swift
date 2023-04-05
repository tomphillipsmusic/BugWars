//
//  Starship.swift
//  BugWars
//
//  Created by Tom Phillips on 4/3/23.
//

import Foundation

struct StarshipResponse: Codable {
    let results: [Starship]
}

struct Starship: Codable {
    let name: String
}
