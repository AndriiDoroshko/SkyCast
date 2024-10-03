//
//  NetworkError.swift
//  SkyCast
//
//  Created by Andrey Doroshko on 10/3/24.
//

import Foundation

enum NetworkError: Error {
    case invalidURL(String)
    case nerworkError(String)
    case noDataRecived(String)
    case decodingJSONError(String)
    case cancelled
    
    var message: String {
        switch self {
        case .invalidURL(let message):
            return message
        case .nerworkError(let message):
            return message
        case .noDataRecived(let message):
            return message
        case .decodingJSONError(let message):
            return message
        case .cancelled:
            return "Network request was canceled"
        }
    }
}
