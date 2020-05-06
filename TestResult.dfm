object Form15: TForm15
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #1056#1077#1079#1091#1083#1100#1090#1072#1090#1099' '#1101#1082#1079#1072#1084#1077#1085#1072
  ClientHeight = 655
  ClientWidth = 514
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
    Left = 137
    Top = 18
    Width = 213
    Height = 25
    Alignment = taCenter
    Caption = #1056#1077#1079#1091#1083#1100#1090#1072#1090#1099' '#1101#1082#1079#1072#1084#1077#1085#1072
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Roboto'
    Font.Style = []
    ParentFont = False
  end
  object DBText1: TDBText
    Left = 101
    Top = 133
    Width = 65
    Height = 17
    DataField = #1057#1077#1084#1077#1089#1090#1088
    DataSource = DataModule2.DataSourceTests
  end
  object DBText2: TDBText
    Left = 101
    Top = 110
    Width = 396
    Height = 17
    DataField = #1044#1080#1089#1094#1080#1087#1083#1080#1085#1072
    DataSource = DataModule2.DataSourceTests
  end
  object DBText3: TDBText
    Left = 101
    Top = 64
    Width = 396
    Height = 17
    DataField = #1054#1090#1076#1077#1083#1077#1085#1080#1077
    DataSource = DataModule2.DataSourceTests
  end
  object DBText4: TDBText
    Left = 101
    Top = 87
    Width = 396
    Height = 17
    DataField = #1057#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1100
    DataSource = DataModule2.DataSourceTests
  end
  object Label2: TLabel
    Left = 16
    Top = 133
    Width = 47
    Height = 13
    Caption = #1057#1077#1084#1077#1089#1090#1088':'
  end
  object Label3: TLabel
    Left = 16
    Top = 64
    Width = 59
    Height = 13
    Caption = #1054#1090#1076#1077#1083#1077#1085#1080#1077':'
  end
  object Label123123: TLabel
    Left = 16
    Top = 87
    Width = 79
    Height = 13
    Caption = #1057#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1100
  end
  object Label5: TLabel
    Left = 16
    Top = 110
    Width = 66
    Height = 13
    Caption = #1044#1080#1089#1094#1080#1072#1083#1080#1085#1072':'
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 272
    Width = 497
    Height = 344
    DataSource = DataModule2.DataSourceTestResult
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
        FieldName = #1050#1086#1076' '#1101#1082#1079#1072#1084#1077#1085#1072
        Visible = False
      end
      item
        Expanded = False
        FieldName = #1053#1086#1084#1077#1088' '#1075#1088#1091#1087#1087#1099
        Visible = True
      end
      item
        Expanded = False
        FieldName = #1060#1048#1054
        Width = 240
        Visible = True
      end
      item
        Expanded = False
        FieldName = #1044#1072#1090#1072' '#1089#1076#1072#1095#1080
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = #1054#1094#1077#1085#1082#1072
        Width = 50
        Visible = True
      end>
  end
  object DBNavigator1: TDBNavigator
    Left = 360
    Top = 241
    Width = 145
    Height = 25
    DataSource = DataModule2.DataSourceTestResult
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbRefresh]
    TabOrder = 1
  end
  object Button1: TButton
    Left = 8
    Top = 622
    Width = 75
    Height = 25
    Caption = #1059#1076#1072#1083#1080#1090#1100
    TabOrder = 2
    OnClick = Button1Click
  end
  object Добавить: TButton
    Left = 8
    Top = 241
    Width = 75
    Height = 25
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100
    TabOrder = 3
    OnClick = ДобавитьClick
  end
  object Изменить: TButton
    Left = 89
    Top = 241
    Width = 75
    Height = 25
    Caption = #1048#1079#1084#1077#1085#1080#1090#1100
    TabOrder = 4
    OnClick = ИзменитьClick
  end
  object Panel1: TPanel
    Left = 8
    Top = 156
    Width = 497
    Height = 80
    TabOrder = 5
    object Label4: TLabel
      Left = 16
      Top = 8
      Width = 43
      Height = 13
      Caption = #1060#1080#1083#1100#1090#1088
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 81
      Top = 39
      Width = 27
      Height = 13
      Caption = #1060#1048#1054':'
    end
    object Label8: TLabel
      Left = 231
      Top = 39
      Width = 62
      Height = 13
      Caption = #1044#1072#1090#1072' '#1089#1076#1072#1095#1080':'
    end
    object Label9: TLabel
      Left = 431
      Top = 39
      Width = 42
      Height = 13
      Caption = #1054#1094#1077#1085#1082#1072':'
    end
    object Label6: TLabel
      Left = 8
      Top = 39
      Width = 51
      Height = 13
      Caption = #1043#1088#1091#1087#1087#1072' '#8470':'
    end
    object Button2: TButton
      Left = 283
      Top = 8
      Width = 130
      Height = 25
      Caption = #1055#1088#1080#1084#1077#1085#1080#1090#1100
      TabOrder = 0
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 419
      Top = 8
      Width = 70
      Height = 25
      Caption = #1057#1073#1088#1086#1089#1080#1090#1100
      TabOrder = 1
      OnClick = Button3Click
    end
    object ComboBox2: TComboBox
      Left = 431
      Top = 53
      Width = 58
      Height = 21
      ItemIndex = 0
      TabOrder = 2
      Items.Strings = (
        ''
        '2'
        '3'
        '4'
        '5')
    end
    object Edit1: TEdit
      Left = 81
      Top = 53
      Width = 144
      Height = 21
      TabOrder = 3
    end
    object Edit2: TEdit
      Left = 304
      Top = 53
      Width = 121
      Height = 21
      TabOrder = 4
    end
    object ComboBox1: TComboBox
      Left = 231
      Top = 53
      Width = 67
      Height = 21
      TabOrder = 5
      Text = '>='
      Items.Strings = (
        '>='
        '='
        '<='
        '>'
        '<')
    end
    object Edit3: TEdit
      Left = 8
      Top = 53
      Width = 67
      Height = 21
      TabOrder = 6
    end
  end
  object Button4: TButton
    Left = 431
    Top = 622
    Width = 75
    Height = 25
    Caption = #1042' Excel'
    TabOrder = 6
    OnClick = Button4Click
  end
end
