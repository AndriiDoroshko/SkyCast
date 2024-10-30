//
//  TabBarCoordinator.swift
//  SkyCast
//
//  Created by Andrey Doroshko on 10/30/24.
//

import Foundation
import UIKit

class TabBarCoordinator: Coordinator {
    // Needed in case we make a decision to have additional coordinator for new feature
    let parentCoordinator: Coordinator?
    var children: [Coordinator] = []
    
    let navigationController: UINavigationController
    
    init(navigationController : UINavigationController,
         parentCoordinator: Coordinator? = nil,
         children: [Coordinator] = []) {
        self.navigationController = navigationController
        self.parentCoordinator = parentCoordinator
    }
    
    func start() {
        let homeCoordinator = HomeCoordinator()
        children.append(homeCoordinator)
        
        children.forEach { $0.start() }
        
        let tabBarController = FloatingTabBarController()
        tabBarController.viewControllers = [homeCoordinator.navigationController]
        
        navigationController.setViewControllers([tabBarController],
                                                animated: true)
    }
}
