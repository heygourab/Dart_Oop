class Performer {
  void perform() => print('Performs!');
}

mixin Guitarist {
  void playGuitar() => print('Playing the guitar.🎸');
  void perform() => playGuitar();
}

mixin Drummer {
  void playDrums() => print('Playing the drums.🥁');
  void perform() => playDrums();
}

class Musician extends Performer with Drummer, Guitarist {}

void main(List<String> args) {
  Musician musician = Musician();
  musician.perform();
}

//? why we use mixin ?
/// to solved, the multiple inheritance.
//? What are mixin ?
/// 1. A class with no constructor
/// 2. A class of which behavior can be shared with other classes.

//! breakdown --- the mixin

// Musician extends -> Performer(inheritance); 
// Performer with Guitarist. 
// |__Perform with Guitarist and Drummer.
//    |__Musician.

//in dart, you can extends one single class, implement or mixin
//one or more classes.

//The order in which you write the mixins after the keyword matters.

//A mixin cannot be instantiaed, it can't have any constructor.