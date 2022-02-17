class Animal {
  final String name;
  Animal({required this.name});
  void chese(Animal a) {}
}

class Cat extends Animal {
  Cat() : super(name: 'Tom');
  @override
  void chese(covariant Mouse a) => print('$name --chese--> ${a.name}');
}

class Mouse extends Animal {
  Mouse() : super(name: 'Jerry');
  @override
  void chese(covariant Cat a) => print('$name <--chese-- ${a.name}');
}

void main(List<String> args) {
  var cat = Cat();
  var mouse = Mouse();
  cat.chese(mouse);
  mouse.chese(cat);

  // var cat2 = Cat();
  // cat.chese(cat2); // perameter erro.
}


//! Inheritance concept is achieved by using the EXTENDS keyword.
//! class Cat extends Animal{} -> Cat(sub-class) & Animal(super-class).
//! EXTENDS is used for  SHARING BEHAVIOR between Super-class & Sub-class.
//! Fields & Methods inside the Super-class are Avalable in the Sub-class.
//! The Super-class can be accessed by using the super keyword
//! All Dart classes Extend only one class(Object class by default)
//! The concept of POLIMORPHISM can be achieved in two ways:
/// @overriding methods, @overloading methods(optional parameters)
/// i can TIGHTEN a type by using the covariant keyword.