import SwiftUI

struct RecomendKeywordView: View {
    var keyword = ["#샴푸", "#제습제", "#기저귀", "#비타민", "#핫도그", "#제육볶음"]
    var body: some View {
        VStack(alignment: .leading){
            Text("B마트 MD 추천 키워드")
                .fontWeight(.semibold)
                .padding()
            ScrollView(.horizontal, showsIndicators: false){
                HStack{
                    ForEach(0..<keyword.count){property in
                        NavigationLink(destination: Text(keyword[property])){
                            Text(keyword[property])
//                                .font(.system(size : 12))
                                .foregroundColor(Color("buttonTextColor"))
                                .padding(10.0)
                                .background(Color("buttonbackgroundColor"))
                                .clipShape(Capsule())
                        }
                    }
                }
                .padding(.horizontal, 10)
            }
        }
    }
}

struct RecomendKeywordView_Previews: PreviewProvider {
    static var previews: some View {
        RecomendKeywordView()
    }
}
