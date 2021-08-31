//
//  ResultState.swift
//  CBInvestor (iOS)
//
//  Created by jk on 2021/8/31.
//

import Foundation

enum ResultState {
    case loading
    case success(content: [Row])
    case failed(error: Error)
}
