//
//  Coordinator.swift
//  SkyCast
//
//  Created by Andrey Doroshko on 10/3/24.
//

import Foundation
import UIKit

protocol Coordinator {
    var parentCoordinator: Coordinator? { get }
    var children: [Coordinator] { get }
    
    var navigationController : UINavigationController { get }
    
    func start()
}
