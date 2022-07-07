//
//  LocalBestRestaurantView.swift
//  Search_seorin
//
//  Created by Mac Book Pro on 2022/06/03.
//

import SwiftUI

struct LocalBestRestaurantView: View {
    var localRestaurants = [
        Restaurant(name: "태릉피자", image: "태릉피자", rank: 5.0, leastDeliveryCost: 0, mostDeliveryCost: 1000, leastDeliveryTime: 15, mostDeliveryTime: 25),
        Restaurant(name: "우지커피 중랑구청점", image: "우지커피 중랑구청점", rank: 4.9, leastDeliveryCost: 1500, mostDeliveryCost: 4400, leastDeliveryTime: 23, mostDeliveryTime: 38),
        Restaurant(name: "강릉초당골 짬뽕순두부", image: "강릉초당골 짬뽕순두부", rank: 4.9, leastDeliveryCost: 2000, mostDeliveryCost: 4500, leastDeliveryTime: 49, mostDeliveryTime: 64)
    ]
    @State var showAdvertise : Bool = false
    var body: some View {
        VStack{
            HStack{
                Text("요즘 우리동네 인기 맛집")
                    .fontWeight(.semibold)
                Image("house")
                    .resizable()
                    .frame(width: 20, height: 20)
                Button(action: {
                    showAdvertise.toggle()
                }){
                    Text("광고")
                    Image(systemName: "questionmark.circle")
                }
                .font(.system(size : 12))
                .foregroundColor(.black)
                .popover(isPresented: $showAdvertise){
                    Text("오픈리스트 상품을 구매한 가게 중에서 거리, 주문수 등을 고려해 정렬합니다. (단, 첫 번째 가게는 클릭당 과금방식의 광고상품 가입 가게가 노출될 수 있습니다")
                        .padding()
                        .background(Color(.secondarySystemBackground))
                }
                Spacer()
            }
            .padding()
            ScrollView(.horizontal, showsIndicators: false){
                HStack{
                    ForEach(0..<localRestaurants.count) {property in
                        NavigationLink(destination: Text(localRestaurants[property].name)){
                            RestuarantView(restaurant: localRestaurants[property])
                        }
                    }
                }
            }
//            .frame(width: UIScreen.main.bounds.size.width, alignment: .center)
        }
    }
}

struct LocalBestRestaurantView_Previews: PreviewProvider {
    static var previews: some View {
        LocalBestRestaurantView()
    }
}
