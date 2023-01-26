//
//  OperationsCoordinator.swift
//  HomeAssignment
//
//  Created by yael bilu eran on 15/01/2023.
//

import Foundation
import UIKit

class OperationsSearchCoordinator {
    var navigation: UINavigationController?
    weak var viewController: OperationsSearchViewController?
//    let window: UIWindow
    
//    init(window: UIWindow) {
//        self.window = window
////        self.navigation = navigation
//    }
    
    func start() {
        let vm = OperationsSearchViewModel()
        let vc = OperationsSearchViewController()
        let navigation = UINavigationController(rootViewController: vc)
        self.viewController = vc
        vc.viewModel = vm
        self.navigation = navigation
        
//        let appDelegate = UIApplication.shared.delegate as! AppDelegate
//        appDelegate.window?.rootViewController = navigation
        
//        window.rootViewController = navigation
        
        UIApplication.shared.windows.first?.rootViewController?.present(navigation, animated: false)
//        navigation.pushViewController(vc, animated: true)
    }
}
