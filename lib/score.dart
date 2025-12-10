import 'dart:io';

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
    //showInfo : 프린트 말고 할 수 있는게 없음
    print("이름은 : $name , 점수는 : $scores");
  }
}
// 상속
// class [자식 클래스 이름] extends [부모 클래스 이름] { … }

//2. 파일로부터 데이터 읽어오기
// loadStudentData - 함수명
void loadStudentData(String filePath) {
  //3. 사용자로부터 입력받아 학생 점수 확인 기능
  // 홍길동 > 홍길동 점수
  // 지은성 > 목록에 없어서 잘못된 이름을 적었다 출력 되야함 이후 올바른 홍길동 or 김철수 이름이 입력될 때 까지 반복됩니다.
  List<StudentScore> scoresave = [];

  try {
    final file = File(
      filePath,
    ); // filePath라는 변수명을 쓰는이유 : 메인에 경로를 써줌으로 loadStudentData 함수를 여러번 작성하지 않아도 됨 // 재사용성 증가
    final lines = file.readAsLinesSync(); // 텍스트를 다 가지고옴

    for (var line in lines) {
      // 한줄 한줄 가져옴
      final parts = line.split(','); // , 로 나눠준거임
      if (parts.length != 2) throw FormatException('잘못된 데이터 형식: $line');

      String name = parts[0]; // parts0 > 인덱스0번 = 글자다
      int score = int.parse(parts[1]); // parts1 > 인덱스1번 = 숫자다
      // scoresave.add(); // 네임이랑 스코어를 한번에 넣어줘야함
      // 1
      StudentScore n = StudentScore(parts[0], int.parse(parts[1]));
      // 2
      scoresave.add(n);
    }
    print("텍스트 성공적으로 불러옴");
    print(lines);
  } catch (e) {
    print("학생 데이터를 불러오는 데 실패했습니다: $e");
    exit(1);
  }
  return;
}
