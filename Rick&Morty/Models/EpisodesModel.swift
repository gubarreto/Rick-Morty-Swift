//
//  EpisodesModel.swift
//  Rick&Morty
//
//  Created by Gustavo on 09/10/24.
//

import Foundation

struct EpisodeModel: Codable, Identifiable {
    var id: Int
    var name: String
    var air_date: String
    var episode: String
    var characters: [String]
    var url: String
    var created: String
}
