//
//  ViewController.swift
//  Viper-Module-Swift
//
//  Created by bagasstb on 31/03/21.
//

import UIKit

protocol HomeView: class {
    
    func updateTitle(title: String) -> (Void)
}

class ViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    
    var presenter: HomePresentation?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.presenter?.viewDidLoad()
    }

}

extension ViewController: HomeView {
    
    func updateTitle(title: String) {
        titleLabel.text = "Welcome to VIPER"
    }
    
}
