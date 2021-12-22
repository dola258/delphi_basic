unit uMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdActns, Vcl.ExtActns,
  System.Actions, Vcl.ActnList, Vcl.PlatformDefaultStyleActnCtrls, Vcl.ActnMan,
  System.ImageList, Vcl.ImgList, Vcl.ToolWin, Vcl.ActnCtrls, Vcl.Ribbon,
  Vcl.RibbonLunaStyleActnCtrls, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Menus,
  Vcl.ExtCtrls;

type
  TMainForm = class(TForm)
    ImageList1: TImageList;
    ActionManager1: TActionManager;
    EditCut1: TEditCut;
    EditCopy1: TEditCopy;
    EditPaste1: TEditPaste;
    EditSelectAll1: TEditSelectAll;
    EditUndo1: TEditUndo;
    EditDelete1: TEditDelete;
    Action1: TAction;
    FormatRichEditBold1: TRichEditBold;
    FormatRichEditItalic1: TRichEditItalic;
    FormatRichEditUnderline1: TRichEditUnderline;
    FormatRichEditAlignLeft1: TRichEditAlignLeft;
    FormatRichEditAlignRight1: TRichEditAlignRight;
    FormatRichEditAlignCenter1: TRichEditAlignCenter;
    Action2: TAction;
    FileOpen1: TFileOpen;
    FileSaveAs1: TFileSaveAs;
    FileExit1: TFileExit;
    New_Action: TAction;
    About_Action: TAction;
    Top_Action: TAction;
    Ribbon1: TRibbon;
    RibbonPage1: TRibbonPage;
    RibbonPage2: TRibbonPage;
    RibbonGroup1: TRibbonGroup;
    RibbonGroup2: TRibbonGroup;
    RibbonGroup3: TRibbonGroup;
    RibbonGroup4: TRibbonGroup;
    RibbonGroup5: TRibbonGroup;
    PopupMenu1: TPopupMenu;
    Open1: TMenuItem;
    SaveAs1: TMenuItem;
    Exit1: TMenuItem;
    N1: TMenuItem;
    Exit2: TMenuItem;
    RichEdit1: TRichEdit;
    StatusBar1: TStatusBar;
    Timer1: TTimer;
    procedure New_ActionExecute(Sender: TObject);
    procedure FileOpen1BeforeExecute(Sender: TObject);
    procedure FileOpen1Accept(Sender: TObject);
    procedure FileSaveAs1BeforeExecute(Sender: TObject);
    procedure FileSaveAs1Accept(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure ShowHint(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure RichEdit1Change(Sender: TObject);
  private
    { Private declarations }
    function GetCurPos(RichEdit:TRichEdit):integer;
    function GetCurLine(RichEdit:TRichEdit):integer;
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;

implementation

{$R *.dfm}




procedure TMainForm.FileOpen1Accept(Sender: TObject);
begin
  RichEdit1.Lines.LoadFromFile(FileOpen1.Dialog.FileName);
end;

procedure TMainForm.FileOpen1BeforeExecute(Sender: TObject);
begin
  FileOpen1.Dialog.InitialDir := '문서:\';
  FileOpen1.Dialog.Filter := '유니트파일|*.pas|텍스트파일|*.txt';
end;

procedure TMainForm.FileSaveAs1Accept(Sender: TObject);
begin
  RichEdit1.Lines.SaveToFile(FileSaveAs1.Dialog.FileName);
end;

procedure TMainForm.FileSaveAs1BeforeExecute(Sender: TObject);
begin
  FileSaveAs1.Dialog.InitialDir := '문서:\';
end;

procedure TMainForm.FormCreate(Sender: TObject);
begin
  Application.OnHint := ShowHint;
end;

function TMainForm.GetCurLine(RichEdit: TRichEdit): integer;
begin
  Result := RichEdit.Perform(EM_LINEFROMCHAR, RichEdit.SelStart, 0);
end;

function TMainForm.GetCurPos(RichEdit: TRichEdit): integer;
begin
  Result := RichEdit.SelStart - RichEdit.Perform(EM_LINEINDEX, GetCurLine(RichEdit1), 0);
end;

procedure TMainForm.New_ActionExecute(Sender: TObject);
begin
  RichEdit1.Lines.Clear;
end;



procedure TMainForm.RichEdit1Change(Sender: TObject);
begin
  StatusBar1.Panels[1].Text :=
    Format('현재칼럼: %d 총 라인수: %d', [GetCurPos(RichEdit1) +1, GetCurLine(RichEdit1) +1]);
end;

procedure TMainForm.ShowHint(Sender: TObject);
begin
  StatusBar1.Panels[0].Text := Application.Hint;
// application.hintPause: 힌트 표시간격
// application.hintColor: 힌트 색상
end;

procedure TMainForm.Timer1Timer(Sender: TObject);
begin
  StatusBar1.Panels[2].Text := FormatDateTime('YYYY-mmmm-DD dddd hh:nn:ss am/pm', now);
end;

end.
