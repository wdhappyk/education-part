object Form17: TForm17
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMaximize]
  BorderStyle = bsSingle
  Caption = #1059#1095#1077#1073#1085#1072#1103' '#1095#1072#1089#1090#1100
  ClientHeight = 258
  ClientWidth = 266
  Color = clMenu
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 70
    Top = 24
    Width = 130
    Height = 25
    Alignment = taCenter
    Caption = #1040#1074#1090#1086#1088#1080#1079#1072#1094#1080#1103
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Roboto'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 70
    Top = 93
    Width = 72
    Height = 13
    Caption = #1055#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1100
  end
  object Label3: TLabel
    Left = 70
    Top = 141
    Width = 37
    Height = 13
    Caption = #1055#1072#1088#1086#1083#1100
  end
  object Label4: TLabel
    Left = 86
    Top = 64
    Width = 93
    Height = 13
    Caption = #1053#1077#1074#1077#1088#1085#1099#1077' '#1076#1072#1085#1085#1099#1077
    Color = clRed
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Visible = False
  end
  object Edit1: TEdit
    Left = 70
    Top = 112
    Width = 130
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 70
    Top = 160
    Width = 130
    Height = 21
    PasswordChar = '*'
    TabOrder = 1
  end
  object Button1: TButton
    Left = 67
    Top = 187
    Width = 133
    Height = 25
    Caption = #1042#1086#1081#1090#1080
    Default = True
    TabOrder = 2
    OnClick = Button1Click
  end
end
