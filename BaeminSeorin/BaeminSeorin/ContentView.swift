//
//  ContentView.swift
//  BaeminSeorin
//
//  Created by Mac Book Pro on 2022/07/01.
//

import SwiftUI

struct ContentView: View {
    @State var text: String=""
    var body: some View {
        NavigationView{
            ScrollView(.vertical, showsIndicators: false){
                VStack{
                    LastSearchView()
                        .background(.white)
                    LocalBestRestaurantView()
                        .background(.white)
                    MostSearchView()
                        .background(.white)
                    RecomendKeywordView()
                        .background(.white)
                }
                .background(Color(.secondarySystemBackground))
            }
            .toolbar{
                ToolbarItem(placement: .navigationBarLeading){
                    HStack {
                        Button(action: {print("뒤로가기")}){
                            Image(systemName: "arrow.left")
                                .foregroundColor(.black)
                        }
                        HStack{
                            Image(systemName: "magnifyingglass")
                            TextField("검색어를 입력해주세요", text: $text)
                        }
                        .frame(width: UIScreen.main.bounds.size.width*7/10)
                        .padding()
                        .foregroundColor(.primary)
                        .background(Color(.secondarySystemBackground))
                        .cornerRadius(10.0)
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        
        ContentView()
    }
}
