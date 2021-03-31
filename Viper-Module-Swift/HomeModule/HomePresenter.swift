//
//  HomePresenter.swift
//  Viper-Module-Swift
//
//  Created by bagasstb on 31/03/21.
//

import Foundation

protocol HomePresentation {
    func   viewDidLoad() -> Void
}

class HomePresenter {
    
    weak var view: HomeView?
    var interactor: HomeUseCase
    var router: HomeRouting
    
    init(view: HomeView, interactor: HomeUseCase, router: HomeRouting) {
        self.view = view
        self.interactor = interactor
        self.router = router
    }
}

extension HomePresenter: HomePresentation {
    
    func viewDidLoad() {
        let homeModel = self.interactor.getTitle()
        print("Home Model \(homeModel)")
        DispatchQueue.main.async { [weak self] in
            guard let `self` = self else { return }
            self.view?.updateTitle(title: homeModel.title)
        }
        
    }
    
}
