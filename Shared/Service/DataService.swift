//
//  DataService.swift
//  CBInvestor (iOS)
//
//  Created by jk on 2021/8/31.
//

import Foundation
import Combine


protocol DataService {
    func request(from endPoint: TableAPI) -> AnyPublisher<DataResponse, APIError>
}

struct JslDataService: DataService {
    func request(from endPoint: TableAPI) -> AnyPublisher<DataResponse, APIError> {
        return URLSession
            .shared
            .dataTaskPublisher(for: endPoint.urlRequest)
            .receive(on: DispatchQueue.main)
            .mapError {_ in APIError.unknown}
            .flatMap {data, response -> AnyPublisher<DataResponse, APIError> in
                guard let response = response as? HTTPURLResponse else {
                    return Fail(error: APIError.unknown)
                }
                
                if (200...299).contains(response.statusCode) {
                    
                } else {
                    return Fail(error: APIError.errorCode(response.statusCodee))
                }
            }
            .eraseToAnyPublisher()
    }
}
