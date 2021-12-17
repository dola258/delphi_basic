unit uTest4;

// type, const, var, prodedure, function 선언
// 다른 unit에서 정의된 var, procedure, function응 사용할 수 있다 단, uses절에 uTest4를 추가해줘야 한다
interface
uses
  vcl.Dialogs;
type
  TDog = class
    Name:string;
    Age:byte;
    Address:string;
    function GetName:string;
  end;
  TPerson = class(TObject)
    Name:string;
    Age:byte;
    Address:string;
    function GetName:string;
    Constructor Create; virtual;
  end;
  TEmp = class(TPerson)
    office:string;
    function salary:integer; virtual; abstract;  // dynamic // abstract
    Constructor Create; override;
  end;
  TS = class(TEmp)
    rank:string;
    function salary:integer; override;
    Constructor create; override;
  end;
  TH = class(TEmp)
    hours:integer;
    rate:integer;
    function salary:integer; override;
    Constructor create; override;
  end;
  Country = array [0..2] of string; // 배열(3개)은 자료형은 하나만 지정할 수 있다
  Person = record      // 구조체 선언
    Name:string;
    Age:Byte;
    Address:string;
  end;
  P_person = ^Person;  // person이라는 구조체의 포인트타입

var
  s:string;          // 문자열 UNICODE String;
  i:integer = 100;   // 정수
  t:tdatetime;       // 날짜
  b:boolean;         // 불리언
  Countries:Country; // type에서 만든 배열
  a:array of string; // a라는 변수는 문자열 배열(크기 지정x)
  a2:array of array of string; // a2라는 변수는 2차원 배열(크기 지정x)
  p:p_person;
  ps:pchar;   // 문자열포인터
  v:variant;  // 문자, 숫자, 날짜, 배열, ole object(엑셀, 워드, PPT 등)

procedure Test; // 프로시저 = 리턴이 없는 루틴

function Add(x, y:integer):integer; // Add라는 이름의 함수이고 매개변수는 정수형이고 리턴도 정수형이다
function Divide(x,y:integer):integer; overload;
function Divide(x,y:real):real; overload;

// 인터페이스에서 선언된 루틴들을 구현하는 부분
// type, const, var 선언 - 다른 unit에서는 사용할 수 없고 해당 unit의 implemetation부분에서만 사용할 수 있다
implementation
var
  j:integer;   // stack에 메모리 할당

procedure Test;
var
  k:integer;   // stack에 메모리 할당
begin
  ShowMessage('test called');
end;

function Add(x,y:integer):integer;     // Add만 적어도 에러가 아니지만 보기 쉽게 적는다(변수명, 타입, 개수등이 틀리면 안된다)
begin
  Result :=  x + y;
  // exit(x+y); // 2010부터 가능
end;

function Divide(x,y:integer):integer;
begin
  Result := x div y;
end;

function Divide(x,y:real):real;
begin
  Result := x / y;
end;

constructor TPerson.Create;
begin
  Name := 'Kim';
  Age := 20;
  Address :=  'AnyWhere';
end;

function TPerson.GetName:string;
begin
  result := Name;
end;
{ TDog }
function TDog.GetName: string;
begin
  result := Self.Name;
end;
{ TS }
constructor TS.create;
begin
  inherited;
  rank := '강사';
end;

function TS.salary: integer;
begin
  result := 3000;
end;
{ TH }
constructor TH.create;
begin
  inherited;
  hours := 10;
  rate := 5000;
end;

function TH.salary: integer;
begin
  result := hours * rate;
end;
{ TEmp }
constructor TEmp.Create;
begin
  inherited;
  office := '데브기어';
end;

// uses절을 만나면 실행된다: 초기처리(변수 초기값, 메모리 할당 등)
initialization
begin
  Countries[0] := '한국';
  Countries[1] := '미국';
  Countries[2] := '영국';
  SetLength(a,2); // 실행할 때  a의 크기를 지정해주지 않으면 에러가 난다
  SetLength(a2, 2, 2);
  a[0] := 'a';
  a2[0,0] := 'a2';
end;

finalization

end.
