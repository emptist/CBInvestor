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
    var fullUrl: URL {get}
}


enum DataAPI {
    case getItems
    case debug
}

extension DataAPI: APIBuilder {
    var baseUrl: URL {
        switch self {
        case .getItems, .debug:
            return URL(string: "https://www.jisilu.cn")!
        }
        
    }
    
    var path: String {
        let t = Int(Date().timeIntervalSince1970)
        switch self {
        case .debug:
            return "/data/cbnew/cb_list"
        case .getItems:
            return "/data/cbnew/cb_list/?___jsl=LST___t=\(t)"
        }
    }
    
    var urlRequest: URLRequest {
        URLRequest(url: self.fullUrl)
    }
    
    var fullUrl: URL {
        self.baseUrl.appendingPathComponent(self.path)
    }
}
