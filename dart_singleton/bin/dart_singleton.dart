//using factory constructor.😀
class SingleTon {
  SingleTon._privateConstructor();
  static final SingleTon instance = SingleTon._privateConstructor();
  factory SingleTon() => instance;
}

//using getter and static filed.🤔
class SingleTon1 {
  SingleTon1._privateConstructor();
  static final SingleTon1 _instance = SingleTon1._privateConstructor();
  static SingleTon1 get instance => _instance;
}

//using static filed.🤨
class SingleTon2 {
  SingleTon2._privateConstructor();
  static final SingleTon2 instance = SingleTon2._privateConstructor();
}

void main() {
  SingleTon obj1 = SingleTon();
  SingleTon obj2 = SingleTon();
  print('obj1 == obj2: ${identical(obj1, obj2)}');
  SingleTon1 ob1 = SingleTon1.instance;
  SingleTon1 ob2 = SingleTon1.instance;
  print('ob1 == ob2: ${identical(ob1, ob2)}');
  SingleTon2 o1 = SingleTon2.instance;
  SingleTon2 o2 = SingleTon2.instance;
  print('o1 == o2: ${identical(o1, o2)}');
}
