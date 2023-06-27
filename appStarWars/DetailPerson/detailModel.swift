//
//  detailModel.swift
//  Star Wars
//
//  Created by luis hector hernandez godinez  on 22/06/23.
//

import Foundation


struct DetailReponse: Decodable {
    let name: String?
    let height: String?
    let mass: String?
    let hair_color: String?
    let skin_color: String?
    let eye_color: String?
    let birth_year: String?
    let gender: String?
    let homeworld: String?
    let films: [String]?
    let species: [String]?
    let vehicles: [String]?
    let starships: [String]?
    let created: String?
    let edited: String?
    let url: String?
    }

