object Form13: TForm13
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #1069#1082#1079#1072#1084#1077#1085#1099
  ClientHeight = 542
  ClientWidth = 750
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
    Left = 329
    Top = 24
    Width = 102
    Height = 25
    Alignment = taCenter
    Caption = #1069#1082#1079#1072#1084#1077#1085#1099
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Roboto'
    Font.Style = []
    ParentFont = False
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 190
    Width = 734
    Height = 313
    DataSource = DataModule2.DataSourceTests
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 0
    TitleFont.Charset = RUSSIAN_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Roboto'
    TitleFont.Style = []
    OnDblClick = Button5Click
    Columns = <
      item
        Expanded = False
        FieldName = #1050#1086#1076
        Visible = False
      end
      item
        Expanded = False
        FieldName = #1057#1077#1084#1077#1089#1090#1088
        Visible = True
      end
      item
        Expanded = False
        FieldName = #1044#1080#1089#1094#1080#1087#1083#1080#1085#1072
        Width = 270
        Visible = True
      end
      item
        Expanded = False
        FieldName = #1057#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1100
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = #1054#1090#1076#1077#1083#1077#1085#1080#1077
        Width = 150
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 8
    Top = 73
    Width = 734
    Height = 80
    TabOrder = 1
    object Label2: TLabel
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
    object Label3: TLabel
      Left = 16
      Top = 39
      Width = 47
      Height = 13
      Caption = #1057#1077#1084#1077#1089#1090#1088':'
    end
    object Label4: TLabel
      Left = 83
      Top = 39
      Width = 66
      Height = 13
      Caption = #1044#1080#1089#1094#1080#1087#1083#1080#1085#1072':'
    end
    object Label5: TLabel
      Left = 351
      Top = 39
      Width = 82
      Height = 13
      Caption = #1057#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1100':'
    end
    object Label6: TLabel
      Left = 551
      Top = 39
      Width = 59
      Height = 13
      Caption = #1054#1090#1076#1077#1083#1077#1085#1080#1077':'
    end
    object Button1: TButton
      Left = 520
      Top = 8
      Width = 130
      Height = 25
      Caption = #1055#1088#1080#1084#1077#1085#1080#1090#1100
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button3: TButton
      Left = 656
      Top = 8
      Width = 70
      Height = 25
      Caption = #1057#1073#1088#1086#1089#1080#1090#1100
      TabOrder = 1
      OnClick = Button3Click
    end
    object ComboBoxSemestr: TComboBox
      Left = 16
      Top = 53
      Width = 61
      Height = 21
      TabOrder = 2
    end
    object ComboBoxDiscipline: TComboBox
      Left = 83
      Top = 53
      Width = 262
      Height = 21
      TabOrder = 3
    end
    object ComboBoxProf: TComboBox
      Left = 351
      Top = 53
      Width = 194
      Height = 21
      TabOrder = 4
    end
    object ComboBoxDepartment: TComboBox
      Left = 551
      Top = 53
      Width = 175
      Height = 21
      TabOrder = 5
    end
  end
  object Button2: TButton
    Left = 8
    Top = 509
    Width = 89
    Height = 25
    Caption = #1059#1076#1072#1083#1080#1090#1100
    TabOrder = 2
    OnClick = Button2Click
  end
  object DBNavigator1: TDBNavigator
    Left = 577
    Top = 159
    Width = 165
    Height = 25
    DataSource = DataModule2.DataSourceTests
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbRefresh]
    TabOrder = 3
  end
  object Button4: TButton
    Left = 8
    Top = 159
    Width = 89
    Height = 25
    Caption = #1057#1086#1079#1076#1072#1090#1100
    TabOrder = 4
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 103
    Top = 159
    Width = 154
    Height = 25
    Caption = #1056#1077#1079#1091#1083#1100#1090#1072#1090#1099' '#1101#1082#1079#1072#1084#1077#1085#1072
    TabOrder = 5
    OnClick = Button5Click
  end
  object Button6: TButton
    Left = 667
    Top = 509
    Width = 75
    Height = 25
    Caption = #1042' Excel'
    TabOrder = 6
    OnClick = Button6Click
  end
end
