class Player {
  // 변수 선언은 했지만 값은 나중에 받아오기
  // late final String name;
  // late int xp;

// 방법 2
  final String name;
  int xp;

  // dart에서 생성자 함수는 클래스 이름과 같아야함
  // Player(String name, int xp) {
  //   this.name = name;
  //   this.xp = xp;
  // }

  // 방법 2
  // 받아온 파라미터를 각각 this.name, this.xp로 받기
  Player(this.name, this.xp);

  void sayHello() {
    print('Hi my name is $name');
  }
}

void main() {
// Player의 name과 xp를 전달해 새로운 player를 생성
  var player = Player('kiji', 1500);
  player.sayHello();
  var player2 = Player('tom', 2000);
  player2.sayHello();
}
