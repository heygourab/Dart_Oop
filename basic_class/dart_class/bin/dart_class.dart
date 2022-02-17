class A {
  int? _private; //this is nullable object

  int? a; //this is nullable object
  int b = 1; //this is gobal object

  final int c = 2; //this is final global object

  late int d; //this is late object
  late final int e; // this is final late object
  late final int f = 69; //this is final late object with instillation

  static int g = 6; // this is a static object
  static late int h; // this is a late static object
  static late int i = 69; //this is a late static object with instillation
  static late final int j; // this is a final late static object

  static const int k = 69; //this is a static const object
}

void main(List<String> args) {
  var a = A();
  print(a);
  print(a.b);
}
