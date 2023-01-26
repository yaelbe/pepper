//
//  OperationsCoordinator.swift
//  HomeAssignment
//
//  Created by yael bilu eran on 15/01/2023.
//

import Foundation
import UIKit

class OperationsSearchCoordinator {
    weak var viewController: OperationsSearchViewController?
    private var navigation: UINavigationController
    
    init(navigation: UINavigationController) {
        self.navigation = navigation
    }
    
    func start() {
        let vm = OperationsSearchViewModel()
        let vc = OperationsSearchViewController()
        self.viewController = vc
        vc.viewModel = vm
        navigation.setViewControllers([vc], animated: true)//set root view controller
    }
}
