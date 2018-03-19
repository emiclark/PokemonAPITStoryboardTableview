//
//  myTableViewCell.swift
//  PokemonAPI
//
//  Created by Emiko Clark on 3/18/18.
//  Copyright © 2018 Emiko Clark. All rights reserved.
//

import UIKit

class myTableViewCell: UITableViewCell {

    @IBOutlet weak var url: UILabel!
    @IBOutlet weak var name: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
