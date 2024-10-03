//
//  HomeCoordinator.swift
//  SkyCast
//
//  Created by Andrey Doroshko on 10/3/24.
//

import Foundation
import UIKit

enum Screen {
    case home
}

class HomeCoordinator: Coordinator {
    // Needed in case we make a decision to have additional coordinator for new feature
    let parentCoordinator: Coordinator?
    let children: [Coordinator] = []
    
    let navigationController: UINavigationController
    
    init(navigationController : UINavigationController,
         parentCoordinator: Coordinator? = nil,
         children: [Coordinator] = []) {
        self.navigationController = navigationController
        self.parentCoordinator = parentCoordinator
        self.children = children
    }
    func start() {
        open(.home)
    }
    
    func open(_ route: Screen) {
        switch route {
        case .home:
            let homeViewController = HomeViewController()
            let homeViewModel = HomeViewModel(viewDelegate: homeViewController)
            
            homeViewModel.coordinator = self
            homeViewController.viewModel = homeViewModel
            
            navigationController.pushViewController(homeViewController,
                                                    animated: true)
        }
    }
}
