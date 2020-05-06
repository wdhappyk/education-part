unit CreateGroup;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.DBCtrls, Vcl.StdCtrls;

type
  TForm7 = class(TForm)
    Label4: TLabel;
    Button1: TButton;
    Label1: TLabel;
    Label2: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    procedure FormShow(Sender: TObject);
    procedure DBLookupComboBox1CloseUp(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;

implementation

{$R *.dfm}

uses Data;

procedure TForm7.Button1Click(Sender: TObject);
begin
Data.DataModule2.GroupInsertQuery.Params.ParamValues['PROF'] := DBLookupComboBox2.KeyValue;
Data.DataModule2.GroupInsertQuery.ExecSQL;
Close;
end;

procedure TForm7.DBLookupComboBox1CloseUp(Sender: TObject);
begin
DBLookupComboBox2.KeyValue := Data.DataModule2.ProfsTable['Код'];
end;

procedure TForm7.FormShow(Sender: TObject);
begin
Data.DataModule2.DepartmentsTable.First;
DBLookupComboBox1.KeyValue := Data.DataModule2.DepartmentsTable['Наименование отделения'];
Data.DataModule2.ProfsTable.First;
DBLookupComboBox2.KeyValue := Data.DataModule2.ProfsTable['Код'];
end;

end.
