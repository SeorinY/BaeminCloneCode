//
//  LastSearchView.swift
//  Baedal
//
//  Created by Mac Book Pro on 2022/06/03.
//

import SwiftUI

struct LastSearchView: View {
    let searchHistory = ["커피", "치킨", "피자", "떡볶이", "햄버거"]
    var colWidth = CGFloat(100)
    var body: some View {
        
        VStack {
            LazyVGrid(columns: [
                GridItem(.fixed(colWidth)),
                GridItem(.fixed(colWidth)),
                GridItem(.fixed(colWidth))
            ]){
                Text("최근 검색어")
                Spacer()
                Button(action: {print("hello")}){
                    Text("전체삭제")
                        .clipShape(Capsule())
                }
            }
            ScrollView(.horizontal, showsIndicators: false){
                HStack{
                    ForEach(0 ..< searchHistory.count) { property in
                        let keyword = searchHistory[property]
                        NavigationLink(destination: Text(keyword)){
                            Text(keyword)
                                .padding()
                                .background(Color.yellow)
                                .clipShape(Capsule())
//                                .foregroundColor(.yellow)
                        }
                    }
                }
            }
            //advertise 이름의 이미지 넣기
            LocalBestRestaurantView()
        }
    }
}

struct LastSearchView_Previews: PreviewProvider {
    static var previews: some View {
        LastSearchView()
    }
}
