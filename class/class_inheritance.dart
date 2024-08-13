class Human {
  final String name;
  Human({required this.name});
  void sayHello() {
    print('Hi my name is $name');
  }
}

enum Team { blue, red }

class Player extends Human {
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

void main() {
  var player = Player(team: Team.red, name: 'kiji');
  player.sayHello();
}
