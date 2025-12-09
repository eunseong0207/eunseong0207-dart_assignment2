//1. Score와 StudentScore 클래스를 구성하기
/// class(Score) : 붕어빵틀(클래스) | int score : 팥,슈크림(변수) | showInfo : 조리법(메서드)
class Score {
  int scores;

  Score(this.scores); // 밑에서 500 받음

  void showInfo() {
    print("점수는 : $scores"); // $ : 값을 받아옴 , $안치면 텍스트임
  }
}

// 점수(int) 는 super(...) 활용해야함
class StudentScore extends Score {
  String name;

  StudentScore(this.name, int scores) : super(scores);
  @override
  void showInfo() {
    print("이름은 : $name , 점수는 : $scores");
  }
}
// 상속
// class [자식 클래스 이름] extends [부모 클래스 이름] { … }

void main() {
  Score puff = Score(500);
  puff.showInfo();
  StudentScore names = StudentScore('힘들어요', 1818);
  names.showInfo();
}
