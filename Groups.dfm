object Form4: TForm4
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #1057#1090#1091#1076#1077#1085#1090#1099
  ClientHeight = 465
  ClientWidth = 659
  Color = clMenu
  Font.Charset = RUSSIAN_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Roboto'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 289
    Top = 16
    Width = 72
    Height = 25
    Alignment = taCenter
    Caption = #1043#1088#1091#1087#1087#1099
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Roboto'
    Font.Style = []
    ParentFont = False
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 96
    Width = 643
    Height = 332
    DataSource = DataModule2.DataSourceGroups
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    TabOrder = 0
    TitleFont.Charset = RUSSIAN_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Roboto'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
    Columns = <
      item
        Expanded = False
        FieldName = #1054#1090#1076#1077#1083#1077#1085#1080#1077
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = #1053#1086#1084#1077#1088
        Width = 40
        Visible = True
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
      end>
  end
  object DBNavigator1: TDBNavigator
    Left = 491
    Top = 65
    Width = 160
    Height = 25
    DataSource = DataModule2.DataSourceGroups
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbRefresh]
    TabOrder = 1
  end
  object Button1: TButton
    Left = 8
    Top = 65
    Width = 75
    Height = 25
    Caption = #1057#1086#1079#1076#1072#1090#1100
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 89
    Top = 65
    Width = 104
    Height = 25
    Caption = #1054#1090#1082#1088#1099#1090#1100
    TabOrder = 3
    OnClick = DBGrid1DblClick
  end
  object Button3: TButton
    Left = 8
    Top = 434
    Width = 82
    Height = 25
    Caption = #1059#1076#1072#1083#1080#1090#1100
    TabOrder = 4
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 576
    Top = 434
    Width = 75
    Height = 25
    Caption = #1042' Excel'
    TabOrder = 5
    OnClick = Button4Click
  end
end
