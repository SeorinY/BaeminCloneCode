//
//  RestuarantView.swift
//  Search_seorin
//
//  Created by Mac Book Pro on 2022/06/03.
//

import SwiftUI

struct RestuarantView: View {
    var restaurant : Restaurant?
    var body: some View {
        VStack{
            Image(restaurant!.image)
                .resizable()
                .aspectRatio(contentMode : .fill)
                .frame(width: 100, height: 100)
            HStack{
                Text(restaurant!.name)
                Image(systemName: "star.fill")
                Text(String(restaurant!.rank))
            }
            HStack{
                //스트링 안에 변수 넣는 방법 알아와서 넣어서 구현허기
                Text("배달팁")
            }
            HStack{
                Text("'")
            }
        }
    }
}

struct RestuarantView_Previews: PreviewProvider {
    static var previews: some View {
        RestuarantView()
    }
}
