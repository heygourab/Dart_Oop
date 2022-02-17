abstract class Abstractclass {
  void abstractmethod(); //abstract method 😒
}

class Superclass extends Abstractclass {
  @override
  void abstractmethod() {
    print('this is a override method 🤨');
  }
}

void main(List<String> args) {
  var obj = Superclass();
  print(obj);
  obj.abstractmethod();
}

//Instance, getter, and setter methods can be abstract, defining an
//interface but leaving its implementation up to other classes.
//!note: Abstract methods can only exist in abstract classes.