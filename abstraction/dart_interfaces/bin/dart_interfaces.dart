class Father {
  final String name;
  Father({
    required this.name,
  });

  void dance() => print('i can dance.');
}

class Mother {
  final String name;
  Mother({
    required this.name,
  });

  void cook() => print('i can cook');
}

class Son extends Mother implements Father {
  @override
  void dance() => print("i can't dance");

  Son({
    required String name,
  }) : super(name: name);
}

void main(List<String> args) {
  var father = Father(name: 'Father Thomas');
  var mother = Mother(name: 'Mother Lila');
  var son = Son(name: 'Son Pretor');

  father.dance();
  mother.cook();
  print('Son name: ${son.name}');
  son.cook();
  son.dance();
}



//! note:
/// if you implements a class then, that class become
/// an interface so, you can't use super keyword with
/// that subclass. 