object Form9: TForm9
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #1055#1088#1077#1087#1086#1076#1072#1074#1072#1090#1077#1083#1080
  ClientHeight = 566
  ClientWidth = 881
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
    Left = 377
    Top = 24
    Width = 152
    Height = 25
    Alignment = taCenter
    Caption = #1055#1088#1077#1087#1086#1076#1072#1074#1072#1090#1077#1083#1080
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Roboto'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 16
    Top = 357
    Width = 69
    Height = 13
    Caption = #1044#1080#1089#1094#1080#1087#1083#1080#1085#1099':'
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 103
    Width = 865
    Height = 242
    DataSource = DataModule2.DataSourceEducators
    TabOrder = 0
    TitleFont.Charset = RUSSIAN_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Roboto'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = #1050#1086#1076
        Visible = True
      end
      item
        Expanded = False
        FieldName = #1060#1048#1054
        Width = 750
        Visible = True
      end>
  end
  object DBNavigator1: TDBNavigator
    Left = 633
    Top = 72
    Width = 240
    Height = 25
    DataSource = DataModule2.DataSourceEducators
    TabOrder = 1
  end
  object DBGrid2: TDBGrid
    Left = 8
    Top = 376
    Width = 865
    Height = 153
    DataSource = DataModule2.DataSourceEducatorDisciplinesList
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 2
    TitleFont.Charset = RUSSIAN_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Roboto'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = #1050#1086#1076' '#1087#1088#1077#1087#1086#1076#1072#1074#1072#1090#1077#1083#1103
        Visible = False
      end
      item
        Expanded = False
        FieldName = #1050#1086#1076' '#1076#1080#1089#1094#1080#1087#1083#1080#1085#1099' '#1087#1086' '#1089#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1080
        Visible = False
      end
      item
        Expanded = False
        FieldName = #1050#1086#1076' '#1089#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1080
        Width = 110
        Visible = True
      end
      item
        Expanded = False
        FieldName = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1089#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1080
        Width = 300
        Visible = True
      end
      item
        Expanded = False
        FieldName = #1050#1086#1076' '#1076#1080#1089#1094#1080#1087#1083#1080#1085#1099
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1076#1080#1089#1094#1080#1087#1083#1080#1085#1099
        Width = 300
        Visible = True
      end>
  end
  object Button1: TButton
    Left = 8
    Top = 535
    Width = 105
    Height = 25
    Caption = #1057#1085#1103#1090#1100
    TabOrder = 3
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 8
    Top = 72
    Width = 75
    Height = 25
    Caption = #1042' Excel'
    TabOrder = 4
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 91
    Top = 354
    Width = 75
    Height = 19
    Caption = #1042' Excel'
    TabOrder = 5
    OnClick = Button3Click
  end
end
