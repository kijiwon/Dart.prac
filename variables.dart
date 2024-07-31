1. var
var 키워드로 변수명을 선언한 후 값을 할당
값을 업데이트할 때는 변수의 본래 타입과 일치해야함

var name = 'kiji';



2. 명시적 타입 지정
명시적으로 변수의 타입을 지정

String name = 'kiji';

둘은 언제 사용하는지?
var -> 관습적으로 함수나 메소드 내부에 지역변수를 선언할 때
명시적 타입 지정 -> class에서 변수나 property를 선언할 때

함수 안에서 지역변수를 선언하거나 메소드 안에서 지역변수를 선언하는 상황에서는 var를 사용하는 것을 권장


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
