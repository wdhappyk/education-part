unit Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button10: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses Departmets, Profs, Groups, Disciplines, Students, Educators, Tests, Auth;

procedure TForm1.Button10Click(Sender: TObject);
begin
Close;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
Departmets.Form2.ShowModal;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
Profs.Form3.ShowModal;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
Groups.Form4.ShowModal;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
Disciplines.Form6.ShowModal;
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
Students.Form10.ShowModal;
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
Educators.Form9.ShowModal;
end;

procedure TForm1.Button7Click(Sender: TObject);
begin
Tests.Form13.ShowModal;
end;

end.
