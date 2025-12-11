// 실행 전용

import 'dart:io';
import 'package:score_advanced/score.dart';

void main(List<String> arguments) {
  //
  // loadStudentData("lib/models/students.txt");
  // studentlist = 홍길동 김철수 객체가 저장됨
  final studentlist = loadStudentData("lib/models/students.txt");

  while (true) {
    // stdout : 터미널로 출력을 보내는 통로
    stdout.write("어떤 학생의 점수를 확인 하시겠습니까?(q:종료)"); // 나만의 기능 q로 종료값 추가
    // stdin : 키보드 입력값 // stdin.readLineSync() => String? 타입의 값으로 반환하는 메서드
    String scoreAsk = stdin.readLineSync()!; // stdin : 표준입력 (키보드 입력값 등)
    // //나만의 기능 - 1
    // 종료값 설정 : "잘못된 학생 ....다시 입력.." 후 종료가 되지 않아
    // 만약에 scoreAsk = q 라면 "끝"을 출력 하고 종료가 되도록 설정
    if (scoreAsk == "q") {
      print("끝");
      return;
    }
    // 홍길동 김철수 가져오는 값

    StudentScore? whoPerson; // 널 타입 변수
    for (var people in studentlist) {
      if (people.name == scoreAsk) {
        whoPerson = people;
      }
    }
    // 만약에 학생 목록 중 다른 값이 입력되면 출력되도록 추가
    if (whoPerson == null) {
      print("잘못된 학생 이름을 입력하셨습니다. 다시 입력해주세요.");
    } else {
      whoPerson.showInfo();
      saveResults("이름은 : ${whoPerson.name} , 점수는 : ${whoPerson.data}");
    }
  }
}

// 4. 프로그램 종료 후 결과를 파일에 저장하는 기능
// 3번 기능이 종료 된 후 결과를 result.txt 파일에 저장하기
// 만약 질문이 "참"이라면 참인 결과값을 result.txt 파일에 저장한다
// 저장 형태는 "이름 : name ,점수 : score"로 한다.
// 저장이 완료되면 "저장이 완료되었습니다" 를 출력해준다.
// 36번줄이 47번 content에 담겨진거
void saveResults(String content) {
  try {
    final file = File("lib/models/result.txt"); // 저장 경로
    file.writeAsStringSync(content);
    print("저장이 완료되었습니다.");
  } catch (e) {
    print("저장에 실패했습니다: $e");
  }
}
