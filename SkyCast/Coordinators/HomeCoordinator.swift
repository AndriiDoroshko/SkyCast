//
//  HomeCoordinator.swift
//  SkyCast
//
//  Created by Andrey Doroshko on 10/30/24.
//

import Foundation
import UIKit

class HomeCoordinator: Coordinator {
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
        let homeViewController = HomeViewController()
        let homeViewModel = HomeViewModel(viewDelegate: homeViewController)
        
        homeViewModel.coordinator = self
        homeViewController.viewModel = homeViewModel
        
        homeViewController.tabBarItem
        = UITabBarItem(tabBarSystemItem: UITabBarItem.SystemItem.history, tag: 1)
        
        navigationController.setViewControllers([homeViewController], animated: true)
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
