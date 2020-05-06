unit ProfDisciplines;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.ExtCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.DBCtrls, Vcl.StdCtrls;

type
  TForm8 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    Label4: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Label5: TLabel;
    DBNavigator1: TDBNavigator;
    DBLookupComboBox2: TDBLookupComboBox;
    DBGrid2: TDBGrid;
    DBNavigator2: TDBNavigator;
    Label6: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form8: TForm8;

implementation

{$R *.dfm}

uses Data, SetEducator, PrintDBGrid;

procedure TForm8.Button1Click(Sender: TObject);
begin
SetEducator.Form12.ShowModal;
end;

procedure TForm8.Button2Click(Sender: TObject);
begin
if Data.DataModule2.DisciplinesByProfTable.RecordCount > 0 then
begin
  Data.DataModule2.RemoveEducatorQuery.Params.ParamValues['EDUCATOR'] := Data.DataModule2.EducatorDisciplinesTable['Код'];
  Data.DataModule2.RemoveEducatorQuery.Params.ParamValues['DISCIPLINE'] := Data.DataModule2.DisciplinesByProfTable['Код'];
  Data.DataModule2.RemoveEducatorQuery.ExecSQL;
end;
end;

procedure TForm8.Button3Click(Sender: TObject);
begin
PrintDBGrid.PrintGrid(DBGrid1);
end;

procedure TForm8.Button4Click(Sender: TObject);
begin
PrintDBGrid.PrintGrid(DBGrid2);
end;

end.
