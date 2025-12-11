// 2. 파일로부터 데이터 읽어오기

import 'dart:io';
import 'package:grade_confirmation_program/class_composition.dart';

// loadStudentData - 함수명
List<StudentScore> loadStudentData(String filePath) {
  List<StudentScore> scoreSave = [];

  // stdout : 터미널로 출력을 보내는 통로
  // stdout.write("어떤 학생의 점수를 확인 하시겠습니까?");
  // stdin : 키보드 입력값 // stdin.readLineSync() => String? 타입의 값으로 반환하는 메서드
  // String scoreAsk = stdin.readLineSync()!; // stdin : 표준입력 (키보드 입력값 등)

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
      // 2-1 parts라는 변수의 인덱스 및 int.parse를 사용하여 list에 String와 int를 같이 담아주는 작업
      StudentScore n = StudentScore(parts[0], int.parse(parts[1]));
      // int.parse : 문자열에서 숫자를 인식해서 숫자로 바꿔줌
      // 2-2
      scoreSave.add(n); // n 이라는 요소를 추가해줌
    }
  } catch (e) {
    print("학생 데이터를 불러오는 데 실패했습니다: $e");
    exit(1);
  }
  return scoreSave;
}
