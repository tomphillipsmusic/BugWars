//
//  People.swift
//  BugWars
//
//  Created by Tom Phillips on 3/30/23.
//

import Foundation

struct Person: Codable, Identifiable {
    let name: String
    var id: String { name }
}
