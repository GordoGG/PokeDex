//
//  NetworkManager.swift
//  PokeDex
//
//  Created by Fabrizio on 8/26/19.
//  Copyright © 2019 Fabrizio. All rights reserved.
//

import Foundation

enum NetworkError: Error {
    case noResponse(String)
    case errorDecodingJson
    
    var errorDescription: String {
        switch self {
        case .noResponse(let error):
            return "Error: \(error)"
        case .errorDecodingJson:
            return "Error decoding JSON"
        }
    }
}

class NetworkManager {
    private init(){}
    static var shared = NetworkManager()
    
    func getPokemons(completion: @escaping (Result<[PokemonPosts], NetworkError>) -> Void) {
        let pokedexStringURL = "https://api.myjson.com/bins/1gs2ua"
        
        guard let url = URL(string: pokedexStringURL) else {return}
        let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
            guard let dataResponse = data,
                error == nil else {
                    DispatchQueue.main.async {
                        completion(.failure(.noResponse(error!.localizedDescription)))
                    }
                    return
            }
            guard let pokemons = try? JSONDecoder().decode([PokemonPosts].self, from: dataResponse) else  {
                DispatchQueue.main.async {
                    completion(.failure(.errorDecodingJson))
                }
                return
            }
            DispatchQueue.main.async {
                completion(.success(pokemons))
            }
        }
        task.resume()
    }
    
}
