// 실행 전용

import 'dart:io';
import 'package:score_advanced/score.dart';

void main(List<String> arguments) {
  //
  // loadStudentData("lib/models/students.txt");
  // studentlist = 홍길동 김철수 객체가 저장됨
  final studentlist = loadStudentData("lib/models/students.txt");

  // stdout : 터미널로 출력을 보내는 통로
  stdout.write("어떤 학생의 점수를 확인 하시겠습니까?");
  // stdin : 키보드 입력값 // stdin.readLineSync() => String? 타입의 값으로 반환하는 메서드
  String scoreAsk = stdin.readLineSync()!; // stdin : 표준입력 (키보드 입력값 등)
  // 홍길동 김철수 가져오는 값

  StudentScore? sss; // 널 타입 객체
  for (var person in studentlist) {
    if (person.name == scoreAsk) {
      sss = person;
    }
  }

  if (sss == null) {
    print("잘못된 학생 이름을 입력하셨습니다. 다시 입력해주세요.");
  } else {
    sss.showInfo();
  }
}
