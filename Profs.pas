unit Profs;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.DBCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm3 = class(TForm)
    DBLookupComboBox1: TDBLookupComboBox;
    Label1: TLabel;
    Label2: TLabel;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    Button1: TButton;
    Button2: TButton;
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

uses Data, ProfDisciplines, PrintDBGrid;

procedure TForm3.Button1Click(Sender: TObject);
begin
if Data.DataModule2.ProfsTable.RecordCount > 0 then
    ProfDisciplines.Form8.ShowModal;
end;

procedure TForm3.Button2Click(Sender: TObject);
begin
PrintDBGrid.PrintGrid(DBGrid1);
end;

procedure TForm3.FormShow(Sender: TObject);
begin
Data.DataModule2.DepartmentsTable.First;
DBLookupComboBox1.KeyValue := Data.DataModule2.DepartmentsTable['Наименование отделения'];
end;

end.
