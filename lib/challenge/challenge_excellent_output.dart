// 상의 학생 성적 분석 프로그램을 만들어봅니다.
import 'dart:io';
// 1. 학생들 중 우수생을 출력하는 기능

void selectMenu() {
  String menuAsk = stdin.readLineSync()!;

  if (menuAsk == "1") {
    excellntscore(); // 우수생을 출력하는 점수를 출력하는 기능이 들어간 함수명을 넣어
  } else if (menuAsk == "2") {
    averagescore(); // 전체 평균 점수를 출력하는 기능이 들어간 함수명을 넣어
  }
}

void excellntscore() {
  print("우수생 점수 출력");
}

void averagescore() {
  print("평균점수출력");
}
