import SwiftUI

struct AdvertiseView: View {
    var manual = "광고상품 영역으로 배달예상시간 및 앱 사용이력(맞춤 서비스 제공에 동의한 사용자)을 고려하여 정렬됩니다."
    @State var isManualView : Bool = false;
    @State var buttonSelected : Int = 1;
    let advertises = [
        Advertise(image : "24시서울감자탕",restaurant: "24시 서울 감자탕", eval: 4.9, leastDeliveryMin: 32, mostDeliveryMin: 47, leastCost: 14000, leastDeliveryCost: 0, mostDeliveryCost: 3000, distance: 0.4, isCoupon: false, isPacking: true, isReservation: false),
        Advertise(image : "고기반햄반김치찌개&김치찜공릉점",restaurant: "고기반햄반 김치찌개&김치찜 공릉점", eval: 5.0, leastDeliveryMin: 39, mostDeliveryMin: 54, leastCost: 11000, leastDeliveryCost: 0, mostDeliveryCost: 2000, distance: 0.4, isCoupon: false, isPacking: true, isReservation: false),
        Advertise(image : "찜닭&닭도리명가",restaurant: "찜닭&닭도리명가", eval: 4.9, leastDeliveryMin: 50, mostDeliveryMin: 65, leastCost: 12000, leastDeliveryCost: 500, mostDeliveryCost: 2500, distance: 1.3, isCoupon: false, isPacking: false, isReservation: false)
    ]
    let buttons = ["배달팁 낮은 순", "기본순", "주문 많은 순", "별점 높은 순", "가까운 순", "찜 많은 순", "최소주문금액"]
    
    var body: some View {
        
        VStack {
            HStack{
                Text("우리 동네 맛집 배달")
                    .font(.system(size : 20))
                    .fontWeight(.bold)
                Image("house")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 25, height: 25)
                Button(action:{self.isManualView.toggle()}){
                    HStack{
                        Text("광고")
                            .font(.system(size : 11))
                        Image(systemName: "questionmark.circle")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 11)
                    }
                }
                .foregroundColor(.black)
                Spacer()
            }
            ZStack{
                ScrollView(.horizontal, showsIndicators: false){
                    HStack{
                        ForEach(0..<buttons.count) { button in
                            Button(action: {
                                self.buttonSelected = button
                            }){
                                Text(buttons[button])
                                    .font(.system(size : 12))
                            }
                            .foregroundColor(self.buttonSelected == button ? Color("lightBrown") : .gray)
                            .padding(.all, 9.0)
                            .background(self.buttonSelected == button ? Color("lightWhite"): Color.white)
                            .clipShape(Capsule())
                        }
                    }
                    .frame(height: 60)
                }
                if(isManualView){
                    Text(manual)
                        .padding()
                        .font(.system(size : 11))
                        .foregroundColor(.gray)
                        .background(RoundedRectangle(cornerRadius: 5).fill(Color("lightGray")))
                }
            }
            Spacer()
            VStack {
                ForEach(0..<advertises.count) { advertise in
                    NavigationLink(destination: Text(advertises[advertise].restaurant)){
                        VStack(alignment: .leading){
                            Image(advertises[advertise].image)
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(width: UIScreen.main.bounds.size.width*19/20,
                                       height : UIScreen.main.bounds.size.height/5)
                                .clipped()
                            
                            HStack{
                                HStack(spacing: 0) {
                                    Text(advertises[advertise].restaurant+"  ")
                                        .font(.system(size : 15))
                                        .fontWeight(.bold)
                                    
                                    Image(systemName: "star.fill")
                                        .foregroundColor(.yellow)
                                    Text(String(advertises[advertise].eval))
                                        .font(.system(size : 15))
                                        .fontWeight(.bold)
                                }
                                
                                Spacer()
                                HStack(spacing: 0){
                                    Image(systemName:"clock")
                                    Text(String(advertises[advertise].leastDeliveryMin) + "~")
                                    Text(String(advertises[advertise].mostDeliveryMin)+"분")
                                }
                                .padding(.all, 5)
                                .background(Color("lightGray"))
                                .clipShape(Capsule())
                            }
                            .padding(.horizontal, 10.0)
                            
                            HStack{
                                Text("최소주문")
                                    .foregroundColor(.gray)
                                Text(String(advertises[advertise].leastCost)+"원")
                                Text("・배달팁")
                                    .foregroundColor(.gray)
                                Text(String(advertises[advertise].leastDeliveryCost) + "원~")
                                Text(String(advertises[advertise].mostDeliveryCost)+"원")
                                Text("・")
                                    .foregroundColor(.gray)
                                Text(String(advertises[advertise].distance) + "km")
                            }
                            .padding(.horizontal, 10)
                        }
                        .font(.system(size : 10))
                        .foregroundColor(.black)
                    }
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    
                }
            }
        }
        .padding(12)
    }
}

struct AdvertisingView_Previews: PreviewProvider {
    static var previews: some View {
        AdvertiseView()
    }
}
