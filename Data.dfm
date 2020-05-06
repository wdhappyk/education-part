object DataModule2: TDataModule2
  OldCreateOrder = False
  Height = 754
  Width = 1013
  object DbeducationpartConnection: TFDConnection
    Params.Strings = (
      'ConnectionDef=dbEducationPart')
    Connected = True
    LoginPrompt = False
    Left = 71
    Top = 23
  end
  object GroupsTable: TFDQuery
    Active = True
    Connection = DbeducationpartConnection
    SQL.Strings = (
      
        'SELECT '#1054#1090#1076#1077#1083#1077#1085#1080#1103'.['#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1086#1090#1076#1077#1083#1077#1085#1080#1103'] as '#1054#1090#1076#1077#1083#1077#1085#1080#1077', '#1043#1088#1091#1087#1087#1099'.'#1053 +
        #1086#1084#1077#1088', '#1057#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1080'.'#1050#1086#1076' as ['#1050#1086#1076' '#1089#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1080'], '#1057#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1080'.'#1053#1072 +
        #1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' as ['#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1089#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1080']'
      
        'FROM ('#1054#1090#1076#1077#1083#1077#1085#1080#1103' INNER JOIN '#1057#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1080' ON '#1054#1090#1076#1077#1083#1077#1085#1080#1103'.['#1053#1072#1080#1084#1077#1085#1086#1074#1072 +
        #1085#1080#1077' '#1086#1090#1076#1077#1083#1077#1085#1080#1103'] = '#1057#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1080'.'#1054#1090#1076#1077#1083#1077#1085#1080#1077') INNER JOIN '#1043#1088#1091#1087#1087#1099' ON '#1057 +
        #1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1080'.'#1050#1086#1076' = '#1043#1088#1091#1087#1087#1099'.'#1057#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1100';')
    Left = 415
    Top = 23
  end
  object DisciplinesTable: TFDQuery
    Active = True
    Connection = DbeducationpartConnection
    SQL.Strings = (
      'SELECT * FROM ['#1044#1080#1089#1094#1080#1083#1080#1085#1099']')
    Left = 37
    Top = 151
  end
  object DisciplinesByProfTable: TFDQuery
    Active = True
    IndexFieldNames = #1057#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1100
    MasterSource = DataSourceProfs
    MasterFields = #1050#1086#1076
    DetailFields = #1050#1086#1076
    Connection = DbeducationpartConnection
    SQL.Strings = (
      'SELECT * FROM ['#1044#1080#1089#1094#1080#1087#1083#1080#1085#1099' '#1087#1086' '#1089#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1103#1084']')
    Left = 570
    Top = 292
  end
  object EducatorDisciplinesTable: TFDQuery
    Active = True
    IndexFieldNames = #1050#1086#1076' '#1076#1080#1089#1094#1080#1087#1083#1080#1085#1099' '#1087#1086' '#1089#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1080
    MasterSource = DataSourceDisciplinesByProf
    MasterFields = #1050#1086#1076
    Connection = DbeducationpartConnection
    SQL.Strings = (
      'SELECT * FROM ['#1044#1080#1089#1094#1080#1087#1083#1080#1085#1099' '#1087#1088#1077#1087#1086#1076#1072#1074#1072#1090#1077#1083#1077#1081']'
      
        'LEFT JOIN ['#1055#1088#1077#1087#1086#1076#1072#1074#1072#1090#1077#1083#1080'] ON ['#1055#1088#1077#1087#1086#1076#1072#1074#1072#1090#1077#1083#1080'].['#1050#1086#1076'] = ['#1044#1080#1089#1094#1080#1087#1083#1080#1085#1099 +
        ' '#1087#1088#1077#1087#1086#1076#1072#1074#1072#1090#1077#1083#1077#1081'].['#1055#1088#1077#1087#1086#1076#1072#1074#1072#1090#1077#1083#1100']')
    Left = 519
    Top = 429
  end
  object DepartmentsTable: TFDQuery
    Active = True
    Connection = DbeducationpartConnection
    SQL.Strings = (
      'SELECT * FROM ['#1054#1090#1076#1077#1083#1077#1085#1080#1103']')
    Left = 614
    Top = 37
  end
  object EducatorsTable: TFDQuery
    Active = True
    Connection = DbeducationpartConnection
    SQL.Strings = (
      'SELECT * FROM ['#1055#1088#1077#1087#1086#1076#1072#1074#1072#1090#1077#1083#1080']')
    Left = 137
    Top = 111
  end
  object ProfsTable: TFDQuery
    Active = True
    IndexFieldNames = #1054#1090#1076#1077#1083#1077#1085#1080#1077
    MasterSource = DataSourceDepartments
    MasterFields = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1086#1090#1076#1077#1083#1077#1085#1080#1103
    DetailFields = #1050#1086#1076
    Connection = DbeducationpartConnection
    SQL.Strings = (
      'SELECT * FROM ['#1057#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1080']')
    Left = 616
    Top = 169
  end
  object StudentsTable: TFDQuery
    Active = True
    IndexFieldNames = #1053#1086#1084#1077#1088' '#1075#1088#1091#1087#1087#1099
    MasterSource = DataSourceGroups
    MasterFields = #1053#1086#1084#1077#1088
    Connection = DbeducationpartConnection
    SQL.Strings = (
      'SELECT * FROM ['#1057#1090#1091#1076#1077#1085#1090#1099']')
    Left = 414
    Top = 151
  end
  object TestsTable: TFDQuery
    Active = True
    Connection = DbeducationpartConnection
    SQL.Strings = (
      'SELECT '
      #1069#1082#1079#1072#1084#1077#1085#1099'.'#1050#1086#1076', '
      #1069#1082#1079#1072#1084#1077#1085#1099'.'#1057#1077#1084#1077#1089#1090#1088', '
      #1044#1080#1089#1094#1080#1083#1080#1085#1099'.'#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' as ['#1044#1080#1089#1094#1080#1087#1083#1080#1085#1072'], '
      #1057#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1080'.'#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' as ['#1057#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1100'], '
      #1057#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1080'.'#1050#1086#1076' as ['#1050#1086#1076' '#1089#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1080'], '
      #1057#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1080'.'#1054#1090#1076#1077#1083#1077#1085#1080#1077
      
        'FROM '#1057#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1080' INNER JOIN ('#1044#1080#1089#1094#1080#1083#1080#1085#1099' INNER JOIN (['#1044#1080#1089#1094#1080#1087#1083#1080#1085#1099 +
        ' '#1087#1086' '#1089#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1103#1084'] INNER JOIN '#1069#1082#1079#1072#1084#1077#1085#1099' ON ['#1044#1080#1089#1094#1080#1087#1083#1080#1085#1099' '#1087#1086' '#1089#1087#1077#1094#1080#1072 +
        #1083#1100#1085#1086#1089#1090#1103#1084'].'#1050#1086#1076' = '#1069#1082#1079#1072#1084#1077#1085#1099'.['#1050#1086#1076' '#1076#1080#1089#1094#1080#1087#1083#1080#1085#1099' '#1087#1086' '#1089#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1080']) ON '#1044 +
        #1080#1089#1094#1080#1083#1080#1085#1099'.'#1050#1086#1076' = ['#1044#1080#1089#1094#1080#1087#1083#1080#1085#1099' '#1087#1086' '#1089#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1103#1084'].'#1044#1080#1089#1094#1080#1087#1083#1080#1085#1072') ON '#1057#1087#1077 +
        #1094#1080#1072#1083#1100#1085#1086#1089#1090#1080'.'#1050#1086#1076' = ['#1044#1080#1089#1094#1080#1087#1083#1080#1085#1099' '#1087#1086' '#1089#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1103#1084'].'#1057#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1100';')
    Left = 120
    Top = 404
  end
  object DataSourceDepartments: TDataSource
    DataSet = DepartmentsTable
    Left = 616
    Top = 104
  end
  object DataSourceProfs: TDataSource
    DataSet = ProfsTable
    Left = 576
    Top = 224
  end
  object DataSourceGroups: TDataSource
    DataSet = GroupsTable
    Left = 416
    Top = 88
  end
  object DataSourceStudents: TDataSource
    DataSet = StudentsTable
    Left = 416
    Top = 208
  end
  object GroupUpdateQuery: TFDQuery
    AfterExecute = GroupUpdateQueryAfterExecute
    Connection = DbeducationpartConnection
    SQL.Strings = (
      'UPDATE ['#1043#1088#1091#1087#1087#1099'] SET ['#1057#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1100'] = :prof WHERE ['#1053#1086#1084#1077#1088'] = :n')
    Left = 328
    Top = 32
    ParamData = <
      item
        Name = 'PROF'
        DataType = ftString
        ParamType = ptInput
      end
      item
        Name = 'N'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object DataSourceDisciplines: TDataSource
    DataSet = DisciplinesTable
    Left = 40
    Top = 216
  end
  object GroupInsertQuery: TFDQuery
    AfterExecute = GroupUpdateQueryAfterExecute
    Connection = DbeducationpartConnection
    SQL.Strings = (
      'INSERT INTO ['#1043#1088#1091#1087#1087#1099'] (['#1057#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1100']) VALUES (:prof)')
    Left = 320
    Top = 96
    ParamData = <
      item
        Name = 'PROF'
        DataType = ftString
        ParamType = ptInput
      end>
  end
  object GroupDeleteQuery: TFDQuery
    AfterExecute = GroupUpdateQueryAfterExecute
    Connection = DbeducationpartConnection
    SQL.Strings = (
      'DELETE FROM ['#1043#1088#1091#1087#1087#1099'] WHERE ['#1053#1086#1084#1077#1088'] = :n')
    Left = 320
    Top = 176
    ParamData = <
      item
        Name = 'N'
        DataType = ftInteger
        ParamType = ptInput
      end>
  end
  object DataSourceDisciplinesByProf: TDataSource
    DataSet = DisciplinesByProfTable
    Left = 560
    Top = 368
  end
  object DisciplinesInfoTable: TFDQuery
    Active = True
    IndexFieldNames = #1050#1086#1076
    MasterSource = DataSourceDisciplinesByProf
    MasterFields = #1044#1080#1089#1094#1080#1087#1083#1080#1085#1072
    DetailFields = #1050#1086#1076
    Connection = DbeducationpartConnection
    SQL.Strings = (
      'SELECT * FROM ['#1044#1080#1089#1094#1080#1083#1080#1085#1099']')
    Left = 733
    Top = 311
  end
  object DataSourceDisciplinesInfo: TDataSource
    DataSet = DisciplinesInfoTable
    Left = 776
    Top = 368
  end
  object DataSourceEducators: TDataSource
    DataSet = EducatorsTable
    Left = 136
    Top = 168
  end
  object StudentsInfoTable: TFDQuery
    Active = True
    Filtered = True
    FilterOptions = [foCaseInsensitive]
    DetailFields = #1053#1086#1084#1077#1088
    Connection = DbeducationpartConnection
    SQL.Strings = (
      
        'SELECT '#1057#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1080'.'#1050#1086#1076', '#1057#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1080'.'#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077', '#1057#1087#1077#1094#1080#1072#1083#1100#1085#1086 +
        #1089#1090#1080'.'#1054#1090#1076#1077#1083#1077#1085#1080#1077', '#1057#1090#1091#1076#1077#1085#1090#1099'.'#1060#1048#1054', '#1057#1090#1091#1076#1077#1085#1090#1099'.'#1055#1086#1083', (DATEDIFF('#39'yyyy'#39', '#1057#1090#1091 +
        #1076#1077#1085#1090#1099'.['#1044#1072#1090#1072' '#1088#1086#1078#1076#1077#1085#1080#1103'], DATE())) AS '#1042#1086#1079#1088#1072#1089#1090', '#1057#1090#1091#1076#1077#1085#1090#1099'.'#1050#1086#1076' as '#1053#1086#1084#1077 +
        #1088', '#1057#1090#1091#1076#1077#1085#1090#1099'.['#1053#1086#1084#1077#1088' '#1075#1088#1091#1087#1087#1099'], '#1057#1090#1091#1076#1077#1085#1090#1099'.['#1044#1072#1090#1072' '#1088#1086#1078#1076#1077#1085#1080#1103']'
      
        'FROM '#1057#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1080' INNER JOIN ('#1043#1088#1091#1087#1087#1099' INNER JOIN '#1057#1090#1091#1076#1077#1085#1090#1099' ON '#1043#1088#1091 +
        #1087#1087#1099'.'#1053#1086#1084#1077#1088' = '#1057#1090#1091#1076#1077#1085#1090#1099'.['#1053#1086#1084#1077#1088' '#1075#1088#1091#1087#1087#1099']) ON '#1057#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1080'.'#1050#1086#1076' = '#1043#1088#1091#1087 +
        #1087#1099'.'#1057#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1100';')
    Left = 928
    Top = 31
  end
  object DataSourceStudentsInfo: TDataSource
    DataSet = StudentsInfoTable
    Left = 928
    Top = 96
  end
  object StudentDeleteQuery: TFDQuery
    AfterExecute = StudentDeleteQueryAfterExecute
    Connection = DbeducationpartConnection
    SQL.Strings = (
      'DELETE FROM ['#1057#1090#1091#1076#1077#1085#1090#1099'] WHERE ['#1050#1086#1076'] = :n')
    Left = 832
    Top = 16
    ParamData = <
      item
        Name = 'N'
        ParamType = ptInput
      end>
  end
  object GroupsByProfTable: TFDQuery
    Active = True
    IndexFieldNames = #1057#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1100
    MasterSource = DataSourceProfs
    MasterFields = #1050#1086#1076
    DetailFields = #1053#1086#1084#1077#1088
    Connection = DbeducationpartConnection
    SQL.Strings = (
      'SELECT * FROM ['#1043#1088#1091#1087#1087#1099']')
    Left = 690
    Top = 203
  end
  object DataSourceGroupsByProf: TDataSource
    DataSet = GroupsByProfTable
    Left = 720
    Top = 256
  end
  object StudentUpdateQuery: TFDQuery
    AfterExecute = StudentDeleteQueryAfterExecute
    Connection = DbeducationpartConnection
    SQL.Strings = (
      
        'UPDATE ['#1057#1090#1091#1076#1077#1085#1090#1099'] SET ['#1053#1086#1084#1077#1088' '#1075#1088#1091#1087#1087#1099'] = :group, ['#1060#1048#1054'] = :name, ['#1055 +
        #1086#1083'] = :gender, ['#1044#1072#1090#1072' '#1088#1086#1078#1076#1077#1085#1080#1103'] = :birthday WHERE ['#1050#1086#1076'] = :n')
    Left = 832
    Top = 72
    ParamData = <
      item
        Name = 'GROUP'
        ParamType = ptInput
      end
      item
        Name = 'NAME'
        ParamType = ptInput
      end
      item
        Name = 'GENDER'
        ParamType = ptInput
      end
      item
        Name = 'BIRTHDAY'
        ParamType = ptInput
      end
      item
        Name = 'N'
        ParamType = ptInput
      end>
  end
  object DataSourceEducatorDisciplines: TDataSource
    DataSet = EducatorDisciplinesTable
    Left = 496
    Top = 480
  end
  object SetEducatorQuery: TFDQuery
    AfterExecute = SetEducatorQueryAfterExecute
    Connection = DbeducationpartConnection
    SQL.Strings = (
      
        'INSERT INTO ['#1044#1080#1089#1094#1080#1087#1083#1080#1085#1099' '#1087#1088#1077#1087#1086#1076#1072#1074#1072#1090#1077#1083#1077#1081'] (['#1055#1088#1077#1087#1086#1076#1072#1074#1072#1090#1077#1083#1100'], ['#1050#1086#1076' '#1076 +
        #1080#1089#1094#1080#1087#1083#1080#1085#1099' '#1087#1086' '#1089#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1080']) VALUES (:educator, :discipline)')
    Left = 632
    Top = 432
    ParamData = <
      item
        Name = 'EDUCATOR'
        ParamType = ptInput
      end
      item
        Name = 'DISCIPLINE'
        ParamType = ptInput
      end>
  end
  object RemoveEducatorQuery: TFDQuery
    AfterExecute = SetEducatorQueryAfterExecute
    Connection = DbeducationpartConnection
    SQL.Strings = (
      
        'DELETE FROM ['#1044#1080#1089#1094#1080#1087#1083#1080#1085#1099' '#1087#1088#1077#1087#1086#1076#1072#1074#1072#1090#1077#1083#1077#1081'] WHERE ['#1055#1088#1077#1087#1086#1076#1072#1074#1072#1090#1077#1083#1100'] = ' +
        ':educator AND ['#1050#1086#1076' '#1076#1080#1089#1094#1080#1087#1083#1080#1085#1099' '#1087#1086' '#1089#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1080'] = :discipline')
    Left = 656
    Top = 488
    ParamData = <
      item
        Name = 'EDUCATOR'
        ParamType = ptInput
      end
      item
        Name = 'DISCIPLINE'
        ParamType = ptInput
      end>
  end
  object EducatorDisciplinesListTable: TFDQuery
    Active = True
    IndexFieldNames = #1050#1086#1076' '#1087#1088#1077#1087#1086#1076#1072#1074#1072#1090#1077#1083#1103
    MasterSource = DataSourceEducators
    MasterFields = #1050#1086#1076
    Connection = DbeducationpartConnection
    SQL.Strings = (
      'SELECT '
      #1055#1088#1077#1087#1086#1076#1072#1074#1072#1090#1077#1083#1080'.'#1050#1086#1076' as ['#1050#1086#1076' '#1087#1088#1077#1087#1086#1076#1072#1074#1072#1090#1077#1083#1103'], '
      
        '['#1044#1080#1089#1094#1080#1087#1083#1080#1085#1099' '#1087#1086' '#1089#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1103#1084'].'#1050#1086#1076' as ['#1050#1086#1076' '#1076#1080#1089#1094#1080#1087#1083#1080#1085#1099' '#1087#1086' '#1089#1087#1077#1094#1080#1072#1083 +
        #1100#1085#1086#1089#1090#1080'], '
      #1057#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1080'.'#1050#1086#1076' as ['#1050#1086#1076' '#1089#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1080'], '
      #1057#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1080'.'#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' as ['#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1089#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1080'], '
      #1044#1080#1089#1094#1080#1083#1080#1085#1099'.'#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' as ['#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1076#1080#1089#1094#1080#1087#1083#1080#1085#1099'],'
      #1044#1080#1089#1094#1080#1083#1080#1085#1099'.'#1050#1086#1076' as ['#1050#1086#1076' '#1076#1080#1089#1094#1080#1087#1083#1080#1085#1099']'
      
        'FROM '#1057#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1080' INNER JOIN ('#1044#1080#1089#1094#1080#1083#1080#1085#1099' INNER JOIN (['#1044#1080#1089#1094#1080#1087#1083#1080#1085#1099 +
        ' '#1087#1086' '#1089#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1103#1084'] INNER JOIN ('#1055#1088#1077#1087#1086#1076#1072#1074#1072#1090#1077#1083#1080' INNER JOIN ['#1044#1080#1089#1094#1080#1087 +
        #1083#1080#1085#1099' '#1087#1088#1077#1087#1086#1076#1072#1074#1072#1090#1077#1083#1077#1081'] ON '#1055#1088#1077#1087#1086#1076#1072#1074#1072#1090#1077#1083#1080'.'#1050#1086#1076' = ['#1044#1080#1089#1094#1080#1087#1083#1080#1085#1099' '#1087#1088#1077#1087#1086#1076#1072#1074 +
        #1072#1090#1077#1083#1077#1081'].'#1055#1088#1077#1087#1086#1076#1072#1074#1072#1090#1077#1083#1100') ON ['#1044#1080#1089#1094#1080#1087#1083#1080#1085#1099' '#1087#1086' '#1089#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1103#1084'].'#1050#1086#1076' = [' +
        #1044#1080#1089#1094#1080#1087#1083#1080#1085#1099' '#1087#1088#1077#1087#1086#1076#1072#1074#1072#1090#1077#1083#1077#1081'].['#1050#1086#1076' '#1076#1080#1089#1094#1080#1087#1083#1080#1085#1099' '#1087#1086' '#1089#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1080']) ON' +
        ' '#1044#1080#1089#1094#1080#1083#1080#1085#1099'.'#1050#1086#1076' = ['#1044#1080#1089#1094#1080#1087#1083#1080#1085#1099' '#1087#1086' '#1089#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1103#1084'].'#1044#1080#1089#1094#1080#1087#1083#1080#1085#1072') ON '#1057 +
        #1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1080'.'#1050#1086#1076' = ['#1044#1080#1089#1094#1080#1087#1083#1080#1085#1099' '#1087#1086' '#1089#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1103#1084'].'#1057#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1100';'
      '')
    Left = 157
    Top = 233
  end
  object DataSourceEducatorDisciplinesList: TDataSource
    DataSet = EducatorDisciplinesListTable
    Left = 184
    Top = 288
  end
  object DataSourceTests: TDataSource
    DataSet = TestsTable
    Left = 112
    Top = 456
  end
  object TestDeleteQuery: TFDQuery
    AfterExecute = TestDeleteQueryAfterExecute
    Connection = DbeducationpartConnection
    SQL.Strings = (
      'DELETE FROM ['#1069#1082#1079#1072#1084#1077#1085#1099'] WHERE ['#1050#1086#1076'] = :n')
    Left = 48
    Top = 416
    ParamData = <
      item
        Name = 'N'
        ParamType = ptInput
      end>
  end
  object DataSourceDisciplinesByProfInfo: TDataSource
    DataSet = DisciplinesByProfInfoTable
    Left = 376
    Top = 368
  end
  object DisciplinesByProfInfoTable: TFDQuery
    Active = True
    IndexFieldNames = #1057#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1100
    MasterSource = DataSourceProfs
    MasterFields = #1050#1086#1076
    DetailFields = #1050#1086#1076
    Connection = DbeducationpartConnection
    SQL.Strings = (
      
        'SELECT ['#1044#1080#1089#1094#1080#1087#1083#1080#1085#1099' '#1087#1086' '#1089#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1103#1084'].'#1050#1086#1076', '#1044#1080#1089#1094#1080#1083#1080#1085#1099'.'#1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080 +
        #1077', ['#1044#1080#1089#1094#1080#1087#1083#1080#1085#1099' '#1087#1086' '#1089#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1103#1084'].'#1057#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1100
      
        'FROM '#1044#1080#1089#1094#1080#1083#1080#1085#1099' INNER JOIN ['#1044#1080#1089#1094#1080#1087#1083#1080#1085#1099' '#1087#1086' '#1089#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1103#1084'] ON '#1044#1080#1089#1094 +
        #1080#1083#1080#1085#1099'.'#1050#1086#1076' = ['#1044#1080#1089#1094#1080#1087#1083#1080#1085#1099' '#1087#1086' '#1089#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1103#1084'].'#1044#1080#1089#1094#1080#1087#1083#1080#1085#1072';')
    Left = 469
    Top = 327
  end
  object TestInsertQuery: TFDQuery
    AfterExecute = TestDeleteQueryAfterExecute
    Connection = DbeducationpartConnection
    SQL.Strings = (
      
        'INSERT INTO ['#1069#1082#1079#1072#1084#1077#1085#1099'] (['#1050#1086#1076' '#1076#1080#1089#1094#1080#1087#1083#1080#1085#1099' '#1087#1086' '#1089#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1080'], ['#1057#1077#1084#1077 +
        #1089#1090#1088'])'
      'VALUES'
      '(:code, :semester)')
    Left = 32
    Top = 472
    ParamData = <
      item
        Name = 'CODE'
        ParamType = ptInput
      end
      item
        Name = 'SEMESTER'
        ParamType = ptInput
      end>
  end
  object DataSourceTestResult: TDataSource
    DataSet = TestResultTable
    Left = 152
    Top = 584
  end
  object TestResultTable: TFDQuery
    Active = True
    IndexFieldNames = #1050#1086#1076' '#1101#1082#1079#1072#1084#1077#1085#1072
    MasterSource = DataSourceTests
    MasterFields = #1050#1086#1076
    Connection = DbeducationpartConnection
    SQL.Strings = (
      'SELECT '
      '['#1056#1077#1079#1091#1083#1100#1090#1072#1090#1099' '#1101#1082#1079#1072#1084#1077#1085#1086#1074'].['#1050#1086#1076' '#1101#1082#1079#1072#1084#1077#1085#1072'], '
      #1057#1090#1091#1076#1077#1085#1090#1099'.['#1053#1086#1084#1077#1088' '#1075#1088#1091#1087#1087#1099'], '
      #1057#1090#1091#1076#1077#1085#1090#1099'.'#1060#1048#1054', '
      #1057#1090#1091#1076#1077#1085#1090#1099'.'#1050#1086#1076' as ['#1050#1086#1076' '#1089#1090#1091#1076#1077#1085#1090#1072'],'
      '['#1056#1077#1079#1091#1083#1100#1090#1072#1090#1099' '#1101#1082#1079#1072#1084#1077#1085#1086#1074'].['#1044#1072#1090#1072' '#1089#1076#1072#1095#1080'], '
      '['#1056#1077#1079#1091#1083#1100#1090#1072#1090#1099' '#1101#1082#1079#1072#1084#1077#1085#1086#1074'].'#1054#1094#1077#1085#1082#1072
      
        'FROM '#1057#1090#1091#1076#1077#1085#1090#1099' INNER JOIN ['#1056#1077#1079#1091#1083#1100#1090#1072#1090#1099' '#1101#1082#1079#1072#1084#1077#1085#1086#1074'] ON '#1057#1090#1091#1076#1077#1085#1090#1099'.'#1050#1086#1076' ' +
        '= ['#1056#1077#1079#1091#1083#1100#1090#1072#1090#1099' '#1101#1082#1079#1072#1084#1077#1085#1086#1074'].'#1057#1090#1091#1076#1077#1085#1090
      'ORDER BY ['#1056#1077#1079#1091#1083#1100#1090#1072#1090#1099' '#1101#1082#1079#1072#1084#1077#1085#1086#1074'].['#1044#1072#1090#1072' '#1089#1076#1072#1095#1080'] DESC;')
    Left = 127
    Top = 519
  end
  object TestResultDeleteQuery: TFDQuery
    AfterExecute = TestResultDeleteQueryAfterExecute
    Connection = DbeducationpartConnection
    SQL.Strings = (
      
        'DELETE FROM ['#1056#1077#1079#1091#1083#1100#1090#1072#1090#1099' '#1101#1082#1079#1072#1084#1077#1085#1086#1074'] WHERE ['#1050#1086#1076' '#1101#1082#1079#1072#1084#1077#1085#1072'] = :n AND' +
        ' ['#1057#1090#1091#1076#1077#1085#1090'] = :s')
    Left = 40
    Top = 552
    ParamData = <
      item
        Name = 'N'
        ParamType = ptInput
      end
      item
        Name = 'S'
        ParamType = ptInput
      end>
  end
  object TestResultInsertQuery: TFDQuery
    AfterExecute = TestResultDeleteQueryAfterExecute
    Connection = DbeducationpartConnection
    SQL.Strings = (
      
        'INSERT INTO ['#1056#1077#1079#1091#1083#1100#1090#1072#1090#1099' '#1101#1082#1079#1072#1084#1077#1085#1086#1074'] (['#1050#1086#1076' '#1101#1082#1079#1072#1084#1077#1085#1072'], ['#1057#1090#1091#1076#1077#1085#1090'], [' +
        #1044#1072#1090#1072' '#1089#1076#1072#1095#1080'], ['#1054#1094#1077#1085#1082#1072'])'
      'VALUES'
      '(:code, :student, :date, :score)')
    Left = 48
    Top = 616
    ParamData = <
      item
        Name = 'CODE'
        ParamType = ptInput
      end
      item
        Name = 'STUDENT'
        ParamType = ptInput
      end
      item
        Name = 'DATE'
        ParamType = ptInput
      end
      item
        Name = 'SCORE'
        ParamType = ptInput
      end>
  end
  object DataSourceTestGroups: TDataSource
    DataSet = TestGroupsTable
    Left = 256
    Top = 512
  end
  object TestGroupsTable: TFDQuery
    Active = True
    IndexFieldNames = #1057#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1100';'#1054#1090#1076#1077#1083#1077#1085#1080#1077
    MasterSource = DataSourceTests
    MasterFields = #1050#1086#1076' '#1089#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1080';'#1054#1090#1076#1077#1083#1077#1085#1080#1077
    Connection = DbeducationpartConnection
    SQL.Strings = (
      
        'SELECT '#1043#1088#1091#1087#1087#1099'.'#1053#1086#1084#1077#1088', '#1057#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1080'.'#1054#1090#1076#1077#1083#1077#1085#1080#1077', '#1043#1088#1091#1087#1087#1099'.'#1057#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089 +
        #1090#1100
      
        'FROM '#1057#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1080' INNER JOIN '#1043#1088#1091#1087#1087#1099' ON '#1057#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1080'.'#1050#1086#1076' = '#1043#1088#1091#1087 +
        #1087#1099'.'#1057#1087#1077#1094#1080#1072#1083#1100#1085#1086#1089#1090#1100';')
    Left = 199
    Top = 479
  end
  object TestStudentsTable: TFDQuery
    Active = True
    IndexFieldNames = #1053#1086#1084#1077#1088' '#1075#1088#1091#1087#1087#1099
    MasterSource = DataSourceTestGroups
    MasterFields = #1053#1086#1084#1077#1088
    Connection = DbeducationpartConnection
    SQL.Strings = (
      'SELECT '#1057#1090#1091#1076#1077#1085#1090#1099'.'#1050#1086#1076', '#1057#1090#1091#1076#1077#1085#1090#1099'.['#1053#1086#1084#1077#1088' '#1075#1088#1091#1087#1087#1099'], '#1057#1090#1091#1076#1077#1085#1090#1099'.'#1060#1048#1054
      'FROM '#1057#1090#1091#1076#1077#1085#1090#1099';')
    Left = 271
    Top = 575
  end
  object DataSourceTestStudents: TDataSource
    DataSet = TestStudentsTable
    Left = 352
    Top = 608
  end
  object TestResultUpdateQuery: TFDQuery
    AfterExecute = TestResultDeleteQueryAfterExecute
    Connection = DbeducationpartConnection
    SQL.Strings = (
      
        'UPDATE ['#1056#1077#1079#1091#1083#1100#1090#1072#1090#1099' '#1101#1082#1079#1072#1084#1077#1085#1086#1074'] SET ['#1044#1072#1090#1072' '#1089#1076#1072#1095#1080']= :date, ['#1054#1094#1077#1085#1082#1072'] ' +
        '= :score WHERE ['#1050#1086#1076' '#1101#1082#1079#1072#1084#1077#1085#1072'] = :n AND ['#1057#1090#1091#1076#1077#1085#1090'] = :s')
    Left = 56
    Top = 672
    ParamData = <
      item
        Name = 'DATE'
        ParamType = ptInput
      end
      item
        Name = 'SCORE'
        ParamType = ptInput
      end
      item
        Name = 'N'
        ParamType = ptInput
      end
      item
        Name = 'S'
        ParamType = ptInput
      end>
  end
end
