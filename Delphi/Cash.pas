unit Cash;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, System.Win.ScktComp;

type
  TForm9 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Button10: TButton;
    Button12: TButton;
    Button13: TButton;
    Memo1: TMemo;
    Button14: TButton;
    Button15: TButton;
    Button16: TButton;
    Button17: TButton;
    Button18: TButton;
    Memo2: TMemo;
    Memo3: TMemo;
    Memo4: TMemo;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Memo5: TMemo;
    Memo6: TMemo;
    ServerSocket: TServerSocket;
    Memo7: TMemo;
    Panel4: TPanel;
    procedure Button15Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure Button17Click(Sender: TObject);
    procedure Button18Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ServerSocket1Accept(Sender: TObject; Socket: TCustomWinSocket);
    procedure Button10Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form9: TForm9;
  Money:Integer;
  MoneyS:String;
  Price:Integer;

implementation

{$R *.dfm}

uses Front,Unit8,Stock,Detailco;

//uses Front_Store  ;
procedure TForm9.Button10Click(Sender: TObject);
begin
ServerSocket.Socket.Connections[0].SendText('print');
end;

procedure TForm9.Button12Click(Sender: TObject);
begin
       Memo1.Lines.Clear;
       MoneyS := '';
end;

procedure TForm9.Button13Click(Sender: TObject);
begin        Memo1.Lines.Clear;
       MoneyS := MoneyS+'0';
       Memo1.Lines.Add(MoneyS);
end;

procedure TForm9.Button14Click(Sender: TObject);
begin
    Form2.Show;
    Self.Close;
    ServerSocket.Close;
end;

procedure TForm9.Button15Click(Sender: TObject);
begin
    PFront.Show;
    Self.Close;
    ServerSocket.Close;
end;

procedure TForm9.Button17Click(Sender: TObject);
begin
    Form1.Show;
    Self.Close;
    ServerSocket.Close;
end;

procedure TForm9.Button18Click(Sender: TObject);
begin
ServerSocket.Close;
Application.Terminate;
end;

procedure TForm9.Button1Click(Sender: TObject);
begin
       Memo1.Lines.Clear;
       MoneyS := MoneyS+'1';
        Memo1.Lines.Add(MoneyS);

end;

procedure TForm9.Button2Click(Sender: TObject);
begin
Memo1.Lines.Clear;
MoneyS := MoneyS+'2';
Memo1.Lines.Add(MoneyS);

end;

procedure TForm9.Button3Click(Sender: TObject);
begin
Memo1.Lines.Clear;
MoneyS := MoneyS+'3';
Memo1.Lines.Add(MoneyS);

end;

procedure TForm9.Button4Click(Sender: TObject);
begin
 Memo1.Lines.Clear;
MoneyS := MoneyS+'4';
Memo1.Lines.Add(MoneyS);

end;

procedure TForm9.Button5Click(Sender: TObject);
begin
 Memo1.Lines.Clear;
MoneyS := MoneyS+'5';
Memo1.Lines.Add(MoneyS);

end;

procedure TForm9.Button6Click(Sender: TObject);
begin
Memo1.Lines.Clear;
MoneyS := MoneyS+'6';
Memo1.Lines.Add(MoneyS);

end;

procedure TForm9.Button7Click(Sender: TObject);
begin
Memo1.Lines.Clear;
MoneyS := MoneyS+'7';
Memo1.Lines.Add(MoneyS);

end;

procedure TForm9.Button8Click(Sender: TObject);
begin
Memo1.Lines.Clear;;
MoneyS := MoneyS+'8';
Memo1.Lines.Add(MoneyS);

end;

procedure TForm9.Button9Click(Sender: TObject);
begin
Memo1.Lines.Clear;
MoneyS := MoneyS+'9';
Memo1.Lines.Add(MoneyS);

end;

procedure TForm9.FormCreate(Sender: TObject);
begin
ServerSocket.Open;
end;



procedure TForm9.ServerSocket1Accept(Sender: TObject; Socket: TCustomWinSocket);
var
 S,MM, Cmd1, Cmd2:String;
 N,M:Integer;
begin
 ServerSocket.Socket.Connections[0].SendText('next');
 S:=Socket.ReceiveText;
 S:=UTF8Decode(S);
 M:=StrToInt(S);

 Memo7.Lines.Add(S);
end;

end.
