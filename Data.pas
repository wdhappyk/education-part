unit Data;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MSAcc,
  FireDAC.Phys.MSAccDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Data.Win.ADODB;

type
  TDataModule2 = class(TDataModule)
    DbeducationpartConnection: TFDConnection;
    GroupsTable: TFDQuery;
    DisciplinesTable: TFDQuery;
    DisciplinesByProfTable: TFDQuery;
    EducatorDisciplinesTable: TFDQuery;
    DepartmentsTable: TFDQuery;
    EducatorsTable: TFDQuery;
    ProfsTable: TFDQuery;
    StudentsTable: TFDQuery;
    TestsTable: TFDQuery;
    DataSourceDepartments: TDataSource;
    DataSourceProfs: TDataSource;
    DataSourceGroups: TDataSource;
    DataSourceStudents: TDataSource;
    GroupUpdateQuery: TFDQuery;
    DataSourceDisciplines: TDataSource;
    GroupInsertQuery: TFDQuery;
    GroupDeleteQuery: TFDQuery;
    DataSourceDisciplinesByProf: TDataSource;
    DisciplinesInfoTable: TFDQuery;
    DataSourceDisciplinesInfo: TDataSource;
    DataSourceEducators: TDataSource;
    StudentsInfoTable: TFDQuery;
    DataSourceStudentsInfo: TDataSource;
    StudentDeleteQuery: TFDQuery;
    GroupsByProfTable: TFDQuery;
    DataSourceGroupsByProf: TDataSource;
    StudentUpdateQuery: TFDQuery;
    DataSourceEducatorDisciplines: TDataSource;
    SetEducatorQuery: TFDQuery;
    RemoveEducatorQuery: TFDQuery;
    EducatorDisciplinesListTable: TFDQuery;
    DataSourceEducatorDisciplinesList: TDataSource;
    DataSourceTests: TDataSource;
    TestDeleteQuery: TFDQuery;
    DataSourceDisciplinesByProfInfo: TDataSource;
    DisciplinesByProfInfoTable: TFDQuery;
    TestInsertQuery: TFDQuery;
    DataSourceTestResult: TDataSource;
    TestResultTable: TFDQuery;
    TestResultDeleteQuery: TFDQuery;
    TestResultInsertQuery: TFDQuery;
    DataSourceTestGroups: TDataSource;
    TestGroupsTable: TFDQuery;
    TestStudentsTable: TFDQuery;
    DataSourceTestStudents: TDataSource;
    TestResultUpdateQuery: TFDQuery;
    procedure GroupUpdateQueryAfterExecute(DataSet: TFDDataSet);
    procedure StudentDeleteQueryAfterExecute(DataSet: TFDDataSet);
    procedure SetEducatorQueryAfterExecute(DataSet: TFDDataSet);
    procedure TestDeleteQueryAfterExecute(DataSet: TFDDataSet);
    procedure TestResultDeleteQueryAfterExecute(DataSet: TFDDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule2: TDataModule2;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDataModule2.GroupUpdateQueryAfterExecute(DataSet: TFDDataSet);
begin
GroupsTable.Refresh;
end;

procedure TDataModule2.SetEducatorQueryAfterExecute(DataSet: TFDDataSet);
begin
EducatorDisciplinesTable.Refresh;
EducatorDisciplinesListTable.Refresh;
end;

procedure TDataModule2.StudentDeleteQueryAfterExecute(DataSet: TFDDataSet);
begin
StudentsInfoTable.Refresh;
StudentsTable.Refresh;
end;

procedure TDataModule2.TestDeleteQueryAfterExecute(DataSet: TFDDataSet);
begin
TestsTable.Refresh;
end;

procedure TDataModule2.TestResultDeleteQueryAfterExecute(DataSet: TFDDataSet);
begin
TestResultTable.Refresh;
end;

end.
