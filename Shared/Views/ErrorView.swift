//
//  ErrorView.swift
//  CBInvestor (iOS)
//
//  Created by jk on 2021/9/5.
//

import SwiftUI

struct ErrorView: View {
    let error: Error
    var body: some View {
        Image(systemName: "exclamationmark.icloud.fill")
            .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
            .font(.system(size: 50,weight: .heavy))
    }
}

struct ErrorView_Previews: PreviewProvider {
    static var previews: some View {
        ErrorView(error: APIError.decodingError)
    }
}
