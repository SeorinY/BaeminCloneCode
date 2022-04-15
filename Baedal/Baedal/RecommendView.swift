//
//  RecommendView.swift
//  Baedal
//
//  Created by Mac Book Pro on 2022/04/15.
//

import SwiftUI

struct RecommendView: View {
    let recommendImg = ["recommend_0", "recommend_1", "recommend_2", "recommend_3", "recommend_4", "recommend_5"]
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false){
            HStack {
                ForEach(0..<recommendImg.count) { image in
                    NavigationLink(destination: Text(recommendImg[image])){
                        Image(recommendImg[image])
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: UIScreen.main.bounds.size.width/3.8)
                    }
                }
            }
            .padding(.all, 10.0)
        }
        .frame(alignment: .leading)
    }
}

struct RecommendView_Previews: PreviewProvider {
    static var previews: some View {
        RecommendView()
    }
}
