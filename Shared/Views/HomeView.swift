//
//  HomeView.swift
//  CBInvestor (iOS)
//
//  Created by jk on 2021/9/1.
//

import SwiftUI

struct HomeView: View {
    @Environment(\.openURL) var openUrl
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
                    // 在此处排序有没有问题？注意这是block
                    List(rows.sorted( by: {
                        $0.cell.dblow < $1.cell.dblow
                    })) { row in
                        RowView(row: row)
                            .onTapGesture {
                                load(url: DataResponse.urlString)
                            }
                    }
                    .padding()
                    .navigationTitle(Text("Rows"))
                }
                
            }
        }.onAppear(perform: dataFromSite.getDataRows)
    }
    
    func load(url: String?) {
        guard let link = url,
              let url = URL(string: link)
        else { return }
 
        openUrl(url)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
