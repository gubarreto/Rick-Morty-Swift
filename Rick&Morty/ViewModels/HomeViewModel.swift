//
//  HomeViewModel.swift
//  Rick&Morty
//
//  Created by Gustavo on 09/10/24.
//

import Foundation

class HomeViewModel: ObservableObject {
    var episodes: [EpisodeModel] = []
    var locations: [LocationModel] = []
}
