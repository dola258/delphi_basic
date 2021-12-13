unit uTest4;

// type, const, var, prodedure, function ����
// �ٸ� unit���� ���ǵ� var, procedure, function�� ����� �� �ִ� ��, uses���� uTest4�� �߰������ �Ѵ�
interface
uses
  vcl.Dialogs;
type
  Country = array [0..2] of string; // �迭(3��)�� �ڷ����� �ϳ��� ������ �� �ִ�
  Person = record      // ����ü ����
    Name:string;
    Age:Byte;
    Address:string;
  end;
  P_person = ^Person;  // person�̶�� ����ü�� ����ƮŸ��

var
  s:string;          // ���ڿ� UNICODE String;
  i:integer = 100;   // ����
  t:tdatetime;       // ��¥
  b:boolean;         // �Ҹ���
  Countries:Country; // type���� ���� �迭
  a:array of string; // a��� ������ ���ڿ� �迭(ũ�� ����x)
  a2:array of array of string; // a2��� ������ 2���� �迭(ũ�� ����x)
  p:p_person;
  ps:pchar;   // ���ڿ�������

procedure Test; // ���ν��� = ������ ���� ��ƾ

function Add(x, y:integer):integer; // Add��� �̸��� �Լ��̰� �Ű������� �������̰� ���ϵ� �������̴�
function Divide(x,y:integer):integer; overload;
function Divide(x,y:real):real; overload;

// �������̽����� ����� ��ƾ���� �����ϴ� �κ�
// type, const, var ���� - �ٸ� unit������ ����� �� ���� �ش� unit�� implemetation�κп����� ����� �� �ִ�
implementation
var
  j:integer;   // stack�� �޸� �Ҵ�

procedure Test;
var
  k:integer;   // stack�� �޸� �Ҵ�
begin
  ShowMessage('test called');
end;

function Add(x,y:integer):integer;     // Add�� ��� ������ �ƴ����� ���� ���� ���´�(������, Ÿ��, �������� Ʋ���� �ȵȴ�)
begin
  Result :=  x + y;
  // exit(x+y); // 2010���� ����
end;

function Divide(x,y:integer):integer;
begin
  Result := x div y;
end;

function Divide(x,y:real):real;
begin
  Result := x div y;
end;


// uses���� ������ ����ȴ�: �ʱ�ó��(���� �ʱⰪ, �޸� �Ҵ� ��)
initialization
begin
  Countries[0] := '�ѱ�';
  Countries[1] := '�̱�';
  Countries[2] := '����';
  SetLength(a,2); // ������ ��  a�� ũ�⸦ ���������� ������ ������ ����
  SetLength(a2, 2, 2);
  a[0] := 'a';
  a2[0,0] := 'a2';
end;

finalization

end.