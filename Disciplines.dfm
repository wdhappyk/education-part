object Form6: TForm6
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #1044#1080#1089#1094#1080#1087#1083#1080#1085#1099
  ClientHeight = 469
  ClientWidth = 457
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
    Left = 153
    Top = 24
    Width = 127
    Height = 25
    Alignment = taCenter
    Caption = #1044#1080#1089#1094#1080#1087#1083#1080#1085#1099
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Roboto'
    Font.Style = []
    ParentFont = False
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 103
    Width = 441
    Height = 358
    DataSource = DataModule2.DataSourceDisciplines
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
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
      end>
  end
  object DBNavigator1: TDBNavigator
    Left = 209
    Top = 72
    Width = 240
    Height = 25
    DataSource = DataModule2.DataSourceDisciplines
    TabOrder = 1
  end
  object Button1: TButton
    Left = 8
    Top = 72
    Width = 75
    Height = 25
    Caption = #1042' Excel'
    TabOrder = 2
    OnClick = Button1Click
  end
end
