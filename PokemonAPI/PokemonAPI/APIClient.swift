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
        
        // api string
        let urlString = "http://pokeapi.co/api/v2/pokemon/"
        
        // convert string to url
        let stringToUrl = URL(string: urlString)
        
        // use guard since the url can be nil
        guard let url = stringToUrl else { print("failed"); return }
        
        // create request from successful url
        let request = URLRequest(url: url)
        
        // create task using urlsession
        let task = URLSession.shared.dataTask(with: request) { (data, response, error) in
            
            // unwrap data
            guard let dataUnwrapped = data else { print("data failed"); return }
            
            // serialize data into swift format
            let jsonDict = try? JSONSerialization.jsonObject(with: dataUnwrapped, options: []) as! [String:Any]
            
            // need to guard because of try? conversion to dictionary
            guard let json = jsonDict else { print("json conversion failed"); return }

            // return json dictionary to calling method after successfully creating the json object
            completion(json)
        }
        task.resume()
    }
}
