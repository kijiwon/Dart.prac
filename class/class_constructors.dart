// Enums
// 개발 중 실수를 하지 않도록 도와주는 타입
enum Team { red, blue }

enum XPLevel { beginner, medium, pro }

class Player {
  // 변수 선언은 했지만 값은 나중에 받아오기
  // late final String name;
  // late int xp;

// 방법 2
  String name;
  XPLevel xp;
  int age;
  Team team; // team 타입 변경

  // dart에서 생성자 함수는 클래스 이름과 같아야함
  // Player(String name, int xp) {
  //   this.name = name;
  //   this.xp = xp;
  // }

  // 방법 2
  // 받아온 파라미터를 각각 this.name, this.xp로 받기
  // named constructor parameters 사용
  Player({
    required this.name,
    required this.xp,
    required this.team,
    required this.age,
  });

// Player를 초기화하는 메소드
// :를 사용하면 특별한 생성자 함수를 만들 수 있음
// 콜론을 넣음으로써 dart에 여기서 객체를 초기화하라고 명령할 수 있음

// 1. named parameters
  Player.createRedPlayer({
    required String name,
    required int age,
  })  : this.age = age, // 전달된 인자로 할당
        this.name = name, // 전달된 인자로 할당
        this.team = Team.red, // 기본값
        this.xp = XPLevel.medium; // 기본값

  // 2. positional parameters
  Player.createBluePlayer(String name, int age)
      : this.age = age,
        this.name = name,
        this.team = Team.blue,
        this.xp = XPLevel.beginner;

  void sayHello() {
    print('Hi my name is $name');
  }
}

void main() {
// // Player의 name과 xp를 전달해 새로운 player를 생성
//   var player = Player(
//     name: 'kiji',
//     xp: 1500,
//     team: 'red',
//     age: 12,
//   );
//   player.sayHello();
//   var player2 = Player(
//     name: 'tom',
//     xp: 2000,
//     team: 'blue',
//     age: 12,
//   );
//   player2.sayHello();

// red와 blue팀을 각각 생성하는 constructor 호출
// 1. named parameters
  var redPlayer = Player.createRedPlayer(
    name: 'kiji',
    age: 20,
  );

  // 2. positional parameters
  var bluePlayer = Player.createBluePlayer(
    'jiwon',
    21,
  );

  // Cascade Notation
  // ..을 사용해 변수(또는 class)를 가르킴
  var kiji = Player(name: 'kiji', xp: XPLevel.medium, team: Team.red, age: 20)
    ..name = 'jiwon'
    ..age = 25; // .. -> kiji
}
