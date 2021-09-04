//
//  RowView.swift
//  CBInvestor (iOS)
//
//  Created by jk on 2021/9/1.
//

import SwiftUI
import URLImage

struct RowView: View {
    let row: Row
    var body: some View {
        Text(row.id)
    }
}

struct RowView_Previews: PreviewProvider {
    static var previews: some View {
        //RowView()
        RowView(row: Row.dummyData)
    }
}
