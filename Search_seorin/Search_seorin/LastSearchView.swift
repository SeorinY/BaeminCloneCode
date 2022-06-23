//
//  LastSearchView.swift
//  Baedal
//
//  Created by Mac Book Pro on 2022/06/03.
//

import SwiftUI

struct LastSearchView: View {
    @State private var showAdvertisement = false
    let searchHistory = ["커피", "치킨", "피자", "떡볶이", "햄버거"]
//    var colWidth = CGFloat(100)
    var body: some View {
        VStack {
            HStack{
                Text("최근 검색어")
                    .fontWeight(.semibold)
                Spacer()
                Button(action: {print("전체삭제")}){
                    Text("전체삭제")
                        .font(.system(size : 10))
                        .foregroundColor(.black)
                        .padding(5)
                        .background(Color(.secondarySystemBackground))
                        .clipShape(Capsule())
                }
            }
            ScrollView(.horizontal, showsIndicators: false){
                HStack{
                    ForEach(0 ..< searchHistory.count) { property in
                        let keyword = searchHistory[property]
                        HStack{
                            NavigationLink(destination: Text(keyword)){
                                Text(keyword)
                                    .font(.system(size : 15))
                                    .padding(.leading, 10.0)
                                    
                            }
                            Button(action: {print("x")}){
                                Image(systemName: "xmark")
                                    .resizable()
                                    .frame(width: 10, height: 10)
                            }
                            .padding(.trailing, 10.0)
                        }
                        .padding(5)
                        .background(Color("buttonbackgroundColor"))
                        .foregroundColor(Color("buttonTextColor"))
                        .clipShape(Capsule())
                    }
                }
            }
            Button(action: {
                showAdvertisement = true
            }){
                Image("advertiseImage")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(10.0)
            }
            .sheet(isPresented: self.$showAdvertisement){
                Image("advertiseImage")
                    .resizable()
            }
        }
        .padding()
    }
}

struct LastSearchView_Previews: PreviewProvider {
    static var previews: some View {
        LastSearchView()
    }
}
