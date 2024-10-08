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

// void main() {
//   print(sayHello3('kiji'));
// }

// Named Parameters
// Named Parameters는 명시적으로 required로 표시되지 않는 한 선택 사항
// 기본값을 제공하지 않거나 named parameters를 필수로 표시하지 않으면
// 해당 유형은 기본값이 null이 되므로 null을 허용해야함

// 함수의 매개변수를 중괄호로 묶어주면 함수를 호출할 때 매개변수의 이름과 값을 함께 입력
// 요소들의 순서는 지키지 않아도 됨

// 기본값을 제공하는 경우
String sayHello4({
  String name = 'anon',
  int age = 10,
  String country = 'wakanda',
}) {
  return 'Hello $name, you are $age, and you come from $country';
}

// required modifier 사용
String sayHello5({
  required String name,
  required int age,
  required String country,
}) {
  return "Hello $name, you are $age, and you come from $country";
}

// void main() {
//   // print(sayHello4('kiji', 20, 'korea'));
// // 파라미터의 수가 많아질수록 순서를 외우기 힘들고 직관적으로 알기 어려움
// // => named parameters를 사용
//   print(sayHello5(age: 20, country: 'korea', name: 'kiji'));
// }

// Optional Positional Parameters
// 선택적으로 전달할 파라미터를 []로 묶어주고 -> optional 속성을 부여
// 타입 뒤에 ?를 붙여줌 -> 해당 파라미터가 null이 올 수 있음을 알림
String sayHello6(String name, int age, [String? country = 'cuba']) =>
    "Hello $name, you are $age, and you come from $country";

// sayHello6는 name, age는 필수로 받지만
// country는 선택적 파라미터이고 기본값을 전달
// void main() {
//   var result = sayHello6('kiji', 20);
//   print(result);
// }

// QQ Operator
// ?? 연산자
// 왼쪽 값이 null인지 체크한 후
//null이 아니면 왼쪽값을 리턴
// null이면 오른쪽 값을 리턴

String capitalizeName(String? name) =>
    // 유저가 null을 입력하는 경우 체크
    name?.toUpperCase() ?? 'ANON';
// name이 null이라면 'ANON'을 리턴

// ??= 연산자를 이용하면 변수 안에 값이 null일 때를 체크해 값을 할당할 수 있음
// void main() {
//   String? name;
//   // name이 null이라면 'kiji'를 할당
//   name ??= 'kiji';
//   print(name);
// }

// Typedef
// 자료형 이름의 별명을 만들때 사용
// 자료형에 사용자가 원하는 alias(별명)를 붙일 수 있게 해줌 -> 자료형을 간편하게 작성 가능

typedef ListOfInts = List<int>; // 별명에 실제 자료형을 할당

ListOfInts reverseListOfNumbers(List<int> list) {
  var reversed = list.reversed;
  // reversed된 list를 리턴
  return reversed.toList();
}

// 사용자의 이름을 받으면 이름을 부르며 인사하는 함수
typedef UserInfo = Map<String, String>;

String sayHi(UserInfo userInfo) {
  return 'Hi ${userInfo['name']}';
}

void main() {
  sayHi({'name': 'kiji'});
}

// 구조화된 data의 형태를 지정하고 싶다면 class를 사용!