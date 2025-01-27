unit Unit_PM16C_Op;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.ComCtrls;

type
  TForm_PM16C_Op = class(TForm)
    Edit_P0: TEdit;
    Label1: TLabel;
    Edit_P1: TEdit;
    Label2: TLabel;
    Edit_HSP0: TEdit;
    Edit_HSP1: TEdit;
    Label3: TLabel;
    Edit_MSP0: TEdit;
    Edit_MSP1: TEdit;
    Label4: TLabel;
    Edit_LSP0: TEdit;
    Edit_LSP1: TEdit;
    Label5: TLabel;
    Label6: TLabel;
    BB_Set: TBitBtn;
    BB_Close: TBitBtn;
    RG_LS: TRadioGroup;
    Label7: TLabel;
    CB_Rate1: TComboBox;
    CB_Rate2: TComboBox;
    Bevel1: TBevel;
    StatusBar1: TStatusBar;
    Label8: TLabel;
    Edit_AN0: TEdit;
    Edit_AN1: TEdit;
    Label9: TLabel;
    Edit_CR0: TEdit;
    Edit_CR1: TEdit;
    Label10: TLabel;
    Edit_CW0: TEdit;
    Edit_CW1: TEdit;
    Label11: TLabel;
    Edit_CCW0: TEdit;
    Edit_CCW1: TEdit;
    Label12: TLabel;
    Label13: TLabel;
    Edit_U0: TEdit;
    Edit_U1: TEdit;
    Edit_SMin0: TEdit;
    Edit_SMin1: TEdit;
    Edit_SMax0: TEdit;
    Edit_SMax1: TEdit;
    Label14: TLabel;
    Label15: TLabel;
    procedure FormShow(Sender: TObject);
    procedure BB_SetClick(Sender: TObject);
    procedure BB_CloseClick(Sender: TObject);
  private
    { Private �錾 }
  public
    { Public �錾 }
    lCh : longint;
  end;

var
  Form_PM16C_Op: TForm_PM16C_Op;
implementation

{$R *.dfm}

uses Unit_PM16C, Unit_PM16C_Table;

procedure TForm_PM16C_Op.BB_CloseClick(Sender: TObject);
begin
  Form_PM16C.SB_RefreshClick(Sender);
  Form_PM16C.Disp_Selected_Axis;

  Form_16C_Table.SB_RefleshClick(Sender);

  Close;
end;


procedure TForm_PM16C_Op.FormShow(Sender: TObject);
begin
  Label12.Caption := 'CH_'+lCh.ToString+' : '+Form_PM16C.Motor[lCh].Axis_Name;
  Edit_P0.Text := Form_PM16C.GetPos(lCh).ToString;
  Edit_P1.Text := Edit_P0.Text;

  Edit_SMin0.Text := Form_PM16C.Get_LMin(lCh).ToString;
  Edit_SMax0.Text := Form_PM16C.Get_LMax(lCh).ToString;
  Edit_SMin1.Text := Edit_SMin0.Text;
  Edit_SMax1.Text := Edit_SMax0.Text;


  Edit_HSP0.Text := Form_PM16C.GetHSP(lCh).ToString;
  Edit_MSP0.Text := Form_PM16C.GetMSP(lCh).ToString;
  Edit_LSP0.Text := Form_PM16C.GetLSP(lCh).ToString;
  Edit_HSP1.Text := Edit_HSP0.Text;
  Edit_MSP1.Text := Edit_MSP0.Text;
  Edit_LSP1.Text := Edit_LSP0.Text;

  Edit_AN0.Text := Form_PM16C.Motor[lCh].Axis_Name;
  Edit_AN1.Text := Form_PM16C.Motor[lCh].Axis_Name;
  Edit_CR0.Text := Form_PM16C.Motor[lCh].Conv.ToString;
  Edit_CR1.Text := Form_PM16C.Motor[lCh].Conv.ToString;
  Edit_U0.Text := Form_PM16C.Motor[lCh].Unit_Name;
  Edit_U1.Text := Form_PM16C.Motor[lCh].Unit_Name;

  Edit_CW0.Text :=  Form_PM16C.Motor[lCH].CW;
  Edit_CW1.Text :=  Form_PM16C.Motor[lCH].CW;
  Edit_CCW0.Text :=  Form_PM16C.Motor[lCH].CCW;
  Edit_CCW1.Text :=  Form_PM16C.Motor[lCH].CCW;

  RG_LS.ItemIndex := Form_PM16C.Get_LS(lCH);

  CB_Rate1.ItemIndex := Form_PM16C.Get_Rate(lCh);
  CB_Rate2.ItemIndex := CB_Rate1.ItemIndex;
end;

procedure TForm_PM16C_Op.BB_SetClick(Sender: TObject);
begin
  Form_PM16C.SetPreset(lCh,StrToInt(Edit_P1.Text));
  Form_PM16C.Set_LMin(lCh,StrToInt(Edit_SMin1.Text));
  Form_PM16C.Set_LMax(lCh,StrToInt(Edit_SMax1.Text));

  Form_PM16C.SetHSP(lCh,StrToInt(Edit_HSP1.Text));
  Form_PM16C.SetMSP(lCh,StrToInt(Edit_MSP1.Text));
  Form_PM16C.SetLSP(lCh,StrToInt(Edit_LSP1.Text));

  Form_PM16C.Set_Rate(lCh,CB_Rate2.ItemIndex);

  Edit_P0.Text := Form_PM16C.GetPos(lCh).ToString;
  Edit_HSP0.Text := Form_PM16C.GetHSP(lCh).ToString;
  Edit_MSP0.Text := Form_PM16C.GetMSP(lCh).ToString;
  Edit_LSP0.Text := Form_PM16C.GetLSP(lCh).ToString;

  Form_PM16C.Motor[lCh].Axis_Name := Edit_AN1.Text;
  Form_PM16C.Motor[lCh].Unit_Name := Edit_U1.Text;
  Form_PM16C.Motor[lCh].Conv := StrToFloat(Edit_CR1.Text);
  Form_PM16C.Motor[lCH].CW := Edit_CW1.Text ;
  Form_PM16C.Motor[lCH].CCW := Edit_CCW1.Text ;

  Form_PM16C.Set_LS(lCh,RG_LS.ItemIndex );

  FormShow(Sender);
end;

end.
