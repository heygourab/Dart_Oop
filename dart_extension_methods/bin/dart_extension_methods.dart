import 'dart:math';

extension Stringformatting on String {
  String get capitalized => this[0].toUpperCase() + substring(1);
  String get reverseMod => split('').reversed.join();
}

extension Lucklynumber on num {
  int get lucklynumber => 69;
}

void main(List<String> args) {
  var name = 'gourab';
  print(name.reverseMod);
  print(69.lucklynumber == 69);
}
