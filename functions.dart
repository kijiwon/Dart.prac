// Functions
// Dart에서 함수는 객체이며 타입은 Function이다.
// 즉, 함수를 변수에 할당하거나 다른 함수에 인수로 전달할 수 있음을 의미!

// void -> 함수가 아무것도 return하지 않음

void sayHello(String name) {
  print('Hello $name nice to meet you');
// 출력만 하고 리턴하는 건 없음!
}

// 문자열을 리턴하는 경우에는 함수의 타입은 String
String sayHello2(String name) {
  return 'Hello $name nice to meet you';
}

// 하나의 표현식만 포함하는 함수의 경우 단축 구문을 사용할 수 있음
String sayHello3(String name) => 'Hello $name nice to meet you';

void main() {
  print(sayHello3('kiji'));
}
