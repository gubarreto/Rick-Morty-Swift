//
//  CharacterModel.swift
//  Rick&Morty
//
//  Created by Gustavo on 09/10/24.
//

import Foundation

struct Character: Codable, Identifiable {
    var id: Int
    var name: String
    var status: String
    var species: String
    var type: String
    var gender: String
    var origin: OriginCharacter
    var location: LocationCharacter
    var image: String
    var episode: [String]
    var url: String
    var created: String
}

struct OriginCharacter: Codable {
    var name: String
    var url: String
}

struct LocationCharacter: Codable {
    var name: String
    var url: String
}
