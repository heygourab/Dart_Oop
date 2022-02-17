import 'dart:math';

class Point {
  final int x;
  final int y;

  Point({
    required this.x,
    required this.y,
  });

  //instance method
  num distanceTo(Point p) {
    var dx = x - p.x;
    var dy = y - p.y;
    return sqrt(pow(dx, 2) + pow(dy, 2));
  }

  // static method
  static num distanceTostaticway(Point p, Point p1) {
    var dx = p.x - p1.x;
    var dy = p.y - p1.y;
    return sqrt(pow(dx, 2) + pow(dy, 2));
  }

  //factory method
  factory Point.random({
    required bool isPrositive,
  }) {
    int maxPrositiveValue = 99;
    int minPrositiveValue = 1;
    int maxNagetiveValue = -99;
    int minNagetiveValue = -1;

    int randomPrositiveVal = minPrositiveValue +
        Random().nextInt(maxPrositiveValue - minPrositiveValue);

    int randomNagetiveVal = maxNagetiveValue +
        Random().nextInt(minNagetiveValue - maxNagetiveValue);

    return isPrositive
        ? Point(x: randomPrositiveVal, y: randomPrositiveVal)
        : Point(x: randomNagetiveVal, y: randomNagetiveVal);
  }

  // operator overloading
  Point operator +(Point p) => Point(x: x + p.x, y: y + p.y);
  Point operator -(Point p) => Point(x: x - p.x, y: y - p.y);

  @override
  String toString() => 'Point(x: $x, y: $y)';
}

void main(List<String> args) {
  var point1 = Point.random(isPrositive: true);
  var point2 = Point.random(isPrositive: true);
  print('point1: $point1');
  print('point2: $point2');
  print('distance: ${point1.distanceTo(point2)}');
  print('distance using static: ${Point.distanceTostaticway(point1, point2)}');
  var point3 = point1 + point2;
  var point4 = point1 - point2;
  print('point3: $point3');
  print('point4: $point4');
}
