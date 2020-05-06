object Form8: TForm8
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsToolWindow
  Caption = #1044#1080#1089#1094#1080#1087#1083#1080#1085#1099' '#1089#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1080
  ClientHeight = 640
  ClientWidth = 563
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
    Left = 145
    Top = 24
    Width = 281
    Height = 25
    Alignment = taCenter
    Caption = #1044#1080#1089#1094#1080#1087#1083#1080#1085#1099' '#1089#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1080
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Roboto'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 10
    Top = 72
    Width = 104
    Height = 13
    Caption = #1050#1086#1076' '#1089#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1080':'
  end
  object Label3: TLabel
    Left = 10
    Top = 96
    Width = 79
    Height = 13
    Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077':'
  end
  object DBText1: TDBText
    Left = 120
    Top = 72
    Width = 435
    Height = 17
    DataField = #1050#1086#1076
    DataSource = DataModule2.DataSourceProfs
  end
  object DBText2: TDBText
    Left = 120
    Top = 95
    Width = 435
    Height = 17
    DataField = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
    DataSource = DataModule2.DataSourceProfs
  end
  object Label6: TLabel
    Left = 8
    Top = 457
    Width = 83
    Height = 13
    Caption = #1055#1088#1077#1087#1086#1076#1072#1074#1072#1090#1077#1083#1080':'
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 149
    Width = 547
    Height = 207
    DataSource = DataModule2.DataSourceDisciplinesByProf
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
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
        Visible = False
      end
      item
        Expanded = False
        FieldName = #1044#1080#1089#1094#1080#1087#1083#1080#1085#1072
        Width = 525
        Visible = True
      end
      item
        Expanded = False
        FieldName = #1057#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1100
        Visible = False
      end>
  end
  object Panel1: TPanel
    Left = 8
    Top = 362
    Width = 547
    Height = 71
    TabOrder = 1
    object Label4: TLabel
      Left = 8
      Top = 16
      Width = 79
      Height = 13
      Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077':'
    end
    object Label5: TLabel
      Left = 8
      Top = 42
      Width = 23
      Height = 13
      Caption = #1050#1086#1076':'
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 93
      Top = 39
      Width = 196
      Height = 21
      DataField = #1044#1080#1089#1094#1080#1087#1083#1080#1085#1072
      DataSource = DataModule2.DataSourceDisciplinesByProf
      KeyField = #1050#1086#1076
      ListField = #1050#1086#1076
      ListSource = DataModule2.DataSourceDisciplines
      TabOrder = 0
    end
    object DBLookupComboBox2: TDBLookupComboBox
      Left = 93
      Top = 12
      Width = 444
      Height = 21
      DataField = #1044#1080#1089#1094#1080#1087#1083#1080#1085#1072
      DataSource = DataModule2.DataSourceDisciplinesByProf
      KeyField = #1050#1086#1076
      ListField = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
      ListSource = DataModule2.DataSourceDisciplines
      TabOrder = 1
    end
  end
  object DBNavigator1: TDBNavigator
    Left = 315
    Top = 118
    Width = 240
    Height = 25
    DataSource = DataModule2.DataSourceDisciplinesByProf
    TabOrder = 2
  end
  object DBGrid2: TDBGrid
    Left = 8
    Top = 482
    Width = 547
    Height = 120
    DataSource = DataModule2.DataSourceEducatorDisciplines
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 3
    TitleFont.Charset = RUSSIAN_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Roboto'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = #1055#1088#1077#1087#1086#1076#1072#1074#1072#1090#1077#1083#1100
        Visible = False
      end
      item
        Expanded = False
        FieldName = #1050#1086#1076' '#1076#1080#1089#1094#1080#1087#1083#1080#1085#1099' '#1087#1086' '#1089#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1080
        Visible = False
      end
      item
        Expanded = False
        FieldName = #1050#1086#1076
        Visible = False
      end
      item
        Expanded = False
        FieldName = #1060#1048#1054
        Visible = True
      end>
  end
  object DBNavigator2: TDBNavigator
    Left = 430
    Top = 451
    Width = 125
    Height = 25
    DataSource = DataModule2.DataSourceEducatorDisciplines
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbRefresh]
    TabOrder = 4
  end
  object Button1: TButton
    Left = 332
    Top = 451
    Width = 75
    Height = 25
    Caption = #1053#1072#1079#1085#1072#1095#1080#1090#1100
    TabOrder = 5
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 8
    Top = 608
    Width = 75
    Height = 25
    Caption = #1057#1085#1103#1090#1100
    TabOrder = 6
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 8
    Top = 118
    Width = 75
    Height = 25
    Caption = #1042' Excel'
    TabOrder = 7
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 480
    Top = 608
    Width = 75
    Height = 25
    Caption = #1042' Excel'
    TabOrder = 8
    OnClick = Button4Click
  end
end
