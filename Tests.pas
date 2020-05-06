unit Tests;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.DBCtrls, Vcl.StdCtrls,
  Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids;

type
  TForm13 = class(TForm)
    Label1: TLabel;
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    Label2: TLabel;
    Button1: TButton;
    Button3: TButton;
    ComboBoxSemestr: TComboBox;
    Label3: TLabel;
    Label4: TLabel;
    ComboBoxDiscipline: TComboBox;
    Label5: TLabel;
    ComboBoxProf: TComboBox;
    Label6: TLabel;
    ComboBoxDepartment: TComboBox;
    Button2: TButton;
    DBNavigator1: TDBNavigator;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    procedure FormShow(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure ClearFilter;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure UpdateFilterData;
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form13: TForm13;

implementation

{$R *.dfm}

uses Data, CreateTest, TestResult, PrintDBGrid;

procedure TForm13.Button1Click(Sender: TObject);
var filter: string;
begin

if ComboBoxSemestr.Text <> '' then
begin
  if filter <> '' then filter := filter + ' and ';
  filter := filter + ' [Семестр] = ' + QuotedStr(ComboBoxSemestr.Text);
end;

if ComboBoxDiscipline.Text <> '' then
begin
  if filter <> '' then filter := filter + ' and ';
  filter := filter + ' [Дисциплина] = ' + QuotedStr(ComboBoxDiscipline.Text);
end;

if ComboBoxProf.Text <> '' then
begin
  if filter <> '' then filter := filter + ' and ';
  filter := filter + ' [Специальность] = ' + QuotedStr(ComboBoxProf.Text);
end;

if ComboBoxDepartment.Text <> '' then
begin
  if filter <> '' then filter := filter + ' and ';
  filter := filter + ' [Отделение] = ' + QuotedStr(ComboBoxDepartment.Text);
end;

Data.DataModule2.TestsTable.Filter := filter;
Data.DataModule2.TestsTable.Filtered := True;
end;

procedure TForm13.Button2Click(Sender: TObject);
var txt: string;
begin
if Data.DataModule2.TestsTable.RecordCount > 0 then
begin
  txt := 'Вы уверены, что хотите удалить выбранный экзамен?';
  if MessageDlg(txt, mtConfirmation, mbYesNo, 0) = mrYes then
  begin
    Data.DataModule2.TestDeleteQuery.Params.ParamValues['N'] := Data.DataModule2.TestsTable['Код'];
    Data.DataModule2.TestDeleteQuery.ExecSQL;
  end;
end;
end;

procedure TForm13.Button3Click(Sender: TObject);
begin
ClearFilter;
end;

procedure TForm13.Button4Click(Sender: TObject);
begin
CreateTest.Form14.ShowModal;
UpdateFilterData;
end;

procedure TForm13.Button5Click(Sender: TObject);
begin
TestResult.Form15.ShowModal;
end;

procedure TForm13.Button6Click(Sender: TObject);
begin
PrintDBGrid.PrintGrid(DBGrid1);
end;

procedure TForm13.ClearFilter;
begin
ComboBoxSemestr.Text := '';
ComboBoxDiscipline.Text := '';
ComboBoxProf.Text := '';
ComboBoxDepartment.Text := '';
Data.DataModule2.TestsTable.Filter := '';
Data.DataModule2.TestsTable.Filtered := False;
end;

procedure TForm13.FormShow(Sender: TObject);
begin
ClearFilter;
UpdateFilterData;
end;

procedure TForm13.UpdateFilterData;
var isNext: boolean;
    semester, discipline, prof, department: string;
begin
ComboBoxSemestr.Items.Clear;
ComboBoxDiscipline.Items.Clear;
ComboBoxProf.Items.Clear;
ComboBoxDepartment.Items.Clear;
isNext := Data.DataModule2.TestsTable.FindNext;
Data.DataModule2.TestsTable.First;
while isNext do
begin
  semester := intToStr(Data.DataModule2.TestsTable['Семестр']);
  discipline := Data.DataModule2.TestsTable['Дисциплина'];
  prof := Data.DataModule2.TestsTable['Специальность'];
  department := Data.DataModule2.TestsTable['Отделение'];

  if ComboBoxSemestr.Items.IndexOf(semester) = -1 then
    ComboBoxSemestr.Items.Add(semester);
  if ComboBoxDiscipline.Items.IndexOf(discipline) = -1 then
    ComboBoxDiscipline.Items.Add(discipline);
  if ComboBoxProf.Items.IndexOf(prof) = -1 then
    ComboBoxProf.Items.Add(prof);
  if ComboBoxDepartment.Items.IndexOf(department) = -1 then
    ComboBoxDepartment.Items.Add(department);

  isNext := Data.DataModule2.TestsTable.FindNext;
end;
Data.DataModule2.TestsTable.First;
end;

end.
