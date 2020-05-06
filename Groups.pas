unit Groups;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.DBCtrls;

type
  TForm4 = class(TForm)
    DBGrid1: TDBGrid;
    Label1: TLabel;
    DBNavigator1: TDBNavigator;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    procedure DBGrid1DblClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}

uses Data, Group, CreateGroup, PrintDBGrid;

procedure TForm4.Button1Click(Sender: TObject);
begin
CreateGroup.Form7.ShowModal;
end;

procedure TForm4.Button3Click(Sender: TObject);
var txt: string;
    n: integer;
begin
if Data.DataModule2.GroupsTable.RecordCount > 0 then
begin
  n := Data.DataModule2.GroupsTable['Номер'];
  txt := 'Вы уверены, что хотите удалить группу под номером ' + IntToStr(n) + '?';
  if MessageDlg(txt, mtConfirmation, mbYesNo, 0) = mrYes then
  begin
    Data.DataModule2.GroupDeleteQuery.Params.ParamValues['N'] := n;
    Data.DataModule2.GroupDeleteQuery.ExecSQL;
  end;
end;
end;

procedure TForm4.Button4Click(Sender: TObject);
begin
PrintDBGrid.PrintGrid(DBGrid1);
end;

procedure TForm4.DBGrid1DblClick(Sender: TObject);
begin
if Data.DataModule2.GroupsTable.RecordCount > 0 then
    Group.Form5.ShowModal;
end;

end.
