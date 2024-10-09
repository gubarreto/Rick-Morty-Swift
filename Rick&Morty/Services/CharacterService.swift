//
//  CharacterService.swift
//  Rick&Morty
//
//  Created by Gustavo on 09/10/24.
//

import Foundation
import Alamofire

class CharacterService {
    func GetCharacterById(id: Int) -> CharacterModel? {
        var character: CharacterModel? = nil
        let url = "https://rickandmortyapi.com/api/character/\(id)"
        AF.request(url, method: .get).responseDecodable(of: CharacterModel.self) { response in
                    switch response.result {
                    case .success(let data):
                        character = data
                        print("Req resp >>", data)
                    case .failure(let error):
                        print("Req error >> \(error)")
                    }
                }
        return character ?? nil
    }
    
    func GetCharacterByPage(page: Int) -> [CharacterModel]? {
        var characters: [CharacterModel]? = nil
        let url = "https://rickandmortyapi.com/api/character/?page=\(page)"
        AF.request(url, method: .get).responseDecodable(of: [CharacterModel].self) { response in
                    switch response.result {
                    case .success(let data):
                        characters = data
                        print("Req resp >>", data)
                    case .failure(let error):
                        print("Req error >> \(error)")
                    }
                }
        return characters ?? nil
    }
}

