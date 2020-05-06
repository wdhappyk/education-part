object Form7: TForm7
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsToolWindow
  Caption = #1053#1086#1074#1072#1103' '#1075#1088#1091#1087#1087#1072
  ClientHeight = 156
  ClientWidth = 378
  Color = clBtnFace
  Font.Charset = RUSSIAN_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Roboto'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label4: TLabel
    Left = 113
    Top = 24
    Width = 133
    Height = 25
    Alignment = taCenter
    Caption = #1053#1086#1074#1072#1103' '#1075#1088#1091#1087#1087#1072
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Roboto'
    Font.Style = []
    ParentFont = False
  end
  object Label1: TLabel
    Left = 8
    Top = 74
    Width = 59
    Height = 13
    Caption = #1054#1090#1076#1077#1083#1077#1085#1080#1077':'
  end
  object Label2: TLabel
    Left = 8
    Top = 101
    Width = 82
    Height = 13
    Caption = #1057#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1100':'
  end
  object Button1: TButton
    Left = 104
    Top = 123
    Width = 266
    Height = 25
    Caption = #1057#1086#1079#1076#1072#1090#1100
    TabOrder = 0
    OnClick = Button1Click
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 104
    Top = 69
    Width = 266
    Height = 21
    KeyField = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1086#1090#1076#1077#1083#1077#1085#1080#1103
    ListField = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1086#1090#1076#1077#1083#1077#1085#1080#1103
    ListSource = DataModule2.DataSourceDepartments
    TabOrder = 1
    OnCloseUp = DBLookupComboBox1CloseUp
  end
  object DBLookupComboBox2: TDBLookupComboBox
    Left = 104
    Top = 96
    Width = 266
    Height = 21
    KeyField = #1050#1086#1076
    ListField = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
    ListSource = DataModule2.DataSourceProfs
    TabOrder = 2
  end
end
