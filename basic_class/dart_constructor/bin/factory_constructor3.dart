class Static {
  Static._instance();
  static final staticobj = Static._instance();
  factory Static() => staticobj;
}

void main(List<String> args) {
  var s = Static();
  print(s);
  var s1 = Static();
  print('identical: ${identical(s, s1)}');
}
