//
//  LaunchScreenCoordinator.swift
//  SkyCast
//
//  Created by Andrey Doroshko on 10/30/24.
//

import Foundation
import UIKit
import SwiftUI

class LaunchScreenCoordinator: Coordinator {
    // Needed in case we make a decision to have additional coordinator for new feature
    let parentCoordinator: Coordinator?
    let children: [Coordinator] = []
    
    let navigationController: UINavigationController
    
    init(navigationController : UINavigationController = UINavigationController(),
         parentCoordinator: Coordinator? = nil,
         children: [Coordinator] = []) {
        self.navigationController = navigationController
        self.parentCoordinator = parentCoordinator
    }
    
    func start() {
        let launchScreen = LaunchScreen()
        let launchViewController = UIHostingController(rootView: launchScreen)
        
        navigationController.setViewControllers([launchViewController], animated: true)
    }
}
