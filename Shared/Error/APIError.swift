//
//  APIError.swift
//  CBInvestor (iOS)
//
//  Created by jk on 2021/8/31.
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
            return "Failed to decode"
        case .errorCode(let code):
            return "\(code) - Something went wrong"
        case .unknown:
            return "The error is unknown"
//        default:
//            return "Error"
        }
    }
}
