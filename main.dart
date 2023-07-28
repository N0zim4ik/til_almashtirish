import 'intro/tilni_almashtirish.dart';
import 'servce/ioservice.dart';
import 'servce/langControllar.dart';

void main(List<String> args) {
  TIlniAlmashtirish(io: IOService(), lgC: LangControllar()).language();
}
