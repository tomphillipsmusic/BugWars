//
//  Vehicle.swift
//  BugWars
//
//  Created by Tom Phillips on 3/30/23.
//

import Foundation

struct VehicleResponse: Codable {
    let results: [Vehicle]
}

struct Vehicle: Codable {
    let name: String
}
