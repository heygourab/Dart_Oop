abstract class SuperAbstractclass {
  void abstractmethod();
}

class Subclass extends SuperAbstractclass {
  @override
  void abstractmethod() {
    print('this is a overrided abstrack method!');
  }
}

void main(List<String> args) {
  var obj1 = Subclass();
  obj1.abstractmethod();
}

/// Abstract  method have no actual code in them , and 
/// subclasses have to override the method. Virtual methods can have code.
/// Which is usually a default implementation of something, and any 
/// subclasses can override the method using the ovrride modifier and
/// provide a custom implementation.😊