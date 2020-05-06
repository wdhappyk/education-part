unit Auth;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm17 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Label3: TLabel;
    Edit2: TEdit;
    Button1: TButton;
    Label4: TLabel;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form17: TForm17;

implementation

{$R *.dfm}

uses Main;

procedure TForm17.Button1Click(Sender: TObject);
begin
if (Edit1.Text <> 'Admin') or (Edit2.Text <> '123') then
begin
  Label4.Visible := True;
end
else
begin
  Hide;
  Main.Form1.ShowModal;
  Close;
end;

end;

end.
