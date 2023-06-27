//
//  PlanetsModel.swift
//  Star Wars
//
//  Created by luis hector hernandez godinez  on 22/06/23.
//

import Foundation

struct ResponsePlanets: Decodable {
    let count: Int?
    let next: String?
    let previous: String?
    let results: [ResultsPlanet]
}

struct ResultsPlanet: Decodable {
    let name: String?
    let rotation_period: String?
    let orbital_period: String?
    let diameter: String?
    let climate: String?
    let gravity: String?
    let terrain: String?
    let surface_water: String?
    let population: String?
    let residents: [String]?
    let films: [String]?
    let created: String?
    let edited: String?
    let url: String?
}

