class Dog {
  final String name;

  Dog({required this.name});

  factory Dog.create({
    required String name,
    required bool isPowerfull,
  }) =>
      isPowerfull ? Labrador(name: name) : Pub(name: name);
}

class Labrador extends Dog {
  Labrador({
    required String name,
  }) : super(name: name);
}

class Pub extends Dog {
  Pub({
    required String name,
  }) : super(name: name);
}

void main(List<String> args) {
  var dog = Dog.create(name: 'mike', isPowerfull: false);
  print(dog);
}






//! Note: If you have only one factory construtor then can't create sub class of  
//! this main class.
