//
//  PokemonDataStore.swift
//  PokemonAPI
//
//  Created by Emiko Clark on 3/18/18.
//  Copyright © 2018 Emiko Clark. All rights reserved.
//

import Foundation

class PokemonDataStore {
    
    var PokemonArr = [Pokemon]()
    
    func getPokemonObjects(completion:@escaping ([Pokemon]) -> ()) {
        
        APIClient.getPokemonData { (jsonPokemonDictionary) in
            
            guard let resultsArr = jsonPokemonDictionary["results"] as? Array<Any> else { print("getting results array failed"); return }
            
            for item in resultsArr  {
                guard let item = item as? [String: Any] else { print("item failed"); return }
                let pokemonObject = Pokemon.init(jsonDictionary: item)
                self.PokemonArr.append(pokemonObject)
            }
            completion(self.PokemonArr)
        }
        
        
    }
    
}
