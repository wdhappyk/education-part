unit TestResult;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Vcl.ExtCtrls,
  Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids;

type
  TForm15 = class(TForm)
    DBGrid1: TDBGrid;
    Label1: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    Label2: TLabel;
    Label3: TLabel;
    Label123123: TLabel;
    Label5: TLabel;
    DBNavigator1: TDBNavigator;
    Button1: TButton;
    Добавить: TButton;
    Изменить: TButton;
    Panel1: TPanel;
    Label4: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Button2: TButton;
    Button3: TButton;
    ComboBox2: TComboBox;
    Edit1: TEdit;
    Edit2: TEdit;
    ComboBox1: TComboBox;
    Edit3: TEdit;
    Label6: TLabel;
    Button4: TButton;
    procedure FormShow(Sender: TObject);
    procedure ClearFilter;
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure ДобавитьClick(Sender: TObject);
    procedure ИзменитьClick(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form15: TForm15;

implementation

{$R *.dfm}

uses Data, TestResultAdd, TestResultChange, PrintDBGrid;

procedure TForm15.FormShow(Sender: TObject);
begin

ClearFilter;
DataModule2.TestResultTable.First;

end;

procedure TForm15.ДобавитьClick(Sender: TObject);
begin
TestResultAddForm.ShowModal;
end;

procedure TForm15.ИзменитьClick(Sender: TObject);
begin
if DataModule2.TestResultTable.RecordCount > 0 then
  TestResultChange.Form16.ShowModal;
end;

procedure TForm15.Button1Click(Sender: TObject);
var txt: string;
begin
if DataModule2.TestResultTable.RecordCount > 0 then
begin
  txt := 'Вы уверены, что хотите удалить выбранный результат?';
  if MessageDlg(txt, mtConfirmation, mbYesNo, 0) = mrYes then
  begin
    Data.DataModule2.TestResultDeleteQuery.Params.ParamValues['N'] := DataModule2.TestResultTable['Код экзамена'];
    Data.DataModule2.TestResultDeleteQuery.Params.ParamValues['S'] := DataModule2.TestResultTable['Код студента'];
    Data.DataModule2.TestResultDeleteQuery.ExecSQL;
  end;
end;
end;

procedure TForm15.Button2Click(Sender: TObject);
var filter: string;
begin

if Edit1.Text <> '' then
begin
  if filter <> '' then filter := filter + ' and ';
  filter := filter + '[ФИО] LIKE ''%' + Edit1.Text + '%''';
end;

if Edit3.Text <> '' then
begin
  if filter <> '' then filter := filter + ' and ';
  filter := filter + '[Номер группы] = ' + QuotedStr(Edit3.Text);
end;

if Edit2.Text <> '' then
begin
  if filter <> '' then filter := filter + ' and ';
  filter := filter + '[Дата сдачи] ' + ComboBox1.Text + ' ' + QuotedStr(Edit2.Text);
end;

if ComboBox2.Text <> '' then
begin
  if filter <> '' then filter := filter + ' and ';
  filter := filter + '[Оценка] = ' + QuotedStr(ComboBox2.Text);
end;

DataModule2.TestResultTable.Filter := filter;
DataModule2.TestResultTable.Filtered := True;
end;

procedure TForm15.Button3Click(Sender: TObject);
begin
ClearFilter;
end;

procedure TForm15.Button4Click(Sender: TObject);
begin
PrintDBGrid.PrintGrid(DBGrid1);
end;

procedure TForm15.ClearFilter;
begin
Edit1.Text := '';
Edit2.Text := '';
Edit3.Text := '';
ComboBox1.ItemIndex := 0;
ComboBox2.ItemIndex := 0;
DataModule2.TestResultTable.Filter := '';
DataModule2.TestResultTable.Filtered := False;
end;

end.
