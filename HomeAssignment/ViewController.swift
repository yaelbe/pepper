//
//  ViewController.swift
//  HomeAssignment
//
//  Created by yael bilu eran on 15/01/2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let coodinator = OperationsSearchCoordinator()
        coodinator.start()
        // Do any additional setup after loading the view.
    }
}

