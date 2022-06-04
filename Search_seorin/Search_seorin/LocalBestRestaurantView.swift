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
    @State var isAdvertiseView : Bool = false
    var body: some View {
        VStack{
            HStack{
                Text("요즘 우리동네 인기 맛집")
                Image("house")
                Button(action: {
                    isAdvertiseView.toggle()
                }){
                    Text("광고")
                    Image(systemName: "questionmark.circle")
                }
            }
            ZStack{
                ScrollView(.horizontal, showsIndicators: false){
                    HStack{
                        ForEach(0..<localRestaurants.count) {property in
                            RestuarantView(restaurant: localRestaurants[property])
                        }
                    }
                }
            }
        }
    }
}

struct LocalBestRestaurantView_Previews: PreviewProvider {
    static var previews: some View {
        LocalBestRestaurantView()
    }
}
