// Mixins
// 생성자가 없는 클래스를 의미
// 💜mixin vs extends💜
// extends -> 확장한 클래스는 부모 클래스가 됨
// mixin -> 부모의 인스턴스 관계가 됨. 내부의 프로퍼티를 갖고 오는 것!

mixin class Strong {
  final double strengthLevel = 1500.99;
}

mixin class QuickRunner {
  void runQuick() {
    print('ruuuuuuuuun!');
  }
}

mixin class Tall {
  final double height = 1.99;
}

class Human {
  final String name;
  Human({required this.name});
  void sayHello() {
    print('Hi my name is $name');
  }
}

enum Team { blue, red }

// Mixin 클래스는 상속을 할 때 extends를 하지 않고 with를 사용
// Mixin의 핵심은 여러 클래스에 재사용이 가능하는 점!
class Player with Strong, QuickRunner, Tall {
  final Team team;

  Player({
    required this.team,
    required String name,
  }) : super(name: name); // super를 사용해 부모 클래스의 생성자를 호출한 후 name을 전달

  // @override를 사용해 부모 클래스의 객체를 받아올 수 있음
  @override
  void sayHello() {
    // super로 부모 클래스에 접근
    super.sayHello();
    // 직접 만든 메소드 추가하기
    print('and I play for $team');
  }
}

class Horse with Strong, QuickRunner, Tall {}

class Kid with QuickRunner {}

void main() {
  var player = Player(team: Team.red, name: 'kiji');
  player.sayHello();
}
