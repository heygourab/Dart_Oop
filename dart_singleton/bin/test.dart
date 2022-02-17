//using factory constructor -recomended
class SingleTon {
  SingleTon._privateConstructor();
  static final SingleTon _instance = SingleTon._privateConstructor();
  factory SingleTon() => _instance;
}

///breackdown:
/// 1. class name: SingleTon,
/// 2. Single._privateConstructor(); -> this is name_constructor private
///    we use this as actual constructor.
/// 3. static final  SingleTon _instance = SingleTon._privateConstructor(); ->
///    why static _instance, because it's can use with out create an object of
///    class.
/// 4. factory SingleTon() => _instance; -> factory constructor if we
///    have not any sub class then you can use default constructor. this
///    factory method return static _instance.

//using static method --> this is not good for public code.
class SingleTon1 {
  SingleTon1._privateConstructor();
  static final SingleTon intance = SingleTon._privateConstructor();
}

///breackdown
/// 1. class name: SingleTon1
/// 2. SingleTon1._privateConstructor(); -> this is name_constructor/private
///    we use this as actual constructor.
/// 3. static final SingleTon _instance = SingleTon._privateConstructor(); ->
///    why static _instance, because it's can use with out create an object of
///    class.

//using getter and static
class SingleTon2 {
  SingleTon2._privateConstructor();
  static final SingleTon2 _instance = SingleTon2._privateConstructor();
  static SingleTon2 get instance => _instance;
}

///breackdown 
///class name: SingleTon2
/// 1.  SingleTon2._privateConstructor(); -> this is name_constructor/private
/// 2.  static final SingleTon2 _instance => SingleTon2._privateConstructor();
///     -> create an _instance variable, this is final field so it can't be
///     modified later.
/// 3.  🤔🤔🤔 idk.