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
        
        HStack {
//            attachedImage()
//                .frame(width: 80, height: 80, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
//                //.contrast(-0.01)
//                .cornerRadius(10)
            
            HStack(alignment:.center) {
                Text("码：\(row.id)")
                Text("实价：\(row.cell.dblow)")
                Text("新: \(row.cell.price)")
                Text("率：\(row.cell.pb)")
                
            }
            
        }
    }
}

struct attachedImage: View {
    var body: some View {
        let imageUrl = "https://miro.medium.com/max/1400/1*6-G_o5PZSzppyfdLTbFu-A.png"
        let url = URL(string: imageUrl)!
        
        URLImage(url) {
            // This view is displayed before download starts
            EmptyView()
        } inProgress: { progress in
            // Display progress
            PlaceHolderView()
            //Text("Loading...")
        } failure: { error, retry in
            // Display error and retry button
            VStack {
                Text(error.localizedDescription)
                Button("Retry", action: retry)
            }
            
        } content:{ image in
            image
                .resizable()
                .aspectRatio(contentMode: .fit)
            
        }
    }
 
}

struct PlaceHolderView: View {
    var body: some View {
        Image(systemName: "photo.fill")
    }
}

//struct RowView_Previews: PreviewProvider {
//    static var previews: some View {
//        //RowView()
//        RowView(row: Row.dummyData)
//            .previewLayout(.sizeThatFits)
//    }
//}
