import 'dart:math';

//! Singleton
//? What is Singleton Pattern?
/// In Soft-engineering, the singleton Pattern is software desing pattern
/// that restricts the instantiation of a class to one single instance.
/// This is useful when one object is needed to coordinate actions across
/// the system.
//? When we use Singleton Pattern?
/// this is useful when we want hide the constructor of a class.

class SingleTon {
  SingleTon._privateConstructor();
  //this is {namedConstructor}here we use this a _privateConstrutor.
  static final _instance = SingleTon._privateConstructor();
  factory SingleTon() => _instance;
}

class Point {
  final int x;
  final int y;

  const Point({
    required this.x,
    required this.y,
  });

  factory Point.random({required bool isPrositive}) {
    const int minPrositiveValue = 1;
    const int maxPrositiveValue = 99;
    const int minNegativeValue = -1;
    const int maxNegativeValue = -99;

    //algo
    int randomPrositiveValue = minPrositiveValue +
        Random().nextInt(maxPrositiveValue - minPrositiveValue);

    int randomNegativeValue = maxNegativeValue +
        Random().nextInt(minNegativeValue - maxNegativeValue);

    return isPrositive
        ? Point(x: randomPrositiveValue, y: randomPrositiveValue)
        : Point(x: randomNegativeValue, y: randomNegativeValue);
  }

  @override
  String toString() => 'Point(x: $x, y: $y)';
}

void main(List<String> args) {
  var s = SingleTon();
  print(s);
}

//! Note: We can't insilize thing inside of a factory constructor
//! factory  constructor has no access to the this keyword.
//! but we can use a static filed in side of a factroy constructor.
