//
//  HomeView.swift
//  CBInvestor (iOS)
//
//  Created by jk on 2021/9/1.
//

import SwiftUI

struct HomeView: View {
    @StateObject var dataFromSite: DataFromSite = DataFromSite(service: JslDataService())
    var body: some View {
        Group {
            switch dataFromSite.state {
            case .loading:
                ProgressView()
            case .failed(let error):
                ErrorView(error: error, handler: dataFromSite.getDataRows)
            case .success(let rows):
                NavigationView {
                    List(rows) { row in
                        RowView(row: row)
                    }
                    .navigationTitle(Text("Rows"))
                }
                
            }
        }.onAppear(perform: dataFromSite.getDataRows)
//        RowView(row:Row.dummyData)
//            .padding()
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
