unit Stock;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Data.DB,
  Vcl.Grids, Vcl.DBGrids, Vcl.DBCtrls, Vcl.Mask;

type
  TForm2 = class(TForm)
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    DBGrid1: TDBGrid;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit1: TEdit;
    Button2: TButton;
    Button1: TButton;
    Button3: TButton;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit6: TDBEdit;
    Label3: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Panel1: TPanel;
    Button10: TButton;
    GroupBox2: TGroupBox;
    Panel6: TPanel;
    Label2: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    GroupBox3: TGroupBox;
    GroupBox1: TGroupBox;
    GroupBox4: TGroupBox;
    GroupBox5: TGroupBox;
    GroupBox6: TGroupBox;
    GroupBox7: TGroupBox;
    GroupBox8: TGroupBox;
    procedure Button8Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
  private
    { Private declarations }
  public

end  ;
var
  Form2: TForm2;
type
    Product= record
    StockPrice: integer;
    StockQuntity : integer;
    StockName: String;
    StockBarcode: String;
  end;

var
StockProduct:array[0..50] of  Product;
colidx : integer;
ss : string;

implementation

{$R *.dfm}
uses   Front,Unit8,Cash,Detailco,UnitMain,Postmarket;

procedure TForm2.Button10Click(Sender: TObject);
begin


   DataModule8.FDQuery1.open ;
        DataModule8.FDQuery1.DisableControls ;
   begin
     with DataModule8.FDQuery1 do
     begin
         edit;
         DataModule8.FDQuery1.Delete ;
         ShowMessage('succes.');
         DataModule8.FDQuery1.EnableControls ;

     end;
   end;
end;

procedure TForm2.Button1Click(Sender: TObject);
begin
        barcode.Show;
        Self.Close;
end;

procedure TForm2.Button2Click(Sender: TObject);
var
i:Integer;
begin
   DataModule8.FDQuery1.open ;
     DataModule8.FDQuery3.open ;
   if Edit2.Text<>'' then
   begin
     with DataModule8.FDQuery1 do
     begin

         Append;
         DataModule8.FDQuery1.CachedUpdates := true;
         //fieldByName('Product_time').Value:= FormatDateTime('yymmddhhMM',now);
         fieldByName('Product_name').AsString:=  Edit2.Text ;
         fieldByName('Product_price').Value:=  Edit3.Text ;
         fieldByName('Product_quantity').Value:=  Edit4.Text ;
         fieldByName('Product_code').Value:=  Edit1.Text ;
         Post;
         ApplyUpdates;
         close;
         ShowMessage('succes.');
     end;
       DataModule8.FDQuery1.open ;
   end;

     with DataModule8.FDQuery3 do
     begin
          Append;
         DataModule8.FDQuery3.CachedUpdates := true;
          if fieldByName('Sell_name').AsString = StockProduct[i].StockName then
          begin
            fieldByName('Sell_name').AsString:=Edit2.Text  ;
            fieldByName('Sell_price').Value:=  0;
            fieldByName('Sell_quantity').Value:= 0;
         Post;
         ApplyUpdates;
           close;
          end;
      DataModule8.FDQuery3.open ;
     end;



end;

procedure TForm2.Button3Click(Sender: TObject);
begin
   DataModule8.FDQuery1.open ;
   DataModule8.FDQuery1.open ;

   if Edit2.Text<>'' then
   begin
     with DataModule8.FDQuery1 do
     begin
       try
         Edit;
         fieldByName('Product_name').AsString:=  Edit2.Text ;
         fieldByName('Product_price').Value:=  Edit3.Text ;
         fieldByName('Product_quantity').Value:=  Edit4.Text ;
         fieldByName('Product_code').Value:=  Edit1.Text ;
         Post;
         ApplyUpdates;
         ShowMessage('Edit Succes.');
         Close;
       except
       On E:Exception do
          ShowMessage   ('error'+e.Message);
       end;

     end;
   end;
end;

procedure TForm2.Button5Click(Sender: TObject);
begin
    PFront.Show;
    Self.Close;
end;

procedure TForm2.Button6Click(Sender: TObject);
begin
     Post.Show;
     Self.Close;
end;

procedure TForm2.Button7Click(Sender: TObject);
begin
Form1.Show;
Self.Close;
end;

procedure TForm2.Button8Click(Sender: TObject);
begin
Post.ServerSocket1.Close;
Application.Terminate;
end;

procedure TForm2.FormCreate(Sender: TObject);
var
i,y:Integer;
gu:String;

begin
DataModule8.FDQuery1.Open;


end;

end.
