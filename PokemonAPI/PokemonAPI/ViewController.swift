//
//  ViewController.swift
//  PokemonAPI
//
//  Created by Emiko Clark on 3/18/18.
//  Copyright © 2018 Emiko Clark. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let ds = PokemonDataStore()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ds.getPokemonObjects { (pokemonObjects) in
            print("*****************")
            print(pokemonObjects)
        }
    }


}

