//
//  FloatingTabBarController.swift
//  SkyCast
//
//  Created by Andrey Doroshko on 10/30/24.
//

import Foundation
import UIKit

class FloatingTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        setupTabBar()
    }
    
    private func setupTabBar() {
        tabBar.backgroundColor = UIColor.systemGray
        tabBar.isTranslucent = true
    }
}
