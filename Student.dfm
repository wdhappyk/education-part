object Form11: TForm11
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsToolWindow
  Caption = #1057#1090#1091#1076#1077#1085#1090
  ClientHeight = 279
  ClientWidth = 377
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
    Left = 153
    Top = 18
    Width = 79
    Height = 25
    Alignment = taCenter
    Caption = #1057#1090#1091#1076#1077#1085#1090
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Roboto'
    Font.Style = []
    ParentFont = False
  end
  object DBText1: TDBText
    Left = 104
    Top = 145
    Width = 266
    Height = 13
    DataField = #1053#1086#1084#1077#1088
    DataSource = DataModule2.DataSourceStudentsInfo
  end
  object Label2: TLabel
    Left = 8
    Top = 66
    Width = 59
    Height = 13
    Caption = #1054#1090#1076#1077#1083#1077#1085#1080#1077':'
  end
  object Label3: TLabel
    Left = 8
    Top = 93
    Width = 82
    Height = 13
    Caption = #1057#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1100':'
  end
  object Label4: TLabel
    Left = 8
    Top = 145
    Width = 86
    Height = 13
    Caption = #1053#1086#1084#1077#1088' '#1089#1090#1091#1076#1077#1085#1090#1072':'
  end
  object Label5: TLabel
    Left = 7
    Top = 119
    Width = 77
    Height = 13
    Caption = #1053#1086#1084#1077#1088' '#1075#1088#1091#1087#1087#1099':'
  end
  object Label6: TLabel
    Left = 8
    Top = 168
    Width = 27
    Height = 13
    Caption = #1060#1048#1054':'
  end
  object Label7: TLabel
    Left = 8
    Top = 195
    Width = 82
    Height = 13
    Caption = #1044#1072#1090#1072' '#1088#1086#1078#1076#1077#1085#1080#1103':'
  end
  object Label8: TLabel
    Left = 8
    Top = 221
    Width = 23
    Height = 13
    Caption = #1055#1086#1083':'
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 104
    Top = 61
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
    Top = 88
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
    Top = 115
    Width = 266
    Height = 21
    KeyField = #1053#1086#1084#1077#1088
    ListField = #1053#1086#1084#1077#1088
    ListSource = DataModule2.DataSourceGroupsByProf
    TabOrder = 2
  end
  object EditName: TEdit
    Left = 104
    Top = 164
    Width = 265
    Height = 21
    TabOrder = 3
  end
  object BirthDate: TDateTimePicker
    Left = 104
    Top = 191
    Width = 265
    Height = 21
    Date = 43878.000000000000000000
    Time = 0.829145543983031500
    TabOrder = 4
  end
  object ComboBoxGender: TComboBox
    Left = 104
    Top = 218
    Width = 57
    Height = 21
    MaxLength = 1
    TabOrder = 5
    Items.Strings = (
      #1084
      #1078)
  end
  object Button2: TButton
    Left = 312
    Top = 245
    Width = 58
    Height = 25
    Caption = #1057#1073#1088#1086#1089#1080#1090#1100
    TabOrder = 6
    OnClick = FormShow
  end
  object Button1: TButton
    Left = 104
    Top = 245
    Width = 202
    Height = 25
    Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
    TabOrder = 7
    OnClick = Button1Click
  end
end
