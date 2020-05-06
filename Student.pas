unit Student;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.ComCtrls;

type
  TForm11 = class(TForm)
    Label1: TLabel;
    DBText1: TDBText;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    Label5: TLabel;
    DBLookupComboBox3: TDBLookupComboBox;
    EditName: TEdit;
    BirthDate: TDateTimePicker;
    ComboBoxGender: TComboBox;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Button2: TButton;
    Button1: TButton;
    procedure FormShow(Sender: TObject);
    procedure DBLookupComboBox1CloseUp(Sender: TObject);
    procedure DBLookupComboBox2CloseUp(Sender: TObject);
    procedure Reset;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  targetN: integer;
  Form11: TForm11;

implementation

{$R *.dfm}

uses Data;

procedure TForm11.Button1Click(Sender: TObject);
begin
Data.DataModule2.StudentUpdateQuery.Params.ParamValues['N'] := Data.DataModule2.StudentsInfoTable['Номер'];
Data.DataModule2.StudentUpdateQuery.Params.ParamValues['NAME'] := EditName.Text;
Data.DataModule2.StudentUpdateQuery.Params.ParamValues['BIRTHDAY'] := BirthDate.Date;
Data.DataModule2.StudentUpdateQuery.Params.ParamValues['GENDER'] := ComboBoxGender.Text;
Data.DataModule2.StudentUpdateQuery.Params.ParamValues['GROUP'] := DBLookupComboBox3.KeyValue;
Data.DataModule2.StudentUpdateQuery.ExecSQL;

Data.DataModule2.StudentsInfoTable.First;
while Data.DataModule2.StudentsInfoTable['Номер'] <> targetN do
  Data.DataModule2.StudentsInfoTable.Next;
end;

procedure TForm11.DBLookupComboBox1CloseUp(Sender: TObject);
begin
DBLookupComboBox2.KeyValue := Data.DataModule2.ProfsTable['Код'];
DBLookupComboBox3.KeyValue := Data.DataModule2.GroupsByProfTable['Номер'];
end;

procedure TForm11.DBLookupComboBox2CloseUp(Sender: TObject);
begin
DBLookupComboBox3.KeyValue := Data.DataModule2.GroupsByProfTable['Номер'];
end;

procedure TForm11.FormShow(Sender: TObject);
begin
targetN := strToInt(Data.DataModule2.StudentsInfoTable['Номер']);
Reset;
end;

procedure TForm11.Reset;
begin
DBLookupComboBox1.KeyValue := Data.DataModule2.StudentsInfoTable['Отделение'];
DBLookupComboBox2.KeyValue := Data.DataModule2.StudentsInfoTable['Код'];
DBLookupComboBox3.KeyValue := Data.DataModule2.StudentsInfoTable['Номер группы'];
EditName.Text := Data.DataModule2.StudentsInfoTable['ФИО'];
if Data.DataModule2.StudentsInfoTable['Дата рождения'] <> Null then
  BirthDate.Date := Data.DataModule2.StudentsInfoTable['Дата рождения']
else
  BirthDate.Date := Now;
ComboBoxGender.Text := Data.DataModule2.StudentsInfoTable['Пол'];
end;

end.
