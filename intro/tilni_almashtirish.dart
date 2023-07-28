import '../servce/ioservice.dart';
import '../servce/langControllar.dart';

class TIlniAlmashtirish {
  IOService io;
  LangControllar lgC;

  TIlniAlmashtirish({
    required this.io,
    required this.lgC,
  });

  void language() {
    print('''
        Tilni almashtirish
    ____________________
   | 1. Uzbek           |
   |____________________|
   | 2. Rus             |
   |____________________|
   | 3. English         |
   |____________________|
''');

    int number = io.readNumber('Raqamlardan birini kiriting :');

    if (number > 0 && number < 4) {
      switch (number) {
        case 1:
          {
            for (var e in lgC.listUZ) {
              print('''
             $e
 ''');
            }
          }
          break;

        case 2:
          {
            for (var e in lgC.listRu) {
              print('''
             $e
 ''');
            }
          }
          break;
        case 3:
          {
            for (var e in lgC.listEng) {
              print('''
             $e
 ''');
            }
          }
          break;
      }
    } else {
      print('Siz xato raqam kiritdingiz qaytadan urining');
      language();
    }
  }
}
