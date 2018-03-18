//
//  APIClient.swift
//  PokemonAPI
//
//  Created by Emiko Clark on 3/18/18.
//  Copyright © 2018 Emiko Clark. All rights reserved.
//

import Foundation

class APIClient {
    
    class func getPokemonData(completion:@escaping([String: Any])->()) {
        var jsonDictionary = [String:Any]()
        
        let urlString = "http://pokeapi.co/api/v2/pokemon/"
        let urlconverted = URL(string: urlString)
        guard let url = urlconverted else { print("failed"); return }
        
        let request = URLRequest(url: url)
        let task = URLSession.shared.dataTask(with: request) { (data, response, error) in
            
            guard let dataUnwrapped = data else { print("data failed"); return }
            
            let jsonDict = try? JSONSerialization.jsonObject(with: dataUnwrapped, options: []) as! [String:Any]
            guard let json = jsonDict else { print("json conversion failed"); return }
            
            jsonDictionary = json
            completion(jsonDictionary)
        }
    }
    
}
