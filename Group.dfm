object Form5: TForm5
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsToolWindow
  Caption = #1043#1088#1091#1087#1087#1072
  ClientHeight = 561
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
  object DBText1: TDBText
    Left = 104
    Top = 127
    Width = 266
    Height = 17
    DataField = #1053#1086#1084#1077#1088
    DataSource = DataModule2.DataSourceGroups
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
  object Label3: TLabel
    Left = 8
    Top = 127
    Width = 77
    Height = 13
    Caption = #1053#1086#1084#1077#1088' '#1075#1088#1091#1087#1087#1099':'
  end
  object Label4: TLabel
    Left = 161
    Top = 24
    Width = 67
    Height = 25
    Alignment = taCenter
    Caption = #1043#1088#1091#1087#1087#1072
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Roboto'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 8
    Top = 203
    Width = 56
    Height = 13
    Caption = #1057#1090#1091#1076#1077#1085#1090#1099':'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Roboto'
    Font.Style = [fsBold]
    ParentFont = False
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
    OnCloseUp = DBLookupComboBox1Enter
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
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 228
    Width = 361
    Height = 297
    DataSource = DataModule2.DataSourceStudents
    TabOrder = 2
    TitleFont.Charset = RUSSIAN_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Roboto'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = #1050#1086#1076
        Visible = False
      end
      item
        Expanded = False
        FieldName = #1053#1086#1084#1077#1088' '#1075#1088#1091#1087#1087#1099
        Visible = False
      end
      item
        Expanded = False
        FieldName = #1060#1048#1054
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = #1055#1086#1083
        Width = 30
        Visible = True
      end
      item
        Expanded = False
        FieldName = #1044#1072#1090#1072' '#1088#1086#1078#1076#1077#1085#1080#1103
        Width = 90
        Visible = True
      end>
  end
  object DBNavigator1: TDBNavigator
    Left = 104
    Top = 197
    Width = 260
    Height = 25
    DataSource = DataModule2.DataSourceStudents
    TabOrder = 3
  end
  object Button1: TButton
    Left = 104
    Top = 150
    Width = 202
    Height = 25
    Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
    TabOrder = 4
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 312
    Top = 150
    Width = 58
    Height = 25
    Caption = #1057#1073#1088#1086#1089#1080#1090#1100
    TabOrder = 5
    OnClick = FormShow
  end
  object Button3: TButton
    Left = 295
    Top = 531
    Width = 75
    Height = 25
    Caption = #1042' Excel'
    TabOrder = 6
    OnClick = Button3Click
  end
end
