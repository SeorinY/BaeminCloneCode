import SwiftUI

struct MenuView: View {
    let menuImg = ["default", "japaneseFood", "chineseFood", "chicken", "alum", "cafe", "snackBar", "soup", "pizza", "westernFood", "meet", "porkFeet_bossam", "asianFood", "fastFood", "midnightSnack", "lunchBox", "brandMenu", "restaurantRanking"]
    let menuName = ["", "돈까스・회・일식", "중식", "치킨", "백반・죽・국수", "카페・디저트", "분식", "찜・탕・찌개", "피자", "양식", "고기・구이", "족발・보쌈", "아시안", "패스트푸드", "야식", "도시락", " 브랜드관", "맛집랭킹"]
    var body: some View {
        ZStack {
            Image("menuBackgroundImg")
                .resizable()
            VStack{
                HStack(spacing : 0){
                    ForEach(1..<6) { img in
                        NavigationLink(destination: Text(menuName[img])){
                            VStack {
                                Image(menuImg[img])
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width:UIScreen.main.bounds.size.width/8
                                    )
                                Text(menuName[img])
                                    .fontWeight(.black)
                                    .foregroundColor(.black)
                                    .font(.system(size : 12))
                                    .lineLimit(1)
                            }
                            .frame(width: UIScreen.main.bounds.size.width / 5)
                        }
                    }
                }
                HStack(spacing : 0){
                    ForEach(6..<11) { img in
                        NavigationLink(destination: Text(menuName[img])){
                            VStack {
                                Image(menuImg[img])
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width:UIScreen.main.bounds.size.width/8)
                                Text(menuName[img])
                                    .fontWeight(.black)
                                    .foregroundColor(.black)
                                    .font(.system(size : 12))
                            }
                            .frame(width: UIScreen.main.bounds.size.width / 5)
                        }
                    }
                }
                HStack(spacing : 0){
                    ForEach(11..<16) { img in
                        NavigationLink(destination: Text(menuName[img])){
                            VStack {
                                Image(menuImg[img])
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width:UIScreen.main.bounds.size.width/8)
                                Text(menuName[img])
                                    .fontWeight(.black)
                                    .foregroundColor(.black)
                                    .font(.system(size : 12))
                            }
                            .frame(width: UIScreen.main.bounds.size.width / 5)
                        }
                    }
                }
                HStack(spacing : 0){
                    ForEach(16..<21) { img in
                        if img > 17{
                            VStack {
                                Image(menuImg[0])
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width:UIScreen.main.bounds.size.width/8)
                                Text(menuName[0])   
                            }
                            .frame(width: UIScreen.main.bounds.size.width / 5)
                        }
                        else{
                            NavigationLink(destination: Text(menuName[img])){
                                VStack {
                                    Image(menuImg[img])
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width:UIScreen.main.bounds.size.width/8)
                                    Text(menuName[img])
                                        .fontWeight(.black)
                                        .foregroundColor(.black)
                                        .font(.system(size : 12))
                                }
                                .frame(width: UIScreen.main.bounds.size.width / 5)
                            }
                        }
                    }
                }
            }
            .padding(.vertical, 10.0)
        }
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}
