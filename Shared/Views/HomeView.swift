//
//  HomeView.swift
//  CBInvestor (iOS)
//
//  Created by jk on 2021/9/1.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        RowView(row:Row.dummyData)
            .padding()
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
