object Form16: TForm16
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = #1048#1079#1084#1077#1085#1077#1085#1080#1077' '#1088#1077#1079#1091#1083#1100#1090#1072#1090#1072' '#1101#1082#1079#1072#1084#1077#1085#1072
  ClientHeight = 57
  ClientWidth = 370
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 63
    Height = 13
    Caption = #1044#1072#1090#1072' '#1089#1076#1072#1095#1080':'
  end
  object Label2: TLabel
    Left = 200
    Top = 9
    Width = 42
    Height = 13
    Caption = #1054#1094#1077#1085#1082#1072':'
  end
  object DateTimePicker1: TDateTimePicker
    Left = 8
    Top = 28
    Width = 186
    Height = 21
    Date = 43885.000000000000000000
    Time = 0.023716400464763860
    TabOrder = 0
  end
  object ComboBox1: TComboBox
    Left = 200
    Top = 28
    Width = 81
    Height = 21
    ItemIndex = 0
    TabOrder = 1
    Text = '5'
    Items.Strings = (
      '5'
      '4'
      '3'
      '2')
  end
  object Button1: TButton
    Left = 287
    Top = 26
    Width = 75
    Height = 25
    Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
    TabOrder = 2
    OnClick = Button1Click
  end
end
