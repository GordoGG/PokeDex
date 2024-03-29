//
//  PokedexDetailViewControllerConfigurator.swift
//  PokeDex
//
//  Created by Fabrizio on 6/6/19.
//  Copyright (c) 2019 Fabrizio. All rights reserved.
//
//  This file was generated by the StartApps CleanSwift Xcode Templates. V2.0
//  By Gabriel Lanata (http://StartApps.pe) with credit to http://clean-swift.com
//

import UIKit

// MARK: - Connect View, Interactor, and Presenter

extension PokedexDetailViewControllerViewController {

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        router.passDataToNextScene(segue: segue)
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        PokedexDetailViewControllerConfigurator.configure(viewController: self)
    }

    static func instantiate() -> PokedexDetailViewControllerViewController {
        let storyboard = UIStoryboard(name: "PokedexDetailViewController", bundle: nil)
        let viewController = storyboard.instantiateInitialViewController() as! PokedexDetailViewControllerViewController
        return viewController
    }

}

class PokedexDetailViewControllerConfigurator {

    // MARK: - Configuration

    static func configure(viewController: PokedexDetailViewControllerViewController) {

        let presenter = PokedexDetailViewControllerPresenter()
        presenter.viewController = viewController

        let interactor = PokedexDetailViewControllerInteractor()
        interactor.presenter = presenter

        let router = PokedexDetailViewControllerRouter()
        router.viewController = viewController
        router.interactor = interactor

        viewController.interactor = interactor
        viewController.router = router
    }

}
