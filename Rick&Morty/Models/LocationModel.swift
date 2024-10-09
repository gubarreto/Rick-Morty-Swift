//
//  LocationModel.swift
//  Rick&Morty
//
//  Created by Gustavo on 09/10/24.
//

import Foundation

struct Location: Codable, Identifiable {
    var id: Int
    var name: String
    var type: String
    var dimension: String
    var residents: [String]
    var url: String
    var created: String
}
