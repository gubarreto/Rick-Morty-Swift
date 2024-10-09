//
//  EpisodeService.swift
//  Rick&Morty
//
//  Created by Gustavo on 09/10/24.
//

import Foundation
import Alamofire

class EpisodeService {
    func GetEpisodeById(id: Int) -> EpisodeModel? {
        var episode: EpisodeModel? = nil
        let url = "https://rickandmortyapi.com/api/episode/\(id)"
        AF.request(url, method: .get).responseDecodable(of: EpisodeModel.self) { response in
                    switch response.result {
                    case .success(let data):
                        episode = data
                        print("Req resp >>", data)
                    case .failure(let error):
                        print("Req error >> \(error)")
                    }
                }
        return episode ?? nil
    }
    
    func GetEpisodeByPage(page: Int) -> [EpisodeModel]? {
        var episodes: [EpisodeModel]? = nil
        let url = "https://rickandmortyapi.com/api/episode?page=\(page)"
        AF.request(url, method: .get).responseDecodable(of: [EpisodeModel].self) { response in
                    switch response.result {
                    case .success(let data):
                        episodes = data
                        print("Req resp >>", data)
                    case .failure(let error):
                        print("Req error >> \(error)")
                    }
                }
        return episodes ?? nil
    }
}
