object Form_Ph_PW: TForm_Ph_PW
  Left = 0
  Top = 0
  Caption = 'Phase map'
  ClientHeight = 606
  ClientWidth = 795
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 795
    Height = 606
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 0
    ExplicitWidth = 830
    object Panel3: TPanel
      Left = 2
      Top = 2
      Width = 791
      Height = 85
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      ExplicitWidth = 826
      object GroupBox2: TGroupBox
        Left = 0
        Top = 0
        Width = 791
        Height = 85
        Align = alClient
        Caption = 'Drawing'
        Color = clCream
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentColor = False
        ParentFont = False
        TabOrder = 0
        ExplicitWidth = 826
        object Bevel2: TBevel
          Left = 522
          Top = 53
          Width = 95
          Height = 22
        end
        object Bevel1: TBevel
          Left = 522
          Top = 22
          Width = 95
          Height = 22
        end
        object Label7: TLabel
          Left = 10
          Top = 25
          Width = 73
          Height = 14
          Caption = 'Image Level'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label9: TLabel
          Left = 162
          Top = 25
          Width = 30
          Height = 14
          Caption = 'Mag.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Shape1: TShape
          Left = 326
          Top = 26
          Width = 105
          Height = 40
          Brush.Color = clMoneyGreen
        end
        object Label1: TLabel
          Left = 444
          Top = 57
          Width = 72
          Height = 16
          Caption = 'Intensity : '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label2: TLabel
          Left = 526
          Top = 57
          Width = 83
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = '0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label3: TLabel
          Left = 443
          Top = 25
          Width = 64
          Height = 16
          Caption = 'Position : '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label4: TLabel
          Left = 526
          Top = 25
          Width = 83
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = '0,0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label_Size: TLabel
          Left = 333
          Top = 38
          Width = 90
          Height = 14
          Alignment = taCenter
          AutoSize = False
          Caption = '157*103'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label5: TLabel
          Left = 236
          Top = 25
          Width = 48
          Height = 14
          Caption = 'Img No.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Edit_PMin: TEdit
          Left = 10
          Top = 44
          Width = 60
          Height = 22
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          NumbersOnly = True
          ParentFont = False
          TabOrder = 0
          Text = '0'
          OnKeyUp = Edit_PMaxKeyUp
        end
        object Edit_PMax: TEdit
          Left = 78
          Top = 44
          Width = 64
          Height = 22
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          NumbersOnly = True
          ParentFont = False
          TabOrder = 1
          Text = '10000'
          OnKeyUp = Edit_PMaxKeyUp
        end
        object CB_Mag: TComboBox
          Left = 158
          Top = 44
          Width = 61
          Height = 22
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
          Text = '50%'
          OnChange = CB_MagChange
          Items.Strings = (
            '10%'
            '25%'
            '50%'
            '100%')
        end
        object BB_ReDraw: TBitBtn
          Left = 624
          Top = 21
          Width = 75
          Height = 25
          Caption = 'Redraw'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 9
          OnClick = BB_ReDrawClick
        end
        object Edit_Left: TEdit
          Left = 311
          Top = 11
          Width = 40
          Height = 22
          BevelOuter = bvRaised
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          NumbersOnly = True
          ParentFont = False
          TabOrder = 5
          Text = '350'
          OnKeyUp = Edit_LeftKeyUp
        end
        object Edit_Top: TEdit
          Left = 357
          Top = 11
          Width = 40
          Height = 22
          BevelOuter = bvRaised
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          NumbersOnly = True
          ParentFont = False
          TabOrder = 6
          Text = '250'
          OnKeyUp = Edit_LeftKeyUp
        end
        object Edit_Right: TEdit
          Left = 354
          Top = 57
          Width = 40
          Height = 22
          BevelOuter = bvRaised
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          NumbersOnly = True
          ParentFont = False
          TabOrder = 7
          Text = '700'
          OnKeyUp = Edit_LeftKeyUp
        end
        object Edit_Bottom: TEdit
          Left = 400
          Top = 57
          Width = 40
          Height = 22
          BevelOuter = bvRaised
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          NumbersOnly = True
          ParentFont = False
          TabOrder = 8
          Text = '500'
          OnKeyUp = Edit_LeftKeyUp
        end
        object BB_ImgCopy: TBitBtn
          Left = 705
          Top = 21
          Width = 75
          Height = 25
          Caption = 'Img Copy'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 11
          OnClick = BB_ImgCopyClick
        end
        object BB_ROICopy: TBitBtn
          Left = 624
          Top = 52
          Width = 75
          Height = 25
          Caption = 'ROI Copy'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 10
          OnClick = BB_ROICopyClick
        end
        object BB_Save: TBitBtn
          Left = 705
          Top = 52
          Width = 75
          Height = 25
          Caption = 'Save'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -12
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 12
          OnClick = BB_SaveClick
        end
        object Edit_No: TEdit
          Left = 233
          Top = 44
          Width = 53
          Height = 22
          NumbersOnly = True
          TabOrder = 3
          Text = '0'
        end
        object UD_No: TUpDown
          Left = 286
          Top = 44
          Width = 16
          Height = 22
          Associate = Edit_No
          Max = 20
          TabOrder = 4
          OnClick = UD_NoClick
        end
      end
    end
    object ScrollBox1: TScrollBox
      Left = 2
      Top = 87
      Width = 791
      Height = 517
      Align = alClient
      TabOrder = 1
      ExplicitWidth = 826
      object Image1: TImage
        Left = 0
        Top = 0
        Width = 2600
        Height = 2200
        OnMouseDown = Image1MouseDown
        OnMouseMove = Image1MouseMove
      end
      object SS: TSelShape
        Left = 33
        Top = 48
        Width = 65
        Height = 65
        Brush.Style = bsClear
        Pen.Color = clRed
        Pen.Width = 2
        OnMouseMove = SSMouseMove
        SizeSense = 5
        MinWidth = 5
        MinHeight = 5
        MinTop = 0
        MinLeft = 0
        MaxBottom = 0
        MaxRight = 0
        SelOption = [ResizeX, ResizeY, MoveX, MoveY]
      end
    end
  end
  object SaveDialog1: TSaveDialog
    Left = 202
    Top = 223
  end
end
