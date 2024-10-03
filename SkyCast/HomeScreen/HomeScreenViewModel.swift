//
//  HomeScreenViewModel.swift
//  SkyCast
//
//  Created by Andrey Doroshko on 10/3/24.
//

import Foundation

protocol HomeViewModelDelegate: AnyObject {
    func refreshData()
    func loading(_ isLoading: Bool)
    func displayError(_ message: String)
}

class HomeViewModel {
    
    weak var coordinator: HomeCoordinator?
    weak var viewDelegate: HomeViewModelDelegate?
    private let networkService: NetworkServiceProtocol
    
    init(viewDelegate: HomeViewModelDelegate,
         networkService: NetworkServiceProtocol = NetworkService()) {
        self.networkService = networkService
        self.viewDelegate = viewDelegate
    }
    
    func networkError(_ error: NetworkError) {
        switch error {
        case .cancelled:
            print("HomeScreenViewModel Error: \(error.message)")
        default:
            viewDelegate?.displayError(error.message)
        }
    }
}
