//
//  RestuarantView.swift
//  Search_seorin
//
//  Created by Mac Book Pro on 2022/06/03.
//

import SwiftUI

struct RestuarantView: View {
    var restaurant : Restaurant!
    
    var body: some View {
        var deliveryCost : String = "\(restaurant.leastDeliveryCost)원~ \(restaurant.mostDeliveryCost)원"
        var deliverTime : String = "\(restaurant.leastDeliveryTime)~\(restaurant.mostDeliveryTime)분"
        VStack{
            Image(restaurant!.image)
                .resizable()
                .aspectRatio(contentMode : .fill)
                .frame(width: 145, height: 145)
                .cornerRadius(10.0)
            HStack{
                Text(restaurant!.name)
                    .fontWeight(.semibold)
                    .lineLimit(1)
                    .fixedSize(horizontal: false, vertical: true)
                Spacer()
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
                Text(String(restaurant!.rank))
            }
            .foregroundColor(.black)
            HStack{
                //스트링 안에 변수 넣는 방법 알아와서 넣어서 구현허기
                Text("배달팁 ")
                    .foregroundColor(.secondary)
                Text(deliveryCost)
                    .foregroundColor(.black)
                Spacer()
            }
            HStack{
                HStack{
                    Image(systemName: "clock")
                    Text(deliverTime)
                }
                .font(.system(size : 10))
                .foregroundColor(.black)
                .padding(5)
                .background(Color(.secondarySystemBackground))
                .clipShape(Capsule())
                Spacer()
            }
        }
        .font(.system(size : 12))
        .frame(width: 145)
        .padding()
    }
}

struct RestuarantView_Previews: PreviewProvider {
    static var previews: some View {
        RestuarantView()
    }
}
