//
//  PokedexListSceneCells.swift
//  PokeDex
//
//  Created by Fabrizio on 6/6/19.
//  Copyright (c) 2019 Fabrizio. All rights reserved.
//
//  This file was generated by the StartApps CleanSwift Xcode Templates. V2.0
//  By Gabriel Lanata (http://StartApps.pe) with credit to http://clean-swift.com
//

import UIKit

class PokedexListSceneTableViewCell: UITableViewCell {
    
    static let identifier = "PokedexListSceneTableViewCell"
    
    @IBOutlet weak var pokemonView: UIImageView!
    @IBOutlet weak var detailLabel:  UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Configure cell initial settings
    }
    
    var displayedSomething: PokedexListSceneScene.FetchPokedex.ViewModel.DisplayedPokemon! {
        didSet {
            // Configure cell from object
        }
    }
    
}
