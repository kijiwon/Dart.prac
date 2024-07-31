Dart의 자료형

Dart에서 자료형은 모두 객체
String, int, double, bool -> class
따라서 import할 필요 없이 해당 자료형이 가지는 모든 method를 사용할 수 있음

String name = 'kiji';
bool alive = true;
int age = 10;
double money = 10.99;

num -> int, double 둘 다 될 수 있을 떄 사용
num x = 12;
x = 1.2;

Dart의 거의 전부가 객체로 이루어져 있음
=> 진정한 객체 지향 언어로 불림

1. Lists
list 선언 방법
1. 대괄호를 사용해 변수에 할당 
var numbers = [1,2,3,4];


2. 명시적 타입 선언
List<int> numbers = [1,2,3,4];

이때 배열 안에 int 이외의 다른 타입은 추가할 수 없음
numbers.add('1'); // ❌

+ 배열 메소드
num.first -> 첫 번째 요소를 리턴
num.last -> 마지막 요소를 리턴
num.add -> 배열에 요소를 추가

⭐️Dart에서 List는 collection if와 collection for을 지원⭐️
3. collection if
존재할 수도 안할 수도 있는 요소를 가지고 올 수 있음
var giveMeFive = true;
var numbers = [1, 2, 3, 4, if(giveMeFive) 5];
giveMeFive가 true라면 numbers의 요소에 5가 들어옴


+ String interpolation
text에 변수를 추가하는 방법
변수 앞에 $를 붙여 사용, 계산을 하고 싶다면 ${변수명}를 사용

var name = 'kiji';
var age = 10;
var greeting = 'Hello my name is $name, I'm ${age+1}';

"",'', ``에 상관 없이 사용

4. collection for
하나의 배열에 다른 배열의 요소를 반복해 추가하는 방법
for문을 사용해 요소를 하나씩 꺼내옴

var oldFriends = ['a', 'b'];
var newFriends = [
  'c',
  'd',
  'e',
  for (var friend in oldFriends) "🩷 $friend",
];
