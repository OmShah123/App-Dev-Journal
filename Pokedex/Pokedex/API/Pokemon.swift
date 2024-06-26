//
//  Pokemon.swift
//  Pokedex
//
//  Created by Om Shah on 4/01/24.
// https://pokeapi.co/api/v2/pokemon/?offset=0&limit=151

import Foundation

struct Pokemon : Codable {
    var results: [PokemonEntry]
}
struct PokemonEntry: Codable, Identifiable {
    let id = UUID()
    var name: String
    var url: String
}


class PokeApi {
    func getData(completion: @escaping ([PokemonEntry]) -> ()) {
        guard let url = URL(string: "https://pokeapi.co/api/v2/pokemon/?offset=0&limit=151") else {
            return
        }
        URLSession.shared.dataTask(with: url) {
            (data, response, error) in
            guard let data = data else {
                return
            }
            
            let pokemonList = try! JSONDecoder().decode(Pokemon.self, from: data)
            
            DispatchQueue.main.async {
                completion(pokemonList.results)
            }
        }.resume()
    }
}
