object Form2: TForm2
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #1054#1090#1076#1077#1083#1077#1085#1080#1103
  ClientHeight = 361
  ClientWidth = 364
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
    Left = 113
    Top = 16
    Width = 106
    Height = 25
    Alignment = taCenter
    Caption = #1054#1090#1076#1077#1083#1077#1085#1080#1103
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Roboto'
    Font.Style = []
    ParentFont = False
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 88
    Width = 348
    Height = 267
    DataSource = DataModule2.DataSourceDepartments
    TabOrder = 0
    TitleFont.Charset = RUSSIAN_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Roboto'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1086#1090#1076#1077#1083#1077#1085#1080#1103
        Width = 300
        Visible = True
      end>
  end
  object DBNavigator1: TDBNavigator
    Left = 116
    Top = 57
    Width = 240
    Height = 25
    DataSource = DataModule2.DataSourceDepartments
    TabOrder = 1
  end
  object Button1: TButton
    Left = 8
    Top = 57
    Width = 75
    Height = 25
    Caption = #1042' Excel'
    TabOrder = 2
    OnClick = Button1Click
  end
end
