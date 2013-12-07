unit AnswerMe;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm2 = class(TForm)
    Label1: TLabel;
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses main;

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
begin
Form1.Button2Click(self); 
end;

procedure TForm2.FormCreate(Sender: TObject);
var
  h,w:integer;
begin
  h:=screen.Height;
  w:=screen.Width;
  form2.Top:=h-form2.Height-40;
  form2.Left:=w-form2.Width-30;
end;

procedure TForm2.Button2Click(Sender: TObject);
begin
form2.Hide;
end;

end.
