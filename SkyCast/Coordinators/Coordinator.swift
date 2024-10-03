//
//  Coordinator.swift
//  SkyCast
//
//  Created by Andrey Doroshko on 10/3/24.
//

import Foundation
import UIKit

protocol Coordinator {
    let parentCoordinator: Coordinator? { get set }
    let children: [Coordinator] { get set }
    
    let navigationController : UINavigationController { get set }
    
    func start()
}
