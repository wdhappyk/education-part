unit Students;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.DBCGrids, Vcl.DBCtrls;

type
  TForm10 = class(TForm)
    DBGrid1: TDBGrid;
    Label1: TLabel;
    Panel1: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    EditName: TEdit;
    ComboBoxGender: TComboBox;
    EditAge: TEdit;
    Label7: TLabel;
    Label8: TLabel;
    Button2: TButton;
    Button1: TButton;
    Label2: TLabel;
    Button3: TButton;
    ComboBoxDepartment: TComboBox;
    ComboBoxProfCode: TComboBox;
    ComboBoxProfName: TComboBox;
    DBNavigator1: TDBNavigator;
    Button4: TButton;
    �������: TButton;
    Button5: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ClearFilter;
    procedure �������Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure UpdateFilterData;
    procedure Button5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form10: TForm10;

implementation

{$R *.dfm}

uses Data, Student, PrintDBGrid;

procedure TForm10.Button1Click(Sender: TObject);
var filter: string;
begin

if ComboBoxDepartment.Text <> '' then
begin
    if filter <> '' then filter := filter + ' and ';
    filter := filter + '[���������] LIKE ''%' + ComboBoxDepartment.Text + '%''';
end;

if ComboBoxProfCode.Text <> '' then
begin
    if filter <> '' then filter := filter + ' and ';
    filter := filter + '[���] LIKE ''%' + ComboBoxProfCode.Text + '%''';
end;

if ComboBoxProfName.Text <> '' then
begin
    if filter <> '' then filter := filter + ' and ';
    filter := filter + '[������������] LIKE ''%' + ComboBoxProfName.Text + '%''';
end;

if EditName.Text <> '' then
begin
    if filter <> '' then filter := filter + ' and ';
    filter := filter + '[���] LIKE ''%' + EditName.Text + '%''';
end;

if EditAge.Text <> '' then
begin
    if filter <> '' then filter := filter + ' and ';
    filter := filter + '[�������] = ' + EditAge.Text;
end;

if ComboBoxGender.Text <> '' then
begin
    if filter <> '' then filter := filter + ' and ';
    filter := filter + '[���] = ' + QuotedStr(ComboBoxGender.Text);
end;

Data.DataModule2.StudentsInfoTable.Filter := filter;
Data.DataModule2.StudentsInfoTable.Filtered := True;
end;

procedure TForm10.Button3Click(Sender: TObject);
begin
ClearFilter;
end;

procedure TForm10.Button4Click(Sender: TObject);
begin
if Data.DataModule2.StudentsInfoTable.RecordCount > 0 then
begin
  Student.Form11.ShowModal;
  UpdateFilterData;
end;
end;

procedure TForm10.Button5Click(Sender: TObject);
begin
PrintDBGrid.PrintGrid(DBGrid1);
end;

procedure TForm10.ClearFilter;
begin
ComboBoxDepartment.Text := '';
ComboBoxProfCode.Text := '';
ComboBoxProfName.Text := '';
EditName.Text := '';
EditAge.Text := '';
ComboBoxGender.Text := '';
Data.DataModule2.StudentsInfoTable.Filter := '';
Data.DataModule2.StudentsInfoTable.Filtered := False;
end;

procedure TForm10.FormShow(Sender: TObject);
begin
ClearFilter;
UpdateFilterData;
end;

procedure TForm10.UpdateFilterData;
var department, profCode, profName: string;
    isNext: boolean;
begin
isNext := Data.DataModule2.StudentsInfoTable.FindNext;
Data.DataModule2.StudentsInfoTable.First;
ComboBoxDepartment.Items.Clear;
ComboBoxProfCode.Items.Clear;
ComboBoxProfName.Items.Clear;
while isNext do
begin
  department := Data.DataModule2.StudentsInfoTable['���������'];
  profCode := Data.DataModule2.StudentsInfoTable['���'];
  profName := Data.DataModule2.StudentsInfoTable['������������'];
  if ComboBoxDepartment.Items.IndexOf(department) = -1 then ComboBoxDepartment.Items.Add(department);
  if ComboBoxProfCode.Items.IndexOf(profCode) = -1 then ComboBoxProfCode.Items.Add(profCode);
  if ComboBoxProfName.Items.IndexOf(profName) = -1 then ComboBoxProfName.Items.Add(profName);
  isNext := Data.DataModule2.StudentsInfoTable.FindNext;
end;
Data.DataModule2.StudentsInfoTable.First;
end;

procedure TForm10.�������Click(Sender: TObject);
var txt, name: string;
begin
if Data.DataModule2.StudentsInfoTable.RecordCount > 0 then
begin
  name := Data.DataModule2.StudentsInfoTable['���'];
  txt := '�� �������, ��� ������ ������� �������� ��� ������ "' + name + '"?';
  if MessageDlg(txt, mtConfirmation, mbYesNo, 0) = mrYes then
  begin
    Data.DataModule2.StudentDeleteQuery.Params.ParamValues['N'] := Data.DataModule2.StudentsInfoTable['�����'];
    Data.DataModule2.StudentDeleteQuery.ExecSQL;
  end;
end;
end;

end.
