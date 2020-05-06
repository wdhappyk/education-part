unit CreateTest;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.DBCtrls, Vcl.StdCtrls;

type
  TForm14 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    DBLookupComboBox3: TDBLookupComboBox;
    Label4: TLabel;
    Label5: TLabel;
    Button1: TButton;
    ComboBoxSemester: TComboBox;
    procedure FormShow(Sender: TObject);
    procedure DBLookupComboBox2CloseUp(Sender: TObject);
    procedure DBLookupComboBox1CloseUp(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form14: TForm14;

implementation

{$R *.dfm}

uses Data;

procedure TForm14.Button1Click(Sender: TObject);
begin
Data.DataModule2.TestInsertQuery.Params.ParamValues['CODE'] := DBLookupComboBox3.KeyValue;
Data.DataModule2.TestInsertQuery.Params.ParamValues['SEMESTER'] := ComboBoxSemester.Text;
Data.DataModule2.TestInsertQuery.ExecSQL;
Close;
end;

procedure TForm14.DBLookupComboBox1CloseUp(Sender: TObject);
begin
DBLookupComboBox2.KeyValue := Data.DataModule2.ProfsTable['Код'];
DBLookupComboBox3.KeyValue := Data.DataModule2.DisciplinesByProfInfoTable['Код'];
end;

procedure TForm14.DBLookupComboBox2CloseUp(Sender: TObject);
begin
DBLookupComboBox3.KeyValue := Data.DataModule2.DisciplinesByProfInfoTable['Код'];
end;

procedure TForm14.FormShow(Sender: TObject);
begin
Data.DataModule2.DepartmentsTable.First;
Data.DataModule2.ProfsTable.First;
Data.DataModule2.DisciplinesByProfInfoTable.First;

DBLookupComboBox1.KeyValue := Data.DataModule2.DepartmentsTable['Наименование отделения'];
DBLookupComboBox2.KeyValue := Data.DataModule2.ProfsTable['Код'];
DBLookupComboBox3.KeyValue := Data.DataModule2.DisciplinesByProfInfoTable['Код'];
ComboBoxSemester.Text := '1';
end;

end.
