unit TestResultAdd;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.DBCtrls;

type
  TTestResultAddForm = class(TForm)
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    DateTimePicker1: TDateTimePicker;
    ComboBox1: TComboBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Button1: TButton;
    Label5: TLabel;
    procedure FormShow(Sender: TObject);
    procedure DBLookupComboBox1CloseUp(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TestResultAddForm: TTestResultAddForm;

implementation

{$R *.dfm}

uses Data;

procedure TTestResultAddForm.Button1Click(Sender: TObject);
begin
try
  DataModule2.TestResultInsertQuery.Params.ParamValues['CODE'] := DataModule2.TestResultTable['Код экзамена'];
  DataModule2.TestResultInsertQuery.Params.ParamValues['STUDENT'] := DBLookupComboBox2.KeyValue;
  DataModule2.TestResultInsertQuery.Params.ParamValues['DATE'] := DateTimePicker1.Date;
  DataModule2.TestResultInsertQuery.Params.ParamValues['SCORE'] := StrToInt(ComboBox1.Text);
  DataModule2.TestResultInsertQuery.ExecSQL;
  Close;
except
  Label5.Visible := True;
end;
end;

procedure TTestResultAddForm.DBLookupComboBox1CloseUp(Sender: TObject);
begin
if DataModule2.TestStudentsTable.RecordCount > 0 then
begin
  DataModule2.TestStudentsTable.First;
  DBLookupComboBox2.KeyValue := DataModule2.TestStudentsTable['Код'];
end;
end;

procedure TTestResultAddForm.FormShow(Sender: TObject);
begin
Label5.Visible := False;
if DataModule2.TestGroupsTable.RecordCount > 0 then
begin
  DataModule2.TestGroupsTable.First;
  DBLookupComboBox1.KeyValue := DataModule2.TestGroupsTable['Номер'];

  if DataModule2.TestStudentsTable.RecordCount > 0 then
  begin
    DataModule2.TestStudentsTable.First;
    DBLookupComboBox2.KeyValue := DataModule2.TestStudentsTable['Код'];
  end;

end;
end;

end.
