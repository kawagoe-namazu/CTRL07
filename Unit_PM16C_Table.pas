unit Unit_PM16C_Table;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Buttons;

type
  TForm_16C_Table = class(TForm)
    GroupBox1: TGroupBox;
    Label6: TLabel;
    Label7: TLabel;
    SB_PM16C_Ver: TSpeedButton;
    Label9: TLabel;
    Label_PM16C_ver: TLabel;
    Edit_PM16C_IP: TEdit;
    Edit_PM16C_Port: TEdit;
    CB_remote: TCheckBox;
    StatusBar1: TStatusBar;
    Label5: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    BB_CH0: TBitBtn;
    BB_CH1: TBitBtn;
    BB_CH2: TBitBtn;
    BB_CH3: TBitBtn;
    BB_CH4: TBitBtn;
    BB_CH5: TBitBtn;
    BB_CH6: TBitBtn;
    BB_CH7: TBitBtn;
    BB_CH8: TBitBtn;
    BB_CH9: TBitBtn;
    BB_CH10: TBitBtn;
    BB_CH11: TBitBtn;
    BB_CH12: TBitBtn;
    BB_CH13: TBitBtn;
    BB_CH14: TBitBtn;
    BB_CH015: TBitBtn;
    SB_Reflesh: TSpeedButton;
    Label3: TLabel;
    Label8: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    SB_Save: TSpeedButton;
    SB_Load: TSpeedButton;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    SB_Update: TSpeedButton;

    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SB_RefleshClick(Sender: TObject);
    procedure SB_PM16C_VerClick(Sender: TObject);
    procedure CB_remoteClick(Sender: TObject);
    procedure BB_CH0Click(Sender: TObject);
    procedure SB_SaveClick(Sender: TObject);
    procedure SB_LoadClick(Sender: TObject);
    procedure SB_UpdateClick(Sender: TObject);
  private
    { Private �錾 }
  public
    { Public �錾 }
  end;

var
  Form_16C_Table: TForm_16C_Table;

  Edit_Pos, Edit_Axis_Name:array[0..15] of TEdit;
  Edit_HS,Edit_MS,Edit_LS :array[0..15] of TEdit;
  Edit_Conv :array[0..15] of TEdit;
  Edit_Unit_Name, Edit_CW, Edit_CCW :array[0..15] of TEdit;
  CB_LSW :array[0..15] of TComboBox;
  CB_Rate :array[0..15] of TComboBox;

implementation

{$R *.dfm}

uses Unit_PM16C, Unit_PM16C_Op;



procedure TForm_16C_Table.FormCreate(Sender: TObject);
var
  li : byte;
  Left_Pos, Base_Pos:longint;
begin
  Left_Pos := 230;
  Base_Pos := 113;

  for li:=0 to 15 do
  begin
    Edit_Axis_Name[li] := TEdit.Create(Self);
    Edit_Axis_Name[li].Parent := GroupBox1;
    Edit_Axis_Name[li].Width := 97;
    Edit_Axis_Name[li].Height := 22;
    Edit_Axis_Name[li].Left := Left_Pos-134;
    Edit_Axis_Name[li].Top :=  Base_Pos+31*li;

    Edit_Pos[li] := TEdit.Create(Self);
    Edit_Pos[li].Parent := GroupBox1;
    Edit_Pos[li].Width := 97;
    Edit_Pos[li].Height := 22;
    Edit_Pos[li].Left := Left_Pos-24;
    Edit_Pos[li].Top := Base_Pos+31*li;

    Edit_HS[li] := TEdit.Create(Self);
    Edit_HS[li].Parent := GroupBox1;
    Edit_HS[li].Width := 64;
    Edit_HS[li].Height := 22;
    Edit_HS[li].Left := Left_Pos+86;
    Edit_HS[li].Top := Base_Pos+31*li;

    Edit_MS[li] := TEdit.Create(Self);
    Edit_MS[li].Parent := GroupBox1;
    Edit_MS[li].Width := 64;
    Edit_MS[li].Height := 22;
    Edit_MS[li].Left := Left_Pos+156;
    Edit_MS[li].Top := Base_Pos+31*li;

    Edit_LS[li] := TEdit.Create(Self);
    Edit_LS[li].Parent := GroupBox1;
    Edit_LS[li].Width := 64;
    Edit_LS[li].Height := 22;
    Edit_LS[li].Left := Left_Pos+226;
    Edit_LS[li].Top := Base_Pos+31*li;

    CB_Rate[li] :=TComboBox.Create(Self);
    CB_Rate[li].Parent := GroupBox1;
    CB_Rate[li].Width := 140;
    CB_Rate[li].Height := 22;
    CB_Rate[li].Left := Left_Pos+305;
    CB_Rate[li].Top := Base_Pos+31*li;
    CB_Rate[li].Items := Form_PM16C_Op.CB_Rate1.Items;

    CB_LSW[li] := TComboBox.Create(Self);
    CB_LSW[li].Parent := GroupBox1;
    CB_LSW[li].Width := 58;
    CB_LSW[li].Height := 22;
    CB_LSW[li].Left := Left_Pos+460;
    CB_LSW[li].Top := Base_Pos+31*li;
    CB_LSW[li].Items.Add('NO');
    CB_LSW[li].Items.Add('NC');

    Edit_Conv[li] := TEdit.Create(Self);
    Edit_Conv[li].Parent := GroupBox1;
    Edit_Conv[li].Width := 79;
    Edit_Conv[li].Height := 22;
    Edit_Conv[li].Left := Left_Pos+534;
    Edit_Conv[li].Top := Base_Pos+31*li;

    Edit_Unit_Name[li] := TEdit.Create(Self);
    Edit_Unit_Name[li].Parent := GroupBox1;
    Edit_Unit_Name[li].Width := 64;
    Edit_Unit_Name[li].Height := 22;
    Edit_Unit_Name[li].Left := Left_Pos+629;
    Edit_Unit_Name[li].Top := Base_Pos+31*li;

    Edit_CCW[li] := TEdit.Create(Self);
    Edit_CCW[li].Parent := GroupBox1;
    Edit_CCW[li].Width := 72;
    Edit_CCW[li].Height := 22;
    Edit_CCW[li].Left := Left_Pos+699;
    Edit_CCW[li].Top := Base_Pos+31*li;

    Edit_CW[li] := TEdit.Create(Self);
    Edit_CW[li].Parent := GroupBox1;
    Edit_CW[li].Width := 72;
    Edit_CW[li].Height := 22;
    Edit_CW[li].Left := Left_Pos+777;
    Edit_CW[li].Top := Base_Pos+31*li;
  end;
