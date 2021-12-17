unit uTest1;

interface

uses
  // 윈도우API,    윈도우 메세지,
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    MyButton: TButton;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;  // 기본은 published
    procedure MyButtonClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation
uses
  uTest4;
var
  h:TH;
{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  MyButton.Caption := '닫기';
end;


procedure TForm1.Button3Click(Sender: TObject);
begin
  showMessage('핸들러 호출됨');
  Button1Click(Button1);  // Sender
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  button4.Caption := inttoStr(i);
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
  uTest4.Test;
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
  Button6.Caption := IntToStr(uTest4.Add(2, 3));
end;

procedure TForm1.Button7Click(Sender: TObject);
begin
  Button7.Caption := IntToStr(uTest4.Divide(4, 2));
//Button7.Caption := FloatToStr(uTest4.Divide(4, 2));
end;

procedure TForm1.Button8Click(Sender: TObject);
begin
  h := TH.Create;
  Edit1.Text := h.GetName;
  Edit2.Text := IntToStr(h.Age);
  Edit3.Text := h.Address;
  Edit4.Text := h.office;
  Edit5.Text := IntToStr(h.salary);
  h.Free; // 파괴자루틴을 불러준다
end;

procedure TForm1.MyButtonClick(Sender: TObject);
begin
  form1.Close;
end;

end.
