unit Educators;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Vcl.ExtCtrls,
  Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids;

type
  TForm9 = class(TForm)
    Label1: TLabel;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    DBGrid2: TDBGrid;
    Button1: TButton;
    Label2: TLabel;
    Button2: TButton;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form9: TForm9;

implementation

{$R *.dfm}

uses Data, PrintDBGrid;

procedure TForm9.Button1Click(Sender: TObject);
begin
if Data.DataModule2.EducatorDisciplinesListTable.RecordCount > 0 then
begin
  Data.DataModule2.RemoveEducatorQuery.Params.ParamValues['EDUCATOR'] := Data.DataModule2.EducatorsTable['Код'];
  Data.DataModule2.RemoveEducatorQuery.Params.ParamValues['DISCIPLINE'] := Data.DataModule2.EducatorDisciplinesListTable['Код дисциплины по специальности'];
  Data.DataModule2.RemoveEducatorQuery.ExecSQL;
end;
end;

procedure TForm9.Button2Click(Sender: TObject);
begin
PrintDBGrid.PrintGrid(DBGrid1);
end;

procedure TForm9.Button3Click(Sender: TObject);
begin
PrintDBGrid.PrintGrid(DBGrid2);
end;

procedure TForm9.FormShow(Sender: TObject);
begin
Data.DataModule2.EducatorsTable.First;
end;

end.
