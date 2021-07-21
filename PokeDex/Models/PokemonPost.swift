//
//  PokemonPost.swift
//  PokeDex
//
//  Created by Fabrizio on 6/6/19.
//  Copyright © 2019 Fabrizio. All rights reserved.
//

import Foundation

class PokemonPosts: Decodable {
    let id: Int
    let name: String
    let imageUrl: String
    let types: [Types]
}

class Types: Decodable{
    let name: String
}
