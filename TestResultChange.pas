unit TestResultChange;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls;

type
  TForm16 = class(TForm)
    DateTimePicker1: TDateTimePicker;
    ComboBox1: TComboBox;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form16: TForm16;

implementation

{$R *.dfm}

uses Data;

procedure TForm16.Button1Click(Sender: TObject);
begin
DataModule2.TestResultUpdateQuery.Params.ParamValues['N'] := DataModule2.TestResultTable['Код экзамена'];
DataModule2.TestResultUpdateQuery.Params.ParamValues['S'] := DataModule2.TestResultTable['Код студента'];
DataModule2.TestResultUpdateQuery.Params.ParamValues['DATE'] := DateTimePicker1.Date;
DataModule2.TestResultUpdateQuery.Params.ParamValues['SCORE'] := strToInt(ComboBox1.Text);
DataModule2.TestResultUpdateQuery.ExecSQL;
Close;
end;

procedure TForm16.FormShow(Sender: TObject);
begin
DateTimePicker1.Date :=  DataModule2.TestResultTable['Дата сдачи'];
ComboBox1.Text := intToStr(DataModule2.TestResultTable['Оценка']);
end;

end.
