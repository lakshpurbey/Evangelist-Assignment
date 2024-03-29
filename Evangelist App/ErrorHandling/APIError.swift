//
//  ApiError.swift
//  Evangelist App
//
//  Created by Laksh Purbey on 29/06/2022.
//

import Foundation

enum APIError: Error {
    case decodingError
    case errorCode(Int)
    case unknown
}

extension APIError: LocalizedError {
    var errorDescription: String? {
        switch self {
            case .decodingError:
                return "Failed to decode the object from the service"
            case .errorCode(let code):
                return "\(code) - Something went wrong"
            case .unknown:
                return "The error is unknown"
        }
    }
}
