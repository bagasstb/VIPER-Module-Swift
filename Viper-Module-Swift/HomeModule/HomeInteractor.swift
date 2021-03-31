//
//  HomeInteractor.swift
//  Viper-Module-Swift
//
//  Created by bagasstb on 31/03/21.
//

protocol HomeUseCase {
    func getTitle() -> HomeModel
}

class HomeInteractor {
    
}

extension HomeInteractor: HomeUseCase {
    
    func getTitle() -> HomeModel {
        return HomeModel(title: "Hello Viper")
    }
    
}
