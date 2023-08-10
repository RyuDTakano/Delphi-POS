unit Detailco;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,Front,Unit8,Stock,shellapi,
  Vcl.Imaging.pngimage;

type
  TForm1 = class(TForm)
    Button14: TButton;
    Button15: TButton;
    Button16: TButton;
    Button17: TButton;
    Button18: TButton;
    Button1: TButton;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    StaticText1: TStaticText;
    StaticText10: TStaticText;
    StaticText11: TStaticText;
    StaticText12: TStaticText;
    StaticText13: TStaticText;
    StaticText14: TStaticText;
    StaticText15: TStaticText;
    StaticText16: TStaticText;
    Panel10: TPanel;
    GroupBox1: TGroupBox;
    Image2: TImage;
    Image1: TImage;
    GroupBox2: TGroupBox;
    GroupBox4: TGroupBox;
    GroupBox5: TGroupBox;
    GroupBox6: TGroupBox;
    GroupBox7: TGroupBox;
    GroupBox8: TGroupBox;
    procedure Button18Click(Sender: TObject);
    procedure Button15Click(Sender: TObject);
    procedure Button16Click(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses Cash,Postmarket;

procedure TForm1.Button14Click(Sender: TObject);
begin
Form2.Show;
    Self.Close;
end;

procedure TForm1.Button15Click(Sender: TObject);
begin
   PFront.Show;
    Self.Close;
end;

procedure TForm1.Button16Click(Sender: TObject);
begin
     Post.Show;
     Self.Close;
end;

procedure TForm1.Button18Click(Sender: TObject);
begin
Post.ServerSocket1.Close;
Application.Terminate;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
 ShellExecute(Handle,'Open','https://goo.gl/maps/SspZPe1nqjLfpWuS9',nil,nil,0);
end;

end.
