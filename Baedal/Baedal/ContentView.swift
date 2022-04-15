import SwiftUI

struct ContentView: View {
    @State var isAddressView : Bool = true;
    let MenuButton = [" 배민1 ", " 배달 ", " 포장 ", " B마트 ", " 배민스토어 ", " 쇼핑라이브 ", " 선물하기 ", " 전국별미 "]
    @State var buttonSelected: Int = 1
    
    var body: some View{
        let drag = DragGesture()
            .onChanged{
                if $0.translation.height > 200{
                    isAddressView = true
                }else if $0.translation.height < -200 {
                    isAddressView = false
                }
            }
        NavigationView{
            NavigationView{
                VStack{
                    BannerView()
                    RecommendView()
                        .frame(alignment: .leading)
                        .toolbar{
                            ToolbarItemGroup(placement: .navigationBarLeading){
                                ScrollView(.horizontal, showsIndicators: false){
                                    HStack{
                                        ForEach(0..<MenuButton.count){ button in
                                            NavigationLink(destination: Text(MenuButton[button])){
                                                Button(action: {
                                                    self.buttonSelected = button
                                                    print("hello!")
                                                }){
                                                    Text(MenuButton[button])
                                                }
                                                .foregroundColor(self.buttonSelected == button ? .white : .gray)
                                                .padding(.all, 9.0)
                                                .background(self.buttonSelected == button ? Color("BaeminColor"): Color.white)
                                                .clipShape(Capsule())
                                            }
                                        }
                                    }
                                }
                            }
                            ToolbarItemGroup(placement: .bottomBar){
                                ZStack {
                                    Section{
                                        HStack(alignment: .top) {
                                            Button(action: {print("baemin1")}){
                                                Image("검색")
                                                    .resizable()
                                                    .aspectRatio(contentMode : .fit)
                                            }
                                            Spacer()
                                            Button(action: {print("baemin1")}){
                                                Image("찜")
                                                    .resizable()
                                                    .aspectRatio(contentMode : .fit)
                                            }
                                            Spacer()
                                                .frame(width: 100)
                                            Button(action: {print("baemin1")}){
                                                Image("주문내역")
                                                    .resizable()
                                                    .aspectRatio(contentMode : .fit)
                                            }
                                            Spacer()
                                            Button(action: {print("baemin1")}){
                                                Image("my배민")
                                                    .resizable()
                                                    .aspectRatio(contentMode : .fit)
                                            }
                                        }
                                        .padding(.bottom, 50)
                                    }
                                    .padding([.leading, .trailing], 24.0)
                                    .frame(height: 109.0)
                                    .background(RoundedRectangle(cornerRadius: 20).fill(.white))
                                    .clipped()
                                    .shadow(radius: 20, y: 18)
                                    Button(action: {print("baemin1")}){
                                        Image("배민")
                                            .resizable()
                                            .frame(width: 70, height: 70)
                                            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                                            .aspectRatio(contentMode : .fill)
                                            .shadow(radius: 1, x: 2, y: 2)
                                    }
                                    .padding(.bottom, 50.0)
                                }
                            }
                        }
                }
                .gesture(drag)
            }
            .toolbar{
                ToolbarItem(placement : .navigationBarLeading){
                    if(isAddressView){
                        HStack{
                            NavigationLink(destination: Text("HomePage")){
                                Image(systemName: "arrow.left")
                            }
                            .foregroundColor(.black)
                            Spacer()
                            
                            NavigationLink(destination: Text("주소 설정")){
                                Text("우리집")
                                Image(systemName: "chevron.down")
                            }
                            .foregroundColor(.black)
                            Spacer()
                        }
                        .frame(width: UIScreen.main.bounds.size.width)
                    }
                }
            }
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .previewDevice("iPhone 12")
        }
    }
}
