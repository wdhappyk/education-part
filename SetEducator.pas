unit SetEducator;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.DBCtrls, Vcl.StdCtrls;

type
  TForm12 = class(TForm)
    DBLookupComboBox1: TDBLookupComboBox;
    Button1: TButton;
    Label1: TLabel;
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form12: TForm12;

implementation

{$R *.dfm}

uses Data;

procedure TForm12.Button1Click(Sender: TObject);
begin
try
  Data.DataModule2.SetEducatorQuery.Params.ParamValues['EDUCATOR'] := DBLookupComboBox1.KeyValue;
  Data.DataModule2.SetEducatorQuery.Params.ParamValues['DISCIPLINE'] := Data.DataModule2.DisciplinesByProfTable['Код'];
  Data.DataModule2.SetEducatorQuery.ExecSQL;
  Close;
except
  Label1.Caption := 'Этот преподаватель уже назначен';
  Label1.Font.Color := clRed;
end;
end;

procedure TForm12.FormShow(Sender: TObject);
begin
Label1.Caption := 'Выберите преподавателя';
Label1.Font.Color := clBlack;
Data.DataModule2.EducatorsTable.First;
DBLookupComboBox1.KeyValue := Data.DataModule2.EducatorsTable['Код'];
end;

end.
