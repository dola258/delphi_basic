unit MenuTest;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.ImageList, Vcl.ImgList, Vcl.Menus,
  Vcl.ComCtrls, Vcl.ToolWin, Vcl.ActnList, Vcl.StdActns, System.Actions,
  Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan, Vcl.ActnCtrls, Vcl.ActnMenus;

type
  TForm1 = class(TForm)
    ActionManager1: TActionManager;
    ImageList1: TImageList;
    FileOpen1: TFileOpen;
    FileSaveAs1: TFileSaveAs;
    FileExit1: TFileExit;
    Action1: TAction;
    ActionMainMenuBar1: TActionMainMenuBar;
    doc: TCoolBar;
    ActionToolBar1: TActionToolBar;
    ActionToolBar2: TActionToolBar;
    procedure Open1Click(Sender: TObject);
    procedure Action1Execute(Sender: TObject);
    procedure ActionMainMenuBar1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Action1Execute(Sender: TObject);
begin
  ShowMessage('Å×½ºÆ®');
end;



procedure TForm1.Open1Click(Sender: TObject);
begin
  ShowMessage('¿ÀÇÂ');
end;



end.
