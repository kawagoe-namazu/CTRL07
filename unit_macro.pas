unit unit_macro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, JvComponentBase, JvInterpreter,
  Vcl.ComCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.StdCtrls, IniFiles, JvExStdCtrls,
  JvRichEdit, JvExControls, JvEditorCommon, JvEditor, JvHLEditor, JvInterpreter_all;

type
  TForm_Macro = class(TForm)
    StatusBar1: TStatusBar;
    JvInterpreterProgram1: TJvInterpreterProgram;
    Panel1: TPanel;
    SB_RUN: TSpeedButton;
    SB_Load: TSpeedButton;
    SB_Save: TSpeedButton;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    Memo_res: TRichEdit;
    Splitter1: TSplitter;
    Memo: TJvHLEditor;
    procedure SB_RUNClick(Sender: TObject);
    procedure JvInterpreterProgram1GetValue(Sender: TObject; Identifier: string;
      var Value: Variant; Args: TJvInterpreterArgs; var Done: Boolean);
    procedure SB_LoadClick(Sender: TObject);
    procedure SB_SaveClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private �錾 }
  public
    { Public �錾 }
  end;

var
  Form_Macro: TForm_Macro;

implementation

{$R *.dfm}

uses Unit_PM16C, Unit_Imager;

procedure TForm_Macro.FormCreate(Sender: TObject);
var
  Ini: TIniFile;
begin
  Ini := TIniFile.Create( ChangeFileExt( Application.ExeName, '.INI' ) );
  try
    Top     := Ini.ReadInteger( 'Form_Macro', 'Top', 100 );
    Left    := Ini.ReadInteger( 'Form_Macro', 'Left', 100 );
    if Ini.ReadBool( 'Form_Macro', 'InitMax', false ) then
      WindowState := wsMaximized
    else
      WindowState := wsNormal;
  finally
    Ini.Free;
  end;
  if FileExists(ChangeFileExt( Application.ExeName, '.mac' )) then
    Memo.Lines.LoadFromFile(ChangeFileExt( Application.ExeName, '.mac' ));
end;

procedure TForm_Macro.FormDestroy(Sender: TObject);
var
  Ini: TIniFile;
begin
  Memo.Lines.SaveToFile(ChangeFileExt( Application.ExeName, '.mac' ));
  Ini := TIniFile.Create( ChangeFileExt( Application.ExeName, '.INI' ) );
  try
    Ini.WriteInteger( 'Form_Macro', 'Top', Top);
    Ini.WriteInteger( 'Form_Macro', 'Left', Left);
    Ini.WriteBool( 'Form_Macro', 'InitMax', WindowState = wsMaximized );

  finally
    Ini.Free;
  end;
end;

procedure TForm_Macro.JvInterpreterProgram1GetValue(Sender: TObject;
  Identifier: string; var Value: Variant; Args: TJvInterpreterArgs;
  var Done: Boolean);
var
  I: Integer;
  TmpDbl, TmpDbl2 : double;
begin
//  if AnsiSameText(Identifier, 'Add') then
//  begin
//    Value := 0;
//    for I := 0 to Args.Count - 1 do
//    begin
//      Value := Value + Args.Values[I];
//    end;
//    Done := True;
//  end;
  if AnsiSameText(AnsiLowerCase(Identifier), 'WriteLn') then
  begin
    Memo_res.Lines.Add(Args.Values[0]) ;
    Done := True;
  end;
  if AnsiSameText(AnsiLowerCase(Identifier), 'cls') then
  begin
    Memo_res.Lines.Clear;
    Done := True;
  end;
  if AnsiSameText(AnsiLowerCase(Identifier), 'sleep') then
  begin
    Sleep(Args.Values[0]);
    Done := True;
  end;


  if AnsiSameText(AnsiLowerCase(Identifier), 'moveby') then
  begin
    Form_PM16C.MoveBy(Args.Values[0],Args.Values[1],Args.Values[2],Args.Values[3]);
    Done := True;
  end;
  if AnsiSameText(AnsiLowerCase(Identifier), 'moveto') then
  begin
    Form_PM16C.MoveTo(Args.Values[0],Args.Values[1],Args.Values[2],Args.Values[3]);
    Done := True;
  end;
  if AnsiSameText(AnsiLowerCase(Identifier), 'select_sp') then
  begin
    Form_PM16C.SelectSP(Args.Values[0],Args.Values[1]);
    Done := True;
  end;

  if AnsiSameText(AnsiLowerCase(Identifier), 'set_expt') then
  begin
    TmpDbl := Args.Values[0];
    Form_Imager.SetExpTime(TmpDbl,TmpDbl2);
    Memo_res.Lines.Add('Exp : '+TmpDbl.ToString);
    Done := True;
  end;

  if AnsiSameText(AnsiLowerCase(Identifier), 'get_img') then
  begin
    Form_Imager.Get_Img(Args.Values[0],Sender);
    Done := True;
  end;

  if AnsiSameText(AnsiLowerCase(Identifier), 'get_mimg') then
  begin
    Form_Imager.Get_mImg(Args.Values[0],Args.Values[1],Sender);
    Done := True;
  end;

  if AnsiSameText(AnsiLowerCase(Identifier), 'save_mimg') then
  begin
    Form_Imager.Save_mImg(Args.Values[0],Args.Values[1],Sender);
    Done := True;
  end;

end;


procedure TForm_Macro.SB_RUNClick(Sender: TObject);
begin
  JvInterpreterProgram1.Pas := Memo.Lines;
  JvInterpreterProgram1.Run;
end;

procedure TForm_Macro.SB_LoadClick(Sender: TObject);
begin
  if OpenDialog1.Execute then
    Memo.Lines.LoadFromFile(OpenDialog1.FileName);
end;

procedure TForm_Macro.SB_SaveClick(Sender: TObject);
begin
  if SaveDialog1.Execute then
    Memo.Lines.SaveToFile(SaveDialog1.FileName);
end;


end.
