//
//  PokemonModel.swift
//  MVVMPokedex
//
//  Created by Federico on 30/03/2022.
//

import Foundation


struct PokemonPage: Decodable {
    let count: Int
    let next: String
    let results: [Pokemon]
}

struct Pokemon: Decodable, Identifiable, Equatable {
    var id: String = UUID().uuidString
    let name: String
    let url: String
    
    enum CodingKeys: CodingKey {
        case name // note that id is not listed here
        case url // note that id is not listed here
    }
    
    static var samplePokemon = Pokemon(name: "bulbasaur", url: "https://pokeapi.co/api/v2/pokemon/1/")
}

struct DetailPokemon: Decodable {
    let id: Int
    let height: Int
    let weight: Int
}


