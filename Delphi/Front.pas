unit Front;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.ExtCtrls, Vcl.DBCtrls,
  Vcl.Mask, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, Datasnap.Provider,
  Vcl.OleServer, Outlook2000, Vcl.DBCGrids, frxClass, frxDBSet,
  Vcl.Imaging.pngimage, VclTee.TeeGDIPlus, VCLTee.TeEngine, VCLTee.TeeProcs,
  VCLTee.Chart, VCLTee.Series, Data.Win.ADODB, Vcl.Imaging.jpeg, VCLTee.DBChart,
  VCLTee.TeeData;

type
  TPFront = class(TForm)
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    frxReport1: TfrxReport;
    frxDBDataset2: TfrxDBDataset;
    Image1: TImage;
    GroupBox2: TGroupBox;
    GroupBox4: TGroupBox;
    GroupBox5: TGroupBox;
    GroupBox6: TGroupBox;
    GroupBox7: TGroupBox;
    GroupBox8: TGroupBox;
    DBGrid2: TDBGrid;
    Button2: TButton;
    Panel2: TPanel;
    Image2: TImage;
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    DBChart1: TDBChart;
    DataSource3: TDataSource;
    Series6: THorizBarSeries;
    procedure FormShow(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PFront: TPFront;

implementation

{$R *.dfm}
uses Unit8,StrUtils,Cash,Detailco,Stock,Postmarket;

procedure TPFront.Button2Click(Sender: TObject);
begin
frxreport1.PrepareReport(true);
frxreport1.ShowReport(true);
end;

procedure TPFront.Button4Click(Sender: TObject);
begin
    Form2.Show;
    Self.Hide;
end;

procedure TPFront.Button6Click(Sender: TObject);
begin
    Post.Show;
    Self.Hide;
end;

procedure TPFront.Button7Click(Sender: TObject);
begin
    Form1.Show;
    Self.Hide;
end;

procedure TPFront.Button8Click(Sender: TObject);
begin
Post.ServerSocket1.Close;
Application.Terminate;
end;

procedure TPFront.FormShow(Sender: TObject);
begin
    DataModule8.FDQuery1.Open;
end;

end.
