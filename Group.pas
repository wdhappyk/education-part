unit Group;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.DBCtrls, Data.DB,
  Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids;

type
  TForm5 = class(TForm)
    DBText1: TDBText;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBGrid1: TDBGrid;
    Label4: TLabel;
    Label5: TLabel;
    DBNavigator1: TDBNavigator;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    procedure FormShow(Sender: TObject);
    procedure DBLookupComboBox1Enter(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;
  number: integer;

implementation

{$R *.dfm}

uses Data, PrintDBGrid;

procedure TForm5.Button1Click(Sender: TObject);
begin
Data.DataModule2.GroupUpdateQuery.Params.ParamValues['N'] := Data.DataModule2.GroupsTable['Номер'];
Data.DataModule2.GroupUpdateQuery.Params.ParamValues['PROF'] := DBLookupComboBox2.KeyValue;
Data.DataModule2.GroupUpdateQuery.ExecSQL;

while Data.DataModule2.GroupsTable['Номер'] <> number do
  Data.DataModule2.GroupsTable.Next;

end;

procedure TForm5.Button3Click(Sender: TObject);
begin
PrintDBGrid.PrintGrid(DBGrid1);
end;

procedure TForm5.DBLookupComboBox1Enter(Sender: TObject);
begin
if DBLookupComboBox1.KeyValue = Data.DataModule2.GroupsTable['Отделение'] then
  DBLookupComboBox2.KeyValue := Data.DataModule2.GroupsTable['Код специальности']
else
  DBLookupComboBox2.KeyValue := Data.DataModule2.ProfsTable['Код'];
end;

procedure TForm5.FormShow(Sender: TObject);
begin
Data.DataModule2.ProfsTable.First;
number := Data.DataModule2.GroupsTable['Номер'];
DBLookupComboBox1.KeyValue := Data.DataModule2.GroupsTable['Отделение'];
DBLookupComboBox2.KeyValue := Data.DataModule2.GroupsTable['Код специальности'];
end;

end.
