// 1. Score와 StudentScore 클래스 구성하기

class Score {
  int data;

  Score(this.data);

  void showInfo() {
    print("점수는 : $data"); // $ : 값을 받아옴 , $안치면 텍스트임
  }
}

// 상속
// class [자식 클래스 이름] extends [부모 클래스 이름] { … }
// 점수(int) 는 super(...) 활용해야함
class StudentScore extends Score {
  String name;

  StudentScore(this.name, int scores) : super(scores);
  @override
  void showInfo() {
    //showInfo : 프린트 말고 할 수 있는게 없음
    print("이름은 : $name , 점수는 : $data");
  }
}