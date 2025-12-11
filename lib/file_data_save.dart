// 4. 프로그램 종료 후 결과를 파일에 저장하기

import 'dart:io';

void saveResults(String content) {
  try {
    final file = File("lib/models/result.txt"); // 저장 경로
    file.writeAsStringSync(content);
    print("저장이 완료되었습니다.");
  } catch (e) {
    print("저장에 실패했습니다: $e");
  }
  exit(0);
   // exit() : 프로그램을 종료하는 함수 (가장 마지막 or 내가 원하는 끝나는 지점에 작성하기)
  // () : int 값으로 넣어줘야하고, 협업할시 0으로 끝났다 or 1로 끝났다 상대방에게 전달해주기 위한 부분
}
