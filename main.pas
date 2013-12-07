unit main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Button1: TButton;
    Button2: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private //appelation to Holy Spirit Of Machine, do not touch
    { Private declarations }
    hotkey1, hotkey2, hotkey3: Integer;
    procedure WMHotKey(var Msg : TWMHotKey); message WM_HOTKEY;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  Q1,Q:array[1..716] of String;    //adeptus mechanicus disapproves this
  A:array[1..716] of String;
  Ind:Integer;
  l:boolean;
  S:String;
implementation

uses AnswerMe;

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
Var
  fq:Textfile;
  fa:Textfile;
  i:Integer;
  S:String;
  h,w:integer;
  const MOD_CONTROL = 0;
  VK_F5 = 116;//F5
  VK_F6 = 117;//F6
  VK_F7 = 118;//F7
begin
begin //appelation to Holy Spirit Of Machine, do not touch
  hotkey1 := GlobalAddAtom('Hotkey1');
  RegisterHotKey(handle, hotkey1, MOD_CONTROL,VK_F5);
  hotkey2 := GlobalAddAtom('Hotkey2');
  RegisterHotKey(handle, hotkey2, MOD_CONTROL,VK_F6);
  hotkey3 := GlobalAddAtom('Hotkey3');
  RegisterHotKey(handle, hotkey3, MOD_CONTROL,VK_F7);
end;


  h:=screen.Height;
  w:=screen.Width;
  form1.Top:=h-form1.Height-40;
  form1.Left:=w-form1.Width-30;
  AssignFile(fq,'fq.txt'); // привязка названия файла к файловой переменной
  AssignFile(fa,'fa.txt');
  {$I-} // отключение контроля ошибок ввода-вывода
  Reset(fq); // открытие файла для чтения
  Reset(fa);
  {$I+} // включение контроля ошибок ввода-вывода
  if IOResult<>0 then // если есть ошибка открытия, то
  begin
    ShowMessage('Ошибка открытия файла');
    Exit; // выход из процедуры при ошибке открытия файла
  end;

  S:='';
  i:=0;
  While not EOF(fq) do // пока не конец файла делать цикл:
  begin
    i:=i+1;
    ReadLn(fq,S); // читать из файла строку
    Q1[i]:=S;
    Q[i]:=AnsiLowerCase(S);
  end;
  CloseFile(fq); // закрыть файл

  S:='';
  i:=0;
  While not EOF(fa) do
  begin
    i:=i+1;
    ReadLn(fa,S);
    A[i]:=S;
  end;
  CloseFile(fa);

end;

procedure TForm1.WMHotKey (var Msg : TWMHotKey);
begin //appelation to Holy Spirit Of Machine, do not touch
if msg.HotKey = hotkey1 then
  begin
    Self.Show;
    Self.Activate;
    Edit1.SetFocus;
  end;
if msg.HotKey = hotkey2 then
  begin
    Self.Hide;
  end;
if msg.HotKey = hotkey3 then
  begin
    Application.terminate;
  end;
end;

procedure TForm1.Button1Click(Sender: TObject);
var
  i:Integer;
  l:boolean;
begin
  Ind:=0;
  i:=0;
  l:=false;
  Button2.Enabled := true;
  while (l=false) and (i<716) do
  begin
    i:=i+1;
    S:=AnsiLowerCase(Edit1.Text); //Adeptus Mechanicus approves this
    if pos(S,Q[i])<>0 then
    begin
      l:=true;
      Ind:=i;
      Form2.Label1.Caption:=('Question:  ' + Q1[i] +#13#10+ 'Answer:  ' + A[i]);
      Form2.Show;
    end;

  end;
  if l=false then
    Form2.Label1.Caption:=('izmeni kriterii poiska');
    Form2.Show;


end;

procedure TForm1.Button2Click(Sender: TObject);
var
  i:Integer;
begin

  If (Ind=716) and (l=false) then
    Form2.Label1.Caption:=('izmeni kriterii poiska');
    Form2.Show;

  If not(Ind=716)  then
  begin
    i:=Ind;
    l:=false;
    while (l=false) and (i<716) do
    begin
      i:=i+1;
      if pos(S,Q[i])<>0 then
      begin
       l:=true;
       Ind:=i;
       Form2.Label1.Caption:=('Question:  ' + Q1[i] +#13#10+ 'Answer:  ' + A[i]);
       Form2.Show;
      end;
    end;
        if (l=false) and (i=716)  then
    begin
      Form2.Label1.Caption:=('Sovpadenii net');
      Form2.Show;
    end
  end;
  Ind:=i;
end;

procedure TForm1.Edit1Change(Sender: TObject);
begin
Button2.Enabled:= false;
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin //appelation to Holy Spirit Of Machine, do not touch
UnRegisterHotKey(handle, hotkey1);
UnRegisterHotKey(handle, hotkey2);
UnRegisterHotKey(handle, hotkey3);
end;

end.
