//
//  PokemonDetailVC.swift
//  Pokedex
//
//  Created by Michel Kansou on 25/07/2017.
//  Copyright © 2017 Michel Kansou. All rights reserved.
//

import UIKit

class PokemonDetailVC: UIViewController {

    var pokemon: Pokemon!
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var mainImage: UIImageView!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var typeLabel: UILabel!
    @IBOutlet weak var defenseLabel: UILabel!
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var pokedexLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var attackLabel: UILabel!
    @IBOutlet weak var evoLabel: UILabel!
    @IBOutlet weak var currentEvoImg: UIImageView!
    @IBOutlet weak var nextEvoImg: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let img = UIImage(named: "\(pokemon.pokedexId)")
        
        nameLabel.text = pokemon.name.capitalized
        pokedexLabel.text = "\(pokemon.pokedexId)"
        mainImage.image = img
        currentEvoImg.image = img
        
        
        pokemon.downloadPokemonDetail {
            // Whatever we write will only be called after the network call is complete!
            self.updateUI()
            
        }
    }
    
    func updateUI() {
        attackLabel.text = pokemon.attack
        defenseLabel.text = pokemon.defense
        heightLabel.text = pokemon.height
        weightLabel.text = pokemon.weight
        typeLabel.text = pokemon.type
        descriptionLabel.text = pokemon.description
        
        if pokemon.nextEvolutionId == "" {
            
            evoLabel.text = "No Evolution"
            nextEvoImg.isHidden = true
        } else {
            
            nextEvoImg.isHidden = false
            nextEvoImg.image = UIImage(named: pokemon.nextEvolutionId)
            
            let str = "Next Evolution: \(pokemon.nextEvolutionName) - LVL \(pokemon.nextEvolutionLevel)"
            
            evoLabel.text = str
        }
    }
    
    @IBAction func backBtnPressed(_ sender: UIButton) {
        
        dismiss(animated: true, completion: nil)
        
    }
}
