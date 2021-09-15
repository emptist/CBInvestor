//
//  DataFromSite.swift
//  CBInvestor (iOS)
//
//  Created by jk on 2021/8/31.
//

import SwiftUI
import Combine

protocol DataViewModel {
    func getDataRows()
}

class DataFromSite: ObservableObject, DataViewModel {
    //private
    let service: DataService
    private(set) var rows = Array<Row>()
    @Published private(set) var state: ResultState = .loading
    private var cancellables = Set<AnyCancellable>()
    
    init(service: DataService) {
        self.service = service
    }
    
    func getDataRows() {
        state = .loading
        let cancellable = service
            .request(from: .getItems)
            .sink(receiveCompletion: { res in
                switch res {
                case .finished:
                    // answer rows
                    self.state = .success(content: self.rows)
                case .failure(let error):
                    // return error
                    self.state = .failed(error: error)
                }
            }, receiveValue: { response in
                self.rows = response.rows
                print("\(response.rows)")
            })
        self.cancellables.insert(cancellable)
    }
}
