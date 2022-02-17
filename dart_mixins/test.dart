mixin Fly {
  void fly() => print('flying..🕊️');
}

mixin Flutter {
  void flutter() => print('fluttering..🦅');
}

mixin Peak on Bird {
  void peak() => print('peaking..🐦');
}

abstract class GroundInsect {
  void crawl() => print('crawling..🐛');
}

abstract class FlyingInsect extends GroundInsect with Fly {
  void buzz() => print('buzzing..🐞');
}

class Mosquito extends FlyingInsect {
  void doMosquitoThings() {
    buzz();
    fly();
    print('sucking blood..🩸');
  }
}

class Cockroach extends FlyingInsect {
  void doCockroachThing() {
    crawl();
    buzz();
    fly();
    print('eating poo..💩');
  }
}

abstract class Bird with Fly, Flutter {
  void chirp() => print('chirp chirp..🐤');
}

class Swallow extends Bird {
  void doSwallowThings() {
    chirp();
    flutter();
    fly();
    print('eating sweet corn..🌽');
  }
}

class Sparrow extends Bird with Peak {
  void doSparrowThings() {
    chirp();
    flutter();
    peak();
    fly();
    print('eating sweet apple..🍎');
  }
}

void main(List<String> args) {
  var mosquito = Mosquito();
  var swallow = Swallow();
  var sparrow = Sparrow();

  mosquito.doMosquitoThings();
  print('');
  swallow.doSwallowThings();
  print('');
  sparrow.doSparrowThings();
}
