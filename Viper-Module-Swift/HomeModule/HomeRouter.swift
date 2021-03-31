//
//  HomeRouter.swift
//  Viper-Module-Swift
//
//  Created by bagasstb on 31/03/21.
//

import UIKit

protocol HomeRouting {
    
}

class HomeRouter {
    
    var viewController: UIViewController
    
    init(view: UIViewController) {
        self.viewController = view
    }
}

extension HomeRouter: HomeRouting {
    
}
