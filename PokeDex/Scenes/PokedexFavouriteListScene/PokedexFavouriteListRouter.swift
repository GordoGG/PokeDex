//
//  PokedexFavouriteListRouter.swift
//  PokeDex
//
//  Created by Fabrizio on 8/14/19.
//  Copyright (c) 2019 Fabrizio. All rights reserved.
//
//  This file was generated by the StartApps CleanSwift Xcode Templates. V2.0
//  By Gabriel Lanata (http://StartApps.pe) with credit to http://clean-swift.com
//

import UIKit

class PokedexFavouriteListRouter {

    weak var viewController: PokedexFavouriteListViewController?
    weak var interactor: PokedexFavouriteListInteractor?

    // MARK: - Navigation

    func navigateToSomewhere(pokemon: PokedexDetailViewControllerScene.FetchPokemon.Response) {
        // NOTE: Teach the router how to navigate to another scene. Some examples follow:

        let storyboard = UIStoryboard(name: "PokedexDetail", bundle: nil)
        let pokedexDetailViewControler = storyboard.instantiateViewController(withIdentifier: "PokedexDetailViewControllerViewController") as! PokedexDetailViewControllerViewController
        pokedexDetailViewControler.interactor.pokemonPost = pokemon
        
        viewController?.navigationController?.pushViewController(pokedexDetailViewControler, animated: true)
    }

    // MARK: - Communication

    func passDataToNextScene(segue: UIStoryboardSegue) {
        // NOTE: Teach the router how to pass data to the next scene
        // if let destinationViewController = segue.destination as? SomewhereViewController {
        //     destinationViewController.interactor.something = interactor?.something
        // }
    }

}