end;

procedure TForm_16C_Table.FormShow(Sender: TObject);
var
  li :byte;
begin
  if Form_PM16C.CB_Connect.Checked then
  begin
    Edit_PM16C_IP.Text := Form_PM16C.Edit_IP.Text;
    Label_PM16C_ver.Caption := Form_PM16C.Get_ver;
    CB_remote.Checked :=  Form_PM16C.CB_R_M.Checked;
  end;

  for li:=0 to 15 do
  begin
    Edit_Pos[li].Text := Form_PM16C.GetPos(li).ToString;
    Edit_Axis_Name[li].Text := Form_PM16C.Motor[li].Axis_Name;

    Edit_HS[li].Text := Form_PM16C.GetHSP(li).ToString;
    Edit_MS[li].Text := Form_PM16C.GetMSP(li).ToString;
    Edit_LS[li].Text := Form_PM16C.GetLSP(li).ToString;

    CB_Rate[li].ItemIndex := Form_PM16C.Get_Rate(li);

    if Form_PM16C.Get_LS(li)=0 then
      CB_LSW[li].ItemIndex := 0
    else
      CB_LSW[li].ItemIndex := 1;

    Edit_Conv[li].Text := Form_PM16C.Motor[li].Conv.ToString;
    Edit_Unit_Name[li].Text := Form_PM16C.Motor[li].Unit_Name;
    Edit_CW[li].Text := Form_PM16C.Motor[li].CW;
    Edit_CCW[li].Text := Form_PM16C.Motor[li].CCW;
  end;

end;

procedure TForm_16C_Table.SB_PM16C_VerClick(Sender: TObject);
begin
  if Form_PM16C.CB_Connect.Checked then
    Label_PM16C_ver.Caption := Form_PM16C.Get_ver;
end;

procedure TForm_16C_Table.SB_RefleshClick(Sender: TObject);
begin
  FormShow(Sender);
end;

procedure TForm_16C_Table.BB_CH0Click(Sender: TObject);
begin
  if Form_PM16C_Op.Showing then
    Form_PM16C_Op.BB_CloseClick(Sender);

  if Form_PM16C.CB_Connect.Checked then
  begin
    Form_PM16C_Op.lCh := (Sender as TBitBtn).Tag;
    Form_PM16C_Op.Show;
  end;
end;

procedure TForm_16C_Table.CB_remoteClick(Sender: TObject);
begin
  if CB_remote.Checked then
    Form_PM16C.Set_Remote
  else
    Form_PM16C.Set_Local;
end;

procedure TForm_16C_Table.SB_SaveClick(Sender: TObject);
begin
  Form_PM16C.Backup_Param;
end;

procedure TForm_16C_Table.SB_UpdateClick(Sender: TObject);
var
  li : byte;
begin
  if Form_PM16C_Op.Showing then
    Form_PM16C_Op.BB_CloseClick(Sender);

  for li:=0 to 15 do
  begin
    Form_PM16C.SetPreset(li,StrToInt(Edit_Pos[li].Text));
    Form_PM16C.SetHSP(li,StrToInt(Edit_HS[li].Text));
    Form_PM16C.SetMSP(li,StrToInt(Edit_MS[li].Text));
    Form_PM16C.SetLSP(li,StrToInt(Edit_LS[li].Text));

    Edit_Pos[li].Text := Form_PM16C.GetPos(li).ToString;
    Edit_HS[li].Text := Form_PM16C.GetHSP(li).ToString;
    Edit_MS[li].Text := Form_PM16C.GetMSP(li).ToString;
    Edit_LS[li].Text := Form_PM16C.GetLSP(li).ToString;

    Form_PM16C.Set_Rate(li,CB_Rate[li].ItemIndex);


    Form_PM16C.Motor[li].Axis_Name := Edit_Axis_Name[li].Text;
    Form_PM16C.Motor[li].Conv := StrToFloat(Edit_Conv[li].Text);
    Form_PM16C.Motor[li].Unit_Name := Edit_Unit_Name[li].Text;
    Form_PM16C.Motor[li].CW :=Edit_CW[li].Text;
    Form_PM16C.Motor[li].CCW := Edit_CCW[li].Text;

    Form_PM16C.Set_LS(li,CB_LSW[li].ItemIndex );
  end;
  Form_PM16C.SB_RefreshClick(Sender);
end;

procedure TForm_16C_Table.SB_LoadClick(Sender: TObject);
begin
  Form_PM16C.Recover_Param;
end;


end.
