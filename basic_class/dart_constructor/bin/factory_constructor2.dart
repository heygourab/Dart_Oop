class Singleton {
  Singleton._privateConstructor();
  static final _instance = Singleton._privateConstructor();
  factory Singleton() => _instance;
}

void main(List<String> args) {}














/// we can use a factory constructor to create a Singleton class.
//? Now, What is singleton patternt class.
/// In software engineering  the singleton patternt is a software 
/// desing patternt that restricts the instaniation of a class to one 
/// 'single' instance.
//! why we use this ?
/// Hide the constructors of the class.
/// Define a public static opration that returns the sole instance of
/// a class.
