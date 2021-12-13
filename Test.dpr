program Test;

uses
  Vcl.Forms,
  uTest1 in 'uTest1.pas' {Form1},
  uTest3 in 'uTest3.pas' {Form2},
  uTest4 in 'uTest4.pas',
  uTest2 in 'uTest2.pas' {Form3};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm3, Form3);
  Application.Run;
end.
