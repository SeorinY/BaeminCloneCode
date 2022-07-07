//
//  BannerView.swift
//  Search_seorin
//
//  Created by Mac Book Pro on 2022/06/23.
//

import SwiftUI

struct BannerView: View {
    @State var banner = [Banner("banner1"), Banner("banner2")]
//    var banner = ["banner1", "banner2"]
//    @State var showBanner : Bool = false
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false){
            HStack{
                ForEach(0..<banner.count){property in
                    Button(action: {
                        banner[property].showBanner = true
                    }){
                        Image("banner\(property)")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                    }
                    .sheet(isPresented: self.$banner[property].showBanner){
                        Image("banner\(property)")
                            .resizable()
                    }
                }
            }
        }
    }
}

struct BannerView_Previews: PreviewProvider {
    static var previews: some View {
        BannerView()
    }
}
