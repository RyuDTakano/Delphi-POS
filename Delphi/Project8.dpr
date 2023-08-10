program Project8;

uses
  Vcl.Forms,
  Postmarket in 'Postmarket.pas' {Post},
  ds in 'ds.pas' {Form9};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TPost, Post);
  Application.CreateForm(TForm9, Form9);
  Application.Run;
end.
