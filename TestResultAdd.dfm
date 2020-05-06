object TestResultAddForm: TTestResultAddForm
  Left = 0
  Top = 0
  BorderStyle = bsSizeToolWin
  Caption = #1044#1086#1073#1072#1074#1083#1077#1085#1080#1077' '#1088#1077#1079#1091#1083#1100#1090#1072#1090#1072' '#1101#1082#1079#1072#1084#1077#1085#1072
  ClientHeight = 86
  ClientWidth = 562
  Color = clMenu
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
  object Label1: TLabel
    Left = 9
    Top = 9
    Width = 77
    Height = 13
    Caption = #1053#1086#1084#1077#1088' '#1075#1088#1091#1087#1087#1099':'
  end
  object Label2: TLabel
    Left = 136
    Top = 9
    Width = 44
    Height = 13
    Caption = #1057#1090#1091#1076#1077#1085#1090':'
  end
  object Label3: TLabel
    Left = 368
    Top = 9
    Width = 62
    Height = 13
    Caption = #1044#1072#1090#1072' '#1089#1076#1072#1095#1080':'
  end
  object Label4: TLabel
    Left = 480
    Top = 9
    Width = 42
    Height = 13
    Caption = #1054#1094#1077#1085#1082#1072':'
  end
  object Label5: TLabel
    Left = 8
    Top = 60
    Width = 266
    Height = 13
    Caption = #1069#1090#1086#1090' '#1089#1090#1091#1076#1077#1085#1090' '#1091#1078#1077' '#1080#1084#1077#1077#1090' '#1086#1094#1077#1085#1082#1091' '#1079#1072' '#1076#1072#1085#1085#1099#1081' '#1101#1082#1079#1072#1084#1077#1085
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'Roboto'
    Font.Style = []
    ParentFont = False
    Visible = False
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 9
    Top = 25
    Width = 121
    Height = 21
    KeyField = #1053#1086#1084#1077#1088
    ListField = #1053#1086#1084#1077#1088
    ListSource = DataModule2.DataSourceTestGroups
    TabOrder = 0
    OnCloseUp = DBLookupComboBox1CloseUp
  end
  object DBLookupComboBox2: TDBLookupComboBox
    Left = 136
    Top = 26
    Width = 226
    Height = 21
    KeyField = #1050#1086#1076
    ListField = #1060#1048#1054
    ListSource = DataModule2.DataSourceTestStudents
    TabOrder = 1
  end
  object DateTimePicker1: TDateTimePicker
    Left = 368
    Top = 26
    Width = 106
    Height = 21
    Date = 43884.000000000000000000
    Time = 0.996564664354082200
    TabOrder = 2
  end
  object ComboBox1: TComboBox
    Left = 480
    Top = 26
    Width = 74
    Height = 21
    ItemIndex = 0
    TabOrder = 3
    Text = '5'
    Items.Strings = (
      '5'
      '4'
      '3'
      '2')
  end
  object Button1: TButton
    Left = 479
    Top = 53
    Width = 75
    Height = 25
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100
    TabOrder = 4
    OnClick = Button1Click
  end
end
