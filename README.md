
#  클론 코딩

- 주제 : 배달의 민족
- 팀원 : 유서린, 마경미
- 목표: 배달의 민족 iOS view 만들기
-  사용 언어 : Swift 
	- 유서린 : SwiftUI
	- 마경미 : Storyboard + UIKit 
-  예상 개발 기간 : 4월 8일 ~ 7월 말 (약 3개월)







##  스프린트 일정

|    |  기간                        | 내용           |
|---|------------------------------|----------------------|
|[1차](#1차) | 4월 7일(목) ~ 5월 4일(수) : 4주 |마경미: 배민1 view / 유서린 배달 view|
|2차 | 5월 12일(목) ~ 6월 12일(일) : 4주|공통 : 검색, 찜 View 만들기 |
|3차 |||


## commit 컨벤션
FEA: (Feature) 기능 추가  
UPD: (Update) 개선  
BUG: 버그 수정  
DOC: (Documentation) 문서화 관련된 작업  
TST: (Test) 새로운 유닛테스트를 추가하거나 기존 테스트를 수정  
BLD: (Build) 빌드 프로세스 관련 코드 혹은 스크립트를 수정  
PERF: (Performance) 계산 속도의 개선과 관련된 작업  
CLN: (Cleanup) 코드를 정리하거나 리팩토링한 작업  

## <a id="1차"/>1차 스프린트 느낀 점
#### 마경미
- 개발 기간 
	- 개발 기간은 넉넉하다고 생각한다. 
	- 이전에 만들어두었던 파일들을 사용했기 때문에 실제 개발 시간은 약 4일 정도 되었다.
	- 따라서 2차 스프린트도 시험기간을 포함하여 약 4주 정도로 잡아도 될 것 같다고 생각했다.
- 배운점
	- TabBar와 Navigation Controller를 처음 사용하였다.
	- scrollview를 사용하여 category를 분류할 수 있었는데(상단 tool bar), 이는 contents들의 넓이나 높이가 정해져야 scroll이 가능하다는 것을 깨달았다.
	- 배민 tool bar에 따라 전체적으로 가로 슬라이드가 가능하게 만들기 위해 collectionView를 중첩하여 사용하였고, 안쪽 collectionView 경우에는 code로만 작성하여 section을 나눠 사용하고, reusableView를 사용하여 header를 만들었다.
- 아쉬운점
	- 이전에 만들었던 파일들을 사용하여 시간을 많이 쓰지 않았고, 마지막에 급하게 마무리하였기 때문에 코드를 보완하지 못하였다. 조금 더 깔끔하고 재사용성을 활용한 코드를 사용할 수 있을 것 같다.
	- collectionView를 중첩하여 사용하였기 때문에 안쪽 collectionView는 storyboard를 사용하지 못 하고 code로만 작성하였는데, 다른 좋은 방법이 있을 것이라고 생각한다.
	- 반응형을 위해서 constraint를 적용하였는데, 다른 device에서 테스트해보지 않았고, 오로지 iphone 11에서만 테스트하였다.
	- 개발 기간을 조금씩 여러번 한 것이 아니여서, 한 번에 많은 내용을 commit 하다 보니까 보다 자세한 내용을 적지 못하고 체계적이지 못하였던 것 같다.
	- swiftlint 등을 활용하지 않아서 제멋대로 코드를 작성하여 파일마다 코드 스타일이 동일하지 않다.
- 2차 스프린트에서 보완할 점
	- 다른 device에서 테스트 해보기
	- constraints들을 묶어서 한 번에 적용하기 (clean code를 위하여)
	- 재사용성을 위해서 코드 나열보다는 function을 만들어 적용하기
	- swiftLint를 설치하여 적용하기
	- 가로 슬라이드 할 때 상단의 tool bar의 select 부분도 바뀌게 적용하기
#### 유서린
- 배운점
	- 첫  프로젝트인  만큼  거의  모든  기능들이  생소했다.
	- Navigation view, Navigation link, Scroll View등의  다양한  View, Text와  Image등  Label들의  배경과  프레임  조절, border 설정  등  많은  것들을  배운  스프린트였다.
	- Toolbar를  두  개  이상  만드는  법을  배우고, 각각  상단과  하단에  배치해봤다.
	- View의  프레임을  UIScreen을  사용하여  디바이스의  크기에  맞게  설정하는  방법을  알았다
	- TabBar를  사용하여  여러개의  화면을  가질  수  있다.
- 아쉬운점
	- 공부와  병행하며  개발을  진행했기  때문에  개발  막바지에  깨달은  더  좋은  방법으로  보완하지  못했다.
	- View들의  갯수가  적고  ContentView가  복잡하다.
	- AdvertiseView에서  Scroll View 가  스크롤이  되지  않은  점을  해결하지  못했다.
	- Label들의  Frame이  이상한  부분들이  있다.
	- LazyStack 과  LazyGrid 대신  HStack, VStack 만을  사용해서  불필요한  코드들이  있다.
	- TabBar로  구현해야  하는  부분을  Tool Bar 로  사용했다.
- 2차 스프린트에서 보완할 점
	- Preview 도  좋지만  Simulator도  적극적으로  사용해보자.
	- View 들을  상세하게  나눠서  좀  더  깔끔한  구조로  구현해보자.
	- LazyStack 과  LazyGrid들을  사용하여  Spacer 같은  불필요한  코드들을  최소화해보자.
	- TabBar를  사용하여  View의  하단을  구현해보자.
