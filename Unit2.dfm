object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 483
  ClientWidth = 533
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 40
    Top = 326
    Width = 16
    Height = 13
    Caption = 'W1'
  end
  object Label2: TLabel
    Left = 40
    Top = 296
    Width = 12
    Height = 13
    Caption = 'dT'
  end
  object Label3: TLabel
    Left = 40
    Top = 353
    Width = 20
    Height = 13
    Caption = 'Ym1'
  end
  object Label4: TLabel
    Left = 144
    Top = 326
    Width = 16
    Height = 13
    Caption = 'W2'
  end
  object Label5: TLabel
    Left = 144
    Top = 353
    Width = 20
    Height = 13
    Caption = 'Ym2'
  end
  object Chart1: TChart
    Left = 32
    Top = 24
    Width = 400
    Height = 250
    Title.Text.Strings = (
      'TChart')
    TabOrder = 0
    ColorPaletteIndex = 13
    object Series1: TLineSeries
      Marks.Arrow.Visible = True
      Marks.Callout.Brush.Color = clBlack
      Marks.Callout.Arrow.Visible = True
      Marks.Visible = False
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Visible = False
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
    end
  end
  object Edit1: TEdit
    Left = 88
    Top = 323
    Width = 41
    Height = 21
    TabOrder = 1
  end
  object Edit2: TEdit
    Left = 88
    Top = 293
    Width = 41
    Height = 21
    TabOrder = 2
  end
  object Edit3: TEdit
    Left = 88
    Top = 350
    Width = 41
    Height = 21
    TabOrder = 3
  end
  object Edit4: TEdit
    Left = 192
    Top = 323
    Width = 41
    Height = 21
    TabOrder = 4
  end
  object Edit5: TEdit
    Left = 192
    Top = 350
    Width = 41
    Height = 21
    TabOrder = 5
  end
  object CheckBox1: TCheckBox
    Left = 144
    Top = 295
    Width = 97
    Height = 17
    Caption = #1047#1072#1087#1091#1089#1082' '#1074#1086#1083#1085#1099
    TabOrder = 6
    OnClick = CheckBox1Click
  end
  object CheckBox2: TCheckBox
    Left = 248
    Top = 352
    Width = 41
    Height = 17
    Caption = '3D'
    TabOrder = 7
  end
  object Button1: TButton
    Left = 295
    Top = 283
    Width = 137
    Height = 86
    Caption = #1059#1089#1090#1072#1085#1086#1074#1080#1090#1100
    TabOrder = 8
    OnClick = Button1Click
  end
  object MainMenu1: TMainMenu
    Left = 408
    Top = 416
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 10
    OnTimer = Timer1Timer
    Left = 352
    Top = 416
  end
end
