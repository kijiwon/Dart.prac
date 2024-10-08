Dart의 자료형

Dart에서 자료형은 모두 객체
String, int, double, bool -> class
따라서할 필요 없이 해당 자료형이 가지는 모든 method를 사용할 수 있음

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


5. Maps
key와 value를 연결하는 객체

var player = {
  'name': 'kiji',
  'xp': 19.99,
  'superpower': false,
};

player의 타입은 Map<String, Object> 
=> key는 String, value는 Object타입
Object는 타입스크립트의 any와 비슷함

+ 타입을 직접 명시하기
Map<int, bool> player = {
  1 : true,
  2 : false,
  3 : true,
};

key와 value 모두 모든 유형의 객체가 될 수 있음
Map<List<int>, bool> player = {
  [1, 2, 3, 4]: true,
};

+ List 또한 요소로 객체를 가질 수 있음
List<Map<String, Object>> players = [
  {'name': 'kiji', 'xp': 19.99},
  {'name': 'jiwon', 'xp': 19.99},
];


6. Sets
List와 형태가 비슷하지만 각 요소는 유니크한 값을 가짐
-> 요소는 중복될 수 없음

{}을 사용
var numbers = {1, 2, 3, 4};

또는 Set을 사용
Set<int> numbers = {1, 2, 3, 4};

각 요소는 유니크한 값을 가지기 때문에 동일한 요소를 여러번 추기해도 변함 없음
Set<int> numbers = {1, 2, 3, 4};
numbers.add(1);
numbers.add(1);
numbers.add(1);
print(numbers); // {1, 2, 3, 4}