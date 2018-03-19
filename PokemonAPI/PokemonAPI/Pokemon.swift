//
//  Pokemon.swift
//  PokemonAPI
//
//  Created by Emiko Clark on 3/18/18.
//  Copyright © 2018 Emiko Clark. All rights reserved.
//

import Foundation

class Pokemon {
    
    var url : String?
    var name: String?
    
    init(jsonDictionary: [String:Any]) {
        guard let url = jsonDictionary["url"] as? String,
            let name = jsonDictionary["name"] as? String
            else { print("url initialization failed"); return}

        self.name = name
        self.url = url
    }
}

