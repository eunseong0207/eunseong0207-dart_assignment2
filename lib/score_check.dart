// 3. 사용자로부터 입력받아 학생 점수 확인하기

import 'dart:io';
import 'class_composition.dart';
import 'file_data_load.dart';
import 'file_data_save.dart';

// 불러올 수 있는 함수명으로 변경해줌 main > scoreCheck (메인은 하나여야하기 때문입니다.)
void scoreCheck() {
  //
  // loadStudentData("lib/models/students.txt");
  // studentlist = 홍길동 김철수 객체가 저장됨
  final studentlist = loadStudentData("lib/models/students.txt");

  while (true) {
    // stdout : 터미널로 출력을 보내는 통로
    stdout.write("어떤 학생의 점수를 확인 하시겠습니까?(q:종료)"); // 나만의 기능 q로 종료값 추가
    // stdin : 키보드 입력값 // stdin.readLineSync() => String? 타입의 값으로 반환하는 메서드
    String scoreAsk = stdin.readLineSync()!; // stdin : 표준입력 (키보드 입력값 등)
    // 나만의 기능 - 1
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
