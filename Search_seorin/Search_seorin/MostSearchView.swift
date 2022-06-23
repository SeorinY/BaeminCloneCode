import SwiftUI

struct MostSearchView: View {
//    var mostSearchList = ["설빙", "빙수", "베스킨라빈스", "과일", "닭발", "팥빙수", "파리바게뜨", "타코야끼", "이디야커피", "공차"]
    var mostSearchList = [MostSearch(1, "설빙", "frequencyDown"), MostSearch(2, "빙수", "frequencyDown"), MostSearch(3, "베스킨라빈스", "frequencyUp"), MostSearch(4, "과일", "frequencyUp"), MostSearch(5, "닭발", "frequencyUp"), MostSearch(6, "팥빙수", "frequencyUp"), MostSearch(7, "파리바게뜨", "frequencyUp"), MostSearch(8, "타코야끼", "frequencyUp"), MostSearch(9, "이디야커피", "newKeyword"), MostSearch(10, "공차", "frequencyUp")]
    
    var keywordImage = ["firstKeywordImage", "secondKeywordImage", "thirdKeywordImage"]
    var reloadTime : String = "06.22 21:00 기준"
    var body: some View {
        VStack{
            HStack{
                VStack(alignment: .leading){
                    Text("가장 많이")
                        .fontWeight(.semibold)
                    Text("검색하고 있어요")
                        .fontWeight(.semibold)
                    Text(reloadTime)
                        .foregroundColor(.secondary)
                        .font(.system(size : 12))
                }
                Spacer()
                Image("popularCharacter")
                    .resizable()
                    .frame(width: 70 , height: 70)
            }
            HStack{
                VStack(alignment: .leading, spacing: 30){
                    ForEach(0..<5) {property in
                        NavigationLink(destination: Text(mostSearchList[property].name)){
                            HStack{
                                if(property < 3){
                                    Image(keywordImage[property])
                                        .resizable()
                                        .frame(width: 20, height:20)
                                }else{
                                    Text(String(property+1))
                                }
                                Text(mostSearchList[property].name)
                                Spacer()
                                Image(mostSearchList[property].image)
                                    .resizable()
                                    .frame(width: 20, height:20)
                            }
                        }
                    }
                }
                .foregroundColor(.black)
                Spacer()
                VStack(alignment: .leading, spacing: 30){
                    ForEach(5..<10) {property in
                        NavigationLink(destination:Text(mostSearchList[property].name)){
                            HStack{
                                Text(String(property+1))
                                Text(mostSearchList[property].name)
                                Spacer()
                                Image(mostSearchList[property].image)
                                    .resizable()
                                    .frame(width: 20, height:20)
                            }
                        }
                    }
                }
                .foregroundColor(.black)
                Spacer()
            }
        }
        .padding()
    }
}

struct MostSearchView_Previews: PreviewProvider {
    static var previews: some View {
        MostSearchView()
    }
}
