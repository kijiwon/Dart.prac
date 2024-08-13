import '../data_type.dart';

class Player {
  // 변수 선언은 했지만 값은 나중에 받아오기
  // late final String name;
  // late int xp;

// 방법 2
  final String name;
  int xp, age; // 동일한 타입의 변수는 묶어서 선언 가능
  String team;

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
        this.team = 'red', // 기본값
        this.xp = 0; // 기본값

  // 2. positional parameters
  Player.createBluePlayer(String name, int age)
      : this.age = age,
        this.name = name,
        this.team = 'blue',
        this.xp = 0;

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
}
