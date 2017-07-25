//
//  PokeCell.swift
//  Pokedex
//
//  Created by Michel Kansou on 25/07/2017.
//  Copyright © 2017 Michel Kansou. All rights reserved.
//

import UIKit

class PokeCell: UICollectionViewCell {
    
    @IBOutlet weak var thumbImg: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    
    var pokemon: Pokemon!
    
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        layer.cornerRadius = 5.0
        
    }
    
    func configureCell(_ pokemon: Pokemon) {
        self.pokemon = pokemon
        
        thumbImg.image = UIImage(named: "\(self.pokemon.pokedexId)")
        nameLabel.text = self.pokemon.name.capitalized
    }
}
