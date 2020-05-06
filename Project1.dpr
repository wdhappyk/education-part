program Project1;

uses
  Vcl.Forms,
  Main in 'Main.pas' {Form1},
  Data in 'Data.pas' {DataModule2: TDataModule},
  Departmets in 'Departmets.pas' {Form2},
  Profs in 'Profs.pas' {Form3},
  Groups in 'Groups.pas' {Form4},
  Group in 'Group.pas' {Form5},
  Disciplines in 'Disciplines.pas' {Form6},
  CreateGroup in 'CreateGroup.pas' {Form7},
  ProfDisciplines in 'ProfDisciplines.pas' {Form8},
  Educators in 'Educators.pas' {Form9},
  Students in 'Students.pas' {Form10},
  Student in 'Student.pas' {Form11},
  SetEducator in 'SetEducator.pas' {Form12},
  Tests in 'Tests.pas' {Form13},
  CreateTest in 'CreateTest.pas' {Form14},
  TestResult in 'TestResult.pas' {Form15},
  TestResultAdd in 'TestResultAdd.pas' {TestResultAddForm},
  TestResultChange in 'TestResultChange.pas' {Form16},
  Auth in 'Auth.pas' {Form17},
  PrintDBGrid in 'PrintDBGrid.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm17, Form17);
  Application.CreateForm(TForm7, Form7);
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TDataModule2, DataModule2);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(TForm5, Form5);
  Application.CreateForm(TForm6, Form6);
  Application.CreateForm(TForm8, Form8);
  Application.CreateForm(TForm9, Form9);
  Application.CreateForm(TForm10, Form10);
  Application.CreateForm(TForm11, Form11);
  Application.CreateForm(TForm12, Form12);
  Application.CreateForm(TForm13, Form13);
  Application.CreateForm(TForm14, Form14);
  Application.CreateForm(TForm15, Form15);
  Application.CreateForm(TTestResultAddForm, TestResultAddForm);
  Application.CreateForm(TForm16, Form16);
  Application.Run;
end.
