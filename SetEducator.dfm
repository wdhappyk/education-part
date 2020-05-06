object Form12: TForm12
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsToolWindow
  Caption = #1053#1072#1079#1085#1072#1095#1080#1090#1100' '#1087#1088#1077#1087#1086#1076#1072#1074#1072#1090#1077#1083#1103
  ClientHeight = 54
  ClientWidth = 393
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
    Width = 31
    Height = 13
    Caption = 'Label1'
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 8
    Top = 25
    Width = 273
    Height = 21
    KeyField = #1050#1086#1076
    ListField = #1060#1048#1054
    ListSource = DataModule2.DataSourceEducators
    TabOrder = 0
  end
  object Button1: TButton
    Left = 287
    Top = 25
    Width = 98
    Height = 21
    Caption = #1053#1072#1079#1085#1072#1095#1080#1090#1100
    TabOrder = 1
    OnClick = Button1Click
  end
end
