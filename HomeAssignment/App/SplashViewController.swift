//
//  ViewController.swift
//  HomeAssignment
//
//  Created by yael bilu eran on 15/01/2023.
//

import UIKit

class SplashViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad( )
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            guard let navigation = self.navigationController else { return }
            let coodinator = OperationsSearchCoordinator(navigation: navigation)
            coodinator.start()
        }
    }
}

