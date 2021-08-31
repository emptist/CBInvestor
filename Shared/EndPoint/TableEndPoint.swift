//
//  TableEndPoint.swift
//  CBInvestor (iOS)
//
//  Created by jk on 2021/8/31.
//

import Foundation


protocol APIBuilder {
    var urlRequest: URLRequest {get}
    var baseUrl: URL {get}
    var path: String {get}
}


enum DataAPI {
    case getItems
}

extension DataAPI: APIBuilder {
    var baseUrl: URL {
        switch self {
        case .getItems:
            return URL(string: "https://www.jisilu.cn")!
        }
    }
    
    var path: String {
        switch self {
        case .getItems:
            return "/data/cbnew/cb_list/"
        }
    }
    
    var urlRequest: URLRequest {
        URLRequest(url: self.baseUrl.appendingPathComponent(self.path))
    }
}
