// Class
// dart는 class와 mixin 기반 상속을 지원하는 객체지향언어로
// 모든 객체는 class의 인스턴스이고, null을 제외한 class는 모두 Object에서 비롯함

class Player {
  // class에서 property를 선언할 때는 타입을 사용
  final String name = 'kiji'; // final을 붙이면 변수 수정 불가능
  int xp = 1500;

  // class 메소드 안에서는 this를 쓰지 않는 것을 권장
  void sayHello() {
    // print('Hi my name is ${this.name}'); 권장하지❌
    print('Hi my name is $name');
  }
}

void main() {
  var player = Player(); // new 연산자 없이 인스턴스 생성 가능
  // player.name = 'jiwon'; -> 수정 불가능
  print(player.name);
  player.sayHello();
}
