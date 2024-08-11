1. var
var 값을 할당
값을 업데이트할 때는 변수의 본래 타입과 일치해야함

var name = 'kiji';


2. 명시적 타입 지정
명시적으로 변수의 타입을 지정

String name = 'kiji';

둘은 언제 사용하는지?
var -> 관습적으로 함수나 메소드 내부에 지역변수를 선언할 때
명시적 타입 지정 -> class에서 변수나 property를 선언할 때

함수 안에서 지역변수를 선언하거나 메소드 안에서 지역변수를 선언하는 상황에서는 var 권장


3. dynamic (사용을 추천하지는 않음!)
여러가지 타입을 가질 수 있는 변수에 사용하는 키워드
변수의 타입을 알기 어려운 경우 dynamic을 사용해 돌아가는 것이 유용할 수 있음
변수를 선언할 때 값을 지정하지 않거나 타입을 지정하지 않으면 자동으로 dynamic 타입을 가짐

🌟dynamic은 자동으로 nullable이 된다🌟

dynamic name;
name = 'kiji';
name = 12;
name = true;

if문으로 변수의 타입을 체크할 수 있음
if(name is String){
  print(name.length);
}


4. Null Safety
개발자가 null값을 참조할 수 없도록 하는 것
변수에 null이 들어와 발생할 수 있는 런타임 에러를 방지할 수 있음
Null Safety를 사용하면 변수의 타입에 명시적으로 nullable 여부를 지정할 수 있음

String? name; // ->name은 null 또는 string 타입
name = 'kiji';
name = null;

단, 특정 타입의 속성을 사용하고자 할 떄는 if문으로 타입을 좁힘
if(name != null){
  name.length;
}

또는 변수 뒤에 ?를 붙여줌
name?.length;

=> Null Safety는 Dart에서 안정성을 높이기 위한 강력한 기능으로
변수가 null일 수 있는지 여부를 명시적으로 나타내어 안전한 코드 작성을 지원함


5. final
수정할 수 없는 변수를 만드는 키워드
값은 단 한 번만 넣을 수 있음
자바스크립트의 const와 비슷함
  final -> 런타임에 값이 정해짐
  const -> 컴파일 타임에 값이 정해짐
  => 런타임에 값을 고정하고 싶은 경우에는 const를 사용

final name = 'kiji';

추가로 타입을 선언할 수 있음(필수는 아님🙅)
final String name = 'kiji';


6. late
final 이나 var 수식어
초기 데이터 없이 먼저 변수를 생성하고 추후에 데이터를 넣을 때 주로 사용
flutter로 data fetching을 할 때 유용함

void main(){
  late final String name;
  // api 요청
  print(name); // 오류! name에 접근할 수 없음
}


7. const
dart에서는 compile-time constant를 만들어줌
자바스크립트의 const는 dart의 final과 유사함!
const는 컴파일 할 때 알고 있는 값에 사용
만약, 어떤 값인지 모르고 그 값이 API로부터 오거나 사용자가 화면에서 입력해야 하는 값이라면 const가 아닌 final 또는 var 사용해야 함
=> const는 앱스토어에 올리기 전 이미 알고 있는 값을 다룰때 사용

void main(){
  const name = 'kiji'; // 컴파일 시점에 바뀌지 않는 값
  final userName = fetchAPI(); // 컴파일 시점에 바뀌는 값
}

** Dart 변수 설정 방법 정리 **
1. var 변수명 = 변수값
  처음 할당한 변수값과 같은 타입으로만 업데이트 가능
  
2. String 변수명 = 변수값
  명시적으로 설정한 타입(String)으로반 업데이트 가능

3. String? 변수명 = 변수값
  명시적으로 설정한 타입(String) 외에 Null 타입으로도 업데이트 가능

4. dynamic 변수명 = 변수값
  처음 할당한 변수값과 다른 타입으로도 업데이트 가능

5. final 변수명 = 변수값
  한 번 할당한 변수값을 바꿀 수 없음

6. late final String 변수명
  처음 변수명을 선언할 때 변수값을 할당하지 않아도 됨
  나중에 명시적으로 설정한 타입(String)으로 변수값을 설정할 수 있음
  한 번 할당한 변수값을 바꿀 수 없음

7. const 변수명 = 변수값
  컴파일하기 전에 미리 변수값을 정해줘야 함
  한 번 할당한 변수값을 바꿀수 없음
