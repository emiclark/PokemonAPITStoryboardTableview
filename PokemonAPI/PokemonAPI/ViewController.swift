//
//  ViewController.swift
//  PokemonAPI
//
//  Created by Emiko Clark on 3/18/18.
//  Copyright © 2018 Emiko Clark. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        APIClient.getPokemonData { (jsonDictionary) in
            print("************************")
            print(jsonDictionary)
            print("************************")

        }
    }


}

