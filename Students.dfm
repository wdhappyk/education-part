object Form10: TForm10
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = #1057#1090#1091#1076#1077#1085#1090#1099
  ClientHeight = 598
  ClientWidth = 929
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
  object Label1: TLabel
    Left = 401
    Top = 18
    Width = 95
    Height = 25
    Alignment = taCenter
    Caption = #1057#1090#1091#1076#1077#1085#1090#1099
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Roboto'
    Font.Style = []
    ParentFont = False
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 183
    Width = 913
    Height = 377
    DataSource = DataModule2.DataSourceStudentsInfo
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 0
    TitleFont.Charset = RUSSIAN_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Roboto'
    TitleFont.Style = []
    OnDblClick = Button4Click
    Columns = <
      item
        Expanded = False
        FieldName = #1054#1090#1076#1077#1083#1077#1085#1080#1077
        Width = 110
        Visible = True
      end
      item
        Expanded = False
        FieldName = #1050#1086#1076
        Title.Caption = #1050#1086#1076' '#1089#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1080
        Width = 110
        Visible = True
      end
      item
        Expanded = False
        FieldName = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
        Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1089#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1080
        Width = 300
        Visible = True
      end
      item
        Expanded = False
        FieldName = #1060#1048#1054
        Width = 250
        Visible = True
      end
      item
        Expanded = False
        FieldName = #1055#1086#1083
        Width = 35
        Visible = True
      end
      item
        Expanded = False
        FieldName = #1042#1086#1079#1088#1072#1089#1090
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 8
    Top = 64
    Width = 913
    Height = 82
    TabOrder = 1
    object Label3: TLabel
      Left = 11
      Top = 42
      Width = 59
      Height = 13
      Caption = #1054#1090#1076#1077#1083#1077#1085#1080#1077':'
    end
    object Label4: TLabel
      Left = 127
      Top = 42
      Width = 104
      Height = 13
      Caption = #1050#1086#1076' '#1089#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1080':'
    end
    object Label5: TLabel
      Left = 239
      Top = 42
      Width = 160
      Height = 13
      Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1089#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1080':'
    end
    object Label6: TLabel
      Left = 535
      Top = 42
      Width = 27
      Height = 13
      Caption = #1060#1048#1054':'
    end
    object Label7: TLabel
      Left = 783
      Top = 42
      Width = 23
      Height = 13
      Caption = #1055#1086#1083':'
    end
    object Label8: TLabel
      Left = 831
      Top = 42
      Width = 45
      Height = 13
      Caption = #1042#1086#1079#1088#1072#1089#1090':'
    end
    object Label2: TLabel
      Left = 11
      Top = 14
      Width = 38
      Height = 13
      Caption = #1060#1080#1083#1100#1090#1088
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Roboto'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object EditName: TEdit
      Left = 535
      Top = 56
      Width = 242
      Height = 21
      TabOrder = 0
    end
    object ComboBoxGender: TComboBox
      Left = 783
      Top = 56
      Width = 42
      Height = 21
      TabOrder = 1
      Items.Strings = (
        #1084
        #1078)
    end
    object EditAge: TEdit
      Left = 831
      Top = 56
      Width = 66
      Height = 21
      TabOrder = 2
    end
    object Button2: TButton
      Left = 783
      Top = 11
      Width = 114
      Height = 25
      Caption = #1057#1073#1088#1086#1089#1080#1090#1100
      TabOrder = 3
    end
    object Button1: TButton
      Left = 767
      Top = 11
      Width = 130
      Height = 25
      Caption = #1055#1088#1080#1084#1077#1085#1080#1090#1100
      TabOrder = 4
      OnClick = Button1Click
    end
    object Button3: TButton
      Left = 688
      Top = 11
      Width = 73
      Height = 25
      Caption = #1057#1073#1088#1086#1089#1080#1090#1100
      TabOrder = 5
      OnClick = Button3Click
    end
    object ComboBoxDepartment: TComboBox
      Left = 11
      Top = 56
      Width = 110
      Height = 21
      TabOrder = 6
    end
    object ComboBoxProfCode: TComboBox
      Left = 127
      Top = 56
      Width = 106
      Height = 21
      TabOrder = 7
    end
    object ComboBoxProfName: TComboBox
      Left = 239
      Top = 56
      Width = 290
      Height = 21
      TabOrder = 8
    end
  end
  object DBNavigator1: TDBNavigator
    Left = 736
    Top = 152
    Width = 185
    Height = 25
    DataSource = DataModule2.DataSourceStudentsInfo
    VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbRefresh]
    TabOrder = 2
  end
  object Button4: TButton
    Left = 8
    Top = 152
    Width = 105
    Height = 25
    Caption = #1048#1079#1084#1077#1085#1080#1090#1100
    TabOrder = 3
    OnClick = Button4Click
  end
  object Удалить: TButton
    Left = 8
    Top = 566
    Width = 97
    Height = 25
    Caption = #1059#1076#1072#1083#1080#1090#1100
    TabOrder = 4
    OnClick = УдалитьClick
  end
  object Button5: TButton
    Left = 846
    Top = 566
    Width = 75
    Height = 25
    Caption = #1042' Excel'
    TabOrder = 5
    OnClick = Button5Click
  end
end
