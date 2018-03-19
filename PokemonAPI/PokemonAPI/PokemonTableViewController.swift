//
//  PokemonTableViewController.swift
//  PokemonAPI
//
//  Created by Emiko Clark on 3/18/18.
//  Copyright © 2018 Emiko Clark. All rights reserved.
//

import UIKit

class PokemonTableViewController: UITableViewController {
    
    let ds = PokemonDataStore()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ds.getPokemonObjects { (PokemonArr) in
            OperationQueue.main.addOperation {
                self.tableView.reloadData()
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return self.ds.PokemonArr.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath) as! myTableViewCell
        cell.name.text = self.ds.PokemonArr[indexPath.row].name
        cell.url.text = self.ds.PokemonArr[indexPath.row].url
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 75
    }
}
