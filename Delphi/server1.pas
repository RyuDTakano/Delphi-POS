unit server1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, System.Win.ScktComp;

type
  TServerds = class(TForm)
    ServerSocket1: TServerSocket;
    Button1: TButton;
    Edit1: TEdit;
    Memo1: TMemo;
    Button2: TButton;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure ServerSocket1ClientRead(Sender: TObject;
      Socket: TCustomWinSocket);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Serverds: TServerds;

implementation

{$R *.dfm}

procedure TServerds.Button1Click(Sender: TObject);
begin
 ServerSocket1.Open;
end;

procedure TServerds.Button2Click(Sender: TObject);
begin
 ServerSocket1.Close;
end;

procedure TServerds.Button3Click(Sender: TObject);
begin
 ServerSocket1.Socket.Connections[0].SendText('print');
end;

procedure TServerds.ServerSocket1ClientRead(Sender: TObject;
  Socket: TCustomWinSocket);
var
 S,MM, Cmd1, Cmd2:String;
 N,M:Integer;
begin

 S:=Socket.ReceiveText;

 S:=UTF8Decode(S);
 //MM:=StrToInt(S);
 //M:=5+N;
 //MM:=IntToStr(M);
 Memo1.Lines.Add(S);
 //Memo1.Lines.Add(MM);
end;

{procedure TForm2.ServerSocket1ClientRead(Sender: TObject;
  Socket: TCustomWinSocket);
begin
 Memo1.Lines.Add(Socket.ReceiveText);
end; }

end.
