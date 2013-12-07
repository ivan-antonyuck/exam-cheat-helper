program Help;

uses
  Forms,
  main in 'main.pas' {Form1},
  AnswerMe in 'AnswerMe.pas' {Form2};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
