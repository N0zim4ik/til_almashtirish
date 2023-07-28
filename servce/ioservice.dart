import 'dart:io';

class IOService {
  int readNumber(String str) {
    print(str);
    return int.tryParse(stdin.readLineSync()!) ?? 0;
  }
}
