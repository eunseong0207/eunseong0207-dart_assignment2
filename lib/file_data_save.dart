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
}
