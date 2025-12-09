//1. Score와 StudentScore 클래스를 구성하기
/// class(Score) : 붕어빵틀(클래스) | int score : 팥,슈크림(변수) | showInfo : 조리법(메서드)
class Score {
  int scores;

  Score(this.scores); // 밑에서 500 받음

  void showInfo() {
    print("점수는 : $scores"); // $ : 값을 받아옴 , $안치면 텍스트임
  }
}
// 상속
// class [자식 클래스 이름] extends [부모 클래스 이름] { … }

void main() {
  Score puff = Score(500);
  puff.showInfo(); 
}
