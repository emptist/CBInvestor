//
//  DataService.swift
//  CBInvestor (iOS)
//
//  Created by jk on 2021/8/31.
//

import Foundation
import Combine


protocol DataService {
    func request(from endpoint: DataAPI) -> AnyPublisher<DataResponse, APIError>
}

struct JslDataService: DataService {
    func request(from endpoint: DataAPI) -> AnyPublisher<DataResponse, APIError> {
        return URLSession
            .shared
            .dataTaskPublisher(for: endpoint.urlRequest)
            .receive(on: DispatchQueue.main)
            .mapError {_ in APIError.unknown}
            .flatMap {data, response -> AnyPublisher<DataResponse, APIError> in
                guard let response = response as? HTTPURLResponse else {
                    return Fail(error: APIError.unknown).eraseToAnyPublisher()
                }
                
                
                if (200...299).contains(response.statusCode) {
//                    print("\(data)")
                    
                    let jsonDecoder = JSONDecoder()
                    jsonDecoder.dateDecodingStrategy = .iso8601
                    
//                    let dataTable = try? jsonDecoder.decode(DataResponse.self, from: data)
//                    print(dataTable ?? "nothing fetched from " + "\(endpoint.urlRequest)")
                    
                    return Just(data)
                        .decode(type: DataResponse.self, decoder: jsonDecoder)
                        .mapError({_ in APIError.decodingError})
                        .eraseToAnyPublisher()
                } else {
                    return Fail(error: APIError.errorCode(response.statusCode)).eraseToAnyPublisher()
                }
            }
            .eraseToAnyPublisher()
    }
}
