unit Unit_Status;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ComCtrls;

type
  TForm_Status = class(TForm)
    StatusBar1: TStatusBar;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label2: TLabel;
    BB_STOP: TBitBtn;
    procedure BB_STOPClick(Sender: TObject);
  private
    { Private �錾 }
  public
    { Public �錾 }
  end;

var
  Form_Status: TForm_Status;

implementation

{$R *.dfm}

uses Unit_PM16C;

procedure TForm_Status.BB_STOPClick(Sender: TObject);
begin
  Form_PM16C.Stop;
  Form_PM16C.Go := false;
  Close;
end;

end.
