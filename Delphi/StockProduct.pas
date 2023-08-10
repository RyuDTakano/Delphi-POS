unit StockProduct;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, VclTee.TeeGDIPlus,
  VCLTee.Series, VCLTee.TeEngine, VCLTee.TeeProcs, VCLTee.Chart, VCLTee.DBChart,
  Vcl.DBCtrls;

type
  TPStock = class(TForm)
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Edit1: TEdit;
    Label1: TLabel;
    Button2: TButton;
    Button4: TButton;
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;

    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PStock: TPStock;

implementation
      {$R *.dfm}
uses Unit8,StrUtils,Front,UnitMain;




procedure TPStock.Button2Click(Sender: TObject);
begin
   if Not DataModule8.FDConnection2.Connected then
          DataModule8.FDConnection2.Open;

   DataModule8.FDQuery1.open ;

   if Edit2.Text<>'' then
   begin
     with DataModule8.FDQuery1 do
     begin
       try
         Append;
         fieldByName('Product_time').Value:= FormatDateTime('yymmddhhMM',now);
         fieldByName('Product_name').AsString:=  Edit2.Text ;
         fieldByName('Product_price').Value:=  Edit3.Text ;
         fieldByName('Product_quantity').Value:=  Edit4.Text ;
         fieldByName('Product_code').Value:=  Edit1.Text ;
         Post;
         ApplyUpdates;
         ShowMessage('succes.');
         Close;
       except
       On E:Exception do
          ShowMessage   ('error'+e.Message);
       end;
     end;
   end;
end;



procedure TPStock.Button4Click(Sender: TObject);
     var
        frm: TBarcode;
    begin
         frm := TBarcode.Create(Self);
      try
        frm.Showmodal;
      finally
        frm.Free;
      end;
    end;


end.
