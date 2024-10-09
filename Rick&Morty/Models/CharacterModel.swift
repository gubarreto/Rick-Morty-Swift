//
//  CharacterModel.swift
//  Rick&Morty
//
//  Created by Gustavo on 09/10/24.
//

import Foundation

struct CharacterModel: Codable, Identifiable {
    var id: Int
    var name: String
    var status: String
    var species: String
    var type: String
    var gender: String
    var origin: OriginCharacterModel
    var location: LocationCharacterModel
    var image: String
    var episode: [String]
    var url: String
    var created: String
}

struct OriginCharacterModel: Codable {
    var name: String
    var url: String
}

struct LocationCharacterModel: Codable {
    var name: String
    var url: String
}
