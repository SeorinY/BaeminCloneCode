import SwiftUI

struct BannerView: View {
    let eventImg = ["Banner_1_1", "Banner_2", "Banner_3", "Banner_4", "Banner_5", "Banner_6", "Banner_7", "Banner_8", "Banner_9", "Banner_10", "Banner_11", "Banner_12", "Banner_13"]
//    @State var imgSelected : Int?
    var body: some View {
//        let drag =  DragGesture()
//            .onChanged{
//                a = $0.translation.width
//            }
//            .onEnded{
//                if $0.translation.width > 5{
//                    imgNum = imgNum + 1
//                }else if $0.translation.height < -5{
//                    if imgNum == 0{
//                        imgNum = 13
//                    }
//                    imgNum = imgNum - 1
//                }
//            }
//        NavigationView{
            ScrollView(.horizontal, showsIndicators: false){
                HStack{
                    ForEach(0..<eventImg.count){img in
                        NavigationLink(destination: Text(eventImg[img])){
                            Image(eventImg[img])
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: UIScreen.main.bounds.size.width)
                        }
                        
                    }
                }
            }
//        }
    }
}

struct BannerView_Previews: PreviewProvider {
    static var previews: some View {
        BannerView()
    }
}
