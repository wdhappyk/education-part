object Form14: TForm14
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsToolWindow
  Caption = #1053#1086#1074#1099#1081' '#1101#1082#1079#1072#1084#1077#1085
  ClientHeight = 210
  ClientWidth = 377
  Color = clMenu
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
    Left = 112
    Top = 24
    Width = 155
    Height = 25
    Alignment = taCenter
    Caption = #1053#1086#1074#1099#1081' '#1101#1082#1079#1072#1084#1077#1085
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Roboto'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 8
    Top = 74
    Width = 61
    Height = 13
    Caption = #1054#1090#1076#1077#1083#1077#1085#1080#1077':'
  end
  object Label3: TLabel
    Left = 8
    Top = 101
    Width = 82
    Height = 13
    Caption = #1057#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1100':'
  end
  object Label4: TLabel
    Left = 8
    Top = 127
    Width = 65
    Height = 13
    Caption = #1044#1080#1089#1094#1080#1087#1083#1080#1085#1072':'
  end
  object Label5: TLabel
    Left = 8
    Top = 153
    Width = 46
    Height = 13
    Caption = #1057#1077#1084#1077#1089#1090#1088':'
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 104
    Top = 69
    Width = 266
    Height = 21
    KeyField = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1086#1090#1076#1077#1083#1077#1085#1080#1103
    ListField = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1086#1090#1076#1077#1083#1077#1085#1080#1103
    ListSource = DataModule2.DataSourceDepartments
    TabOrder = 0
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
    TabOrder = 1
    OnCloseUp = DBLookupComboBox2CloseUp
  end
  object DBLookupComboBox3: TDBLookupComboBox
    Left = 104
    Top = 123
    Width = 266
    Height = 21
    KeyField = #1050#1086#1076
    ListField = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
    ListSource = DataModule2.DataSourceDisciplinesByProfInfo
    TabOrder = 2
  end
  object Button1: TButton
    Left = 104
    Top = 177
    Width = 266
    Height = 25
    Caption = #1057#1086#1079#1076#1072#1090#1100
    TabOrder = 3
    OnClick = Button1Click
  end
  object ComboBoxSemester: TComboBox
    Left = 104
    Top = 150
    Width = 105
    Height = 21
    TabOrder = 4
    Text = '1'
    Items.Strings = (
      '1'
      '2'
      '3'
      '4'
      '5'
      '6'
      '7'
      '8'
      '9'
      '10')
  end
end
