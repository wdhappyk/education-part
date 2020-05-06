unit Disciplines;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.ExtCtrls, Vcl.DBCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls;

type
  TForm6 = class(TForm)
    Label1: TLabel;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    Button1: TButton;
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

{$R *.dfm}

uses Data, PrintDBGrid;

procedure TForm6.Button1Click(Sender: TObject);
begin
PrintDBGrid.PrintGrid(DBGrid1);
end;

procedure TForm6.FormShow(Sender: TObject);
begin
Data.DataModule2.DisciplinesTable.First;
end;

end.
