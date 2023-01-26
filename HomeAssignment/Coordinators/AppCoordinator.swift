//
//  AppCoordinator.swift
//  HomeAssignment
//
//  Created by yael bilu eran on 16/01/2023.
//

import Foundation
import UIKit

class AppCoordinator {
    private let window: UIWindow
    
    init(window: UIWindow) {
        self.window = window
    }

    func start() {
//        UIApplication.shared.windows.first?.rootViewController?.present(navigation, animated: false)
        let coordinator = OperationsSearchCoordinator()
        coordinator.start()
    }
}
