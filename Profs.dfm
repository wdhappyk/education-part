object Form3: TForm3
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #1057#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1080
  ClientHeight = 489
  ClientWidth = 463
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
    Left = 161
    Top = 16
    Width = 152
    Height = 25
    Alignment = taCenter
    Caption = #1057#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1080
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Roboto'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 14
    Top = 65
    Width = 59
    Height = 13
    Caption = #1054#1090#1076#1077#1083#1077#1085#1080#1077':'
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 102
    Top = 62
    Width = 351
    Height = 21
    KeyField = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1086#1090#1076#1077#1083#1077#1085#1080#1103
    ListField = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1086#1090#1076#1077#1083#1077#1085#1080#1103
    ListSource = DataModule2.DataSourceDepartments
    TabOrder = 0
  end
  object DBGrid1: TDBGrid
    Left = 6
    Top = 120
    Width = 449
    Height = 333
    DataSource = DataModule2.DataSourceProfs
    TabOrder = 1
    TitleFont.Charset = RUSSIAN_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Roboto'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = #1050#1086#1076
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
        Width = 300
        Visible = True
      end
      item
        Expanded = False
        FieldName = #1054#1090#1076#1077#1083#1077#1085#1080#1077
        Visible = False
      end>
  end
  object DBNavigator1: TDBNavigator
    Left = 215
    Top = 89
    Width = 240
    Height = 25
    DataSource = DataModule2.DataSourceProfs
    TabOrder = 2
  end
  object Button1: TButton
    Left = 6
    Top = 89
    Width = 121
    Height = 25
    Caption = #1044#1080#1089#1094#1080#1087#1083#1080#1085#1099
    TabOrder = 3
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 380
    Top = 459
    Width = 75
    Height = 25
    Caption = #1042' Excel'
    TabOrder = 4
    OnClick = Button2Click
  end
end
