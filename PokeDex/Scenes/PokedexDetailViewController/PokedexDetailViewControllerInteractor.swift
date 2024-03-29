//
//  PokedexDetailViewControllerInteractor.swift
//  PokeDex
//
//  Created by Fabrizio on 6/6/19.
//  Copyright (c) 2019 Fabrizio. All rights reserved.
//
//  This file was generated by the StartApps CleanSwift Xcode Templates. V2.0
//  By Gabriel Lanata (http://StartApps.pe) with credit to http://clean-swift.com
//

import Foundation

class PokedexDetailViewControllerInteractor {

    var presenter: PokedexDetailViewControllerPresenter?

    // MARK: - Object variables
    var pokemonPost: PokedexDetailViewControllerScene.FetchPokemon.Response!

    // var loadAction: loadAction!

    // MARK: - Business logic

    func doFetchPokemon(request: PokedexDetailViewControllerScene.FetchPokemon.Request) {
        // NOTE: Pass the result to the Presenter
        self.presenter?.presentFetchPokemon(response: pokemonPost)
    }

}
