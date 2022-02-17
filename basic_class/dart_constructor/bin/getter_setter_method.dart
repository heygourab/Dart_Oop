class Car {
  late final int age;
  set getPurchaseYear(int year) => age = DateTime.now().year - year;
}

void main(List<String> args) {
  var car = Car();
  car.getPurchaseYear = 2002;
  print('Car age: ${car.age}');
}

//? main usees of setter is 
/// insilaized the late fields...
/// after creating a object of that class.

//? what is getter?
/// getter used for get the value of a filed inside of a class
/// in dart every filed has a invisible getter .
/// so we need use a getter function addsinaly..😊