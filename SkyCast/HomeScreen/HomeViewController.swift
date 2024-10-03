//
//  HomeViewController.swift
//  SkyCast
//
//  Created by Andrey Doroshko on 10/3/24.
//

import UIKit

class HomeViewController: UIViewController {

    var viewModel: HomeViewModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}

extension HomeViewController: HomeViewModelDelegate {
    func displayError(_ message: String) {
        let alertController = UIAlertController(title: "Error",
                                                message: message,
                                                preferredStyle: .alert)
           
        let okAction = UIAlertAction(title: "OK",
                                     style: .default,
                                     handler: nil)
        alertController.addAction(okAction)
           
        DispatchQueue.main.async { [weak self] in
            self?.navigationController?.present(alertController,
                                                animated: true,
                                                completion: nil)
        }
    }
    
    func loading(_ isLoading: Bool) {
        if isLoading {

            
        } else {
            
        }
    }
    
    func refreshData() {
        DispatchQueue.main.async { [weak self] in
            
        }
    }
}
