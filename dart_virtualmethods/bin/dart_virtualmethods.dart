class Superclass {
  void virtualmethod() {} //vitual method with no body.
  void virtualmethod1() {
    print('class name: Superclass');
  }
}

class Subclass extends Superclass {
  @override
  void virtualmethod() {
    print('this is a virtual function example');
  }

  @override
  void virtualmethod1() {
    print('class name: Subclass');
  }
}

void main(List<String> args) {
  var obj1 = Subclass();
  obj1.virtualmethod();
}

//!note:
///Virtual methods have an implementation and provide the derive
///classes with the option of overloading it.
//! what is diffrence between abstract mehod and virtual method.
///1.abstract methods have on actual code in them, and subclass
///Have to override the method.
///1.Virtual method can have code, which is usually a default 
///implementation of something, and any sub-class can override
///the method using the @override keyword and provide a custom
///lines of code.