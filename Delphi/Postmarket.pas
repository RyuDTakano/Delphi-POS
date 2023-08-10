unit Postmarket;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, System.Win.ScktComp,Unit8,StrUtils,Cash,Detailco,Stock,Front,
  Vcl.ExtCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids;

type
  TPost = class(TForm)
    ServerSocket1: TServerSocket;
    Button14: TButton;
    Button15: TButton;
    Button16: TButton;
    Button17: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Button10: TButton;
    Button11: TButton;
    Button12: TButton;
    Panel4: TPanel;
    Panel3: TPanel;
    Panel2: TPanel;
    Panel1: TPanel;
    Button20: TButton;
    Button13: TButton;
    Button2: TButton;
    Button18: TButton;
    Memo4: TMemo;
    Button1: TButton;
    Panel5: TPanel;
    Panel6: TPanel;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    Button3: TButton;
    Button19: TButton;
    Button21: TButton;
    Button22: TButton;
    Button23: TButton;
    GroupBox4: TGroupBox;
    GroupBox5: TGroupBox;
    GroupBox6: TGroupBox;
    GroupBox7: TGroupBox;
    GroupBox8: TGroupBox;
    GroupBox9: TGroupBox;
    Memo6: TMemo;
    GroupBox2: TGroupBox;
    GroupBox1: TGroupBox;
    GroupBox3: TGroupBox;
    Memo2: TMemo;
    Memo3: TMemo;
    Memo1: TMemo;
    Memo7: TMemo;
    Memo5: TMemo;
    procedure Button2Click(Sender: TObject);
    procedure ServerSocket1ClientRead(Sender: TObject;
      Socket: TCustomWinSocket);
    procedure FormCreate(Sender: TObject);
    procedure Button20Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure Button15Click(Sender: TObject);
    procedure Button17Click(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button18Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button23Click(Sender: TObject);
    procedure Button22Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button19Click(Sender: TObject);
    procedure Button21Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
type
    Product= record
    StockPrice: integer;
    StockQuntity : integer;
    StockName: String;
    StockBarcode: String;
    CountSell   : integer;
  end;
var
  Post: TPost;
  StockProduct:array[0..50] of  Product;
  MoneyTorn,MoseyS,PriceTotal:Integer;
  count :array [0..50]of Integer;

implementation

{$R *.dfm}

procedure TPost.Button10Click(Sender: TObject);
begin
 Memo4.Lines.Clear;

       if MoneyS <> '0' then
              MoneyS := MoneyS+'7';
              if MoneyS = '0' then
           MoneyS := '7';
       Memo4.Lines.Add(MoneyS);
end;

procedure TPost.Button11Click(Sender: TObject);
var
i,N:Integer;
begin
      DataModule8.FDQuery3.Open;
     if (StrToInt(MoneyS) = 0)or (StrToInt(MoneyS) < PriceTotal) then
      begin
           ShowMessage   ('Not enough money');

      end;


      if StrToInt(MoneyS) > PriceTotal then
      begin
     Memo6.Lines.Clear;
     Memo4.Lines.Clear;
     MoneyTorn:=StrToInt(MoneyS)-PriceTotal;
     PriceTotal:=0;
     Memo6.Lines.Add(IntToStr(MoneyTorn));
  i:=0;
    DataModule8.FDQuery1.Open;
    DataModule8.FDQuery1.CachedUpdates := true;
    DataModule8.FDQuery1.First;
    While not DataModule8.FDQuery1.Eof do
    begin
     DataModule8.FDQuery1.Edit;
          if  StockProduct[i].CountSell <> 0 then
          begin
            DataModule8.FDQuery1.FieldByName('Product_quantity').Value:=  StockProduct[i].StockQuntity -  StockProduct[i].CountSell ;
          end;
          DataModule8.FDQuery1.ApplyUpdates;
          DataModule8.FDQuery1.next;
          DataModule8.FDQuery1.Open;
           i:=i+1;
       end;
 i:=0;
for i := 0 to 50 do
           begin
  if  StockProduct[i].CountSell <> 0 then
  begin
  with DataModule8.FDQuery2 do
     begin
         Append;
         DataModule8.FDQuery2.CachedUpdates := true;
         fieldByName('History_time').Value:= FormatDateTime('yyyymmddhhMM',now);
         fieldByName('History_name').AsString:=  StockProduct[i].StockName ;
         fieldByName('History_price').Value:=  StockProduct[I].StockPrice ;
         fieldByName('History_quantity').Value:=  StockProduct[i].CountSell ;
         fieldByName('History_code').Value:=  StockProduct[i].StockBarcode ;
         Post;
         ApplyUpdates;
     end;
     end;
     end;
for i := 0 to 50 do
begin
    DataModule8.FDQuery3.First;
    While not DataModule8.FDQuery3.Eof do
    begin
    DataModule8.FDQuery3.CachedUpdates := true;
             DataModule8.FDQuery3.Edit;
           if DataModule8.FDQuery3.fieldByName('Sell_name').AsString = StockProduct[i].StockName then
                 begin
            DataModule8.FDQuery3.fieldByName('Sell_price').Value:=  DataModule8.FDQuery3.fieldByName('Sell_price').Value+(StockProduct[I].StockPrice * StockProduct[i].CountSell);
            DataModule8.FDQuery3.fieldByName('Sell_quantity').Value:= DataModule8.FDQuery3.fieldByName('Sell_quantity').Value+ StockProduct[i].CountSell ;
            DataModule8.FDQuery3.Post;
            DataModule8.FDQuery3.ApplyUpdates;
                 end;     DataModule8.FDQuery3.next;
          end;


       end;
end;
     i:=0;

end;

procedure TPost.Button12Click(Sender: TObject);
begin
        Memo4.Lines.Clear;

       if MoneyS <> '0' then
              MoneyS := MoneyS+'8';
              if MoneyS = '0' then
           MoneyS := '8';
       Memo4.Lines.Add(MoneyS);
end;

procedure TPost.Button13Click(Sender: TObject);
var
N:Integer;
begin
       if MoneyTorn <>0 then
        begin
        Memo5.Lines.Clear;
        Memo6.Lines.Clear;
        Memo7.Lines.Clear;
        Memo3.Lines.Clear;
        Memo1.Lines.Clear;
        Memo2.Lines.Clear;

         for N := 0 to 50 do
              begin
                 if StockProduct[N].CountSell <> 0 then
                    begin
                    Sleep(400);
                     ServerSocket1.Socket.Connections[0].SendText(StockProduct[N].StockName);
                     Sleep(400);
                     ServerSocket1.Socket.Connections[0].SendText(IntToStr(StockProduct[N].StockPrice));
                     Sleep(400);
                     ServerSocket1.Socket.Connections[0].SendText(IntToStr(StockProduct[N].CountSell) );
                     Sleep(400);
                     StockProduct[N].CountSell:= 0;
                     StockProduct[N].StockName := '' ;
                     StockProduct[N].StockPrice:= 0;
                     StockProduct[N].StockQuntity :=0 ;
                     StockProduct[N].StockBarcode:=''  ;
                    end;
               end;
      ServerSocket1.Socket.Connections[0].SendText('WellDone');
      Sleep(400);
      ServerSocket1.Socket.Connections[0].SendText(MoneyS);
      Sleep(400);
      ServerSocket1.Socket.Connections[0].SendText('1' );
      Sleep(400);
      MoneyS := '0';

        end;
        if MoneyTorn = 0 then
        ShowMessage   ('Empty Product');

end;



procedure TPost.Button14Click(Sender: TObject);
begin
    Form2.Show;
    Self.Hide;
end;

procedure TPost.Button15Click(Sender: TObject);
begin
    PFront.Show;
    Self.Close;
end;

procedure TPost.Button17Click(Sender: TObject);
begin
Form1.Show;
Self.Close;
end;

procedure TPost.Button18Click(Sender: TObject);
begin
 Memo4.Lines.Clear;

       if MoneyS <> '0' then
              MoneyS := MoneyS+'9';
              if MoneyS = '0' then
           MoneyS := '9';
       Memo4.Lines.Add(MoneyS);
end;


procedure TPost.Button19Click(Sender: TObject);
begin
var
g:Integer;
begin
       Memo4.Lines.Clear;
       g := StrToInt(MoneyS)+100;
       MoneyS:= IntToStr(g) ;
       Memo4.Lines.Add(MoneyS);
end;
end;

procedure TPost.Button1Click(Sender: TObject);
begin
 Memo4.Lines.Clear;
       MoneyS := MoneyS+'0';
       Memo4.Lines.Add(MoneyS);
end;

procedure TPost.Button20Click(Sender: TObject);
begin
ServerSocket1.Close;
Application.Terminate;
end;

procedure TPost.Button21Click(Sender: TObject);
var
g:Integer;
begin
       Memo4.Lines.Clear;
       g := StrToInt(MoneyS)+1000;
       MoneyS:= IntToStr(g) ;
       Memo4.Lines.Add(MoneyS);
end;
procedure TPost.Button22Click(Sender: TObject);
var
g:Integer;
begin
       Memo4.Lines.Clear;
       g := StrToInt(MoneyS)+50;
       MoneyS:= IntToStr(g) ;
       Memo4.Lines.Add(MoneyS);
end;
procedure TPost.Button23Click(Sender: TObject);
var
g:Integer;
begin
       Memo4.Lines.Clear;
       g := StrToInt(MoneyS)+20;
       MoneyS:= IntToStr(g) ;
       Memo4.Lines.Add(MoneyS);
end;

procedure TPost.Button2Click(Sender: TObject);
begin
Memo4.Lines.Clear;
       MoneyS := '0';
       Memo4.Lines.Add(MoneyS);
end;

procedure TPost.Button3Click(Sender: TObject);
var
g:Integer;
begin
       Memo4.Lines.Clear;
       g := StrToInt(MoneyS)+500;
       MoneyS:= IntToStr(g) ;
       Memo4.Lines.Add(MoneyS);
end;

procedure TPost.Button4Click(Sender: TObject);
begin
       Memo4.Lines.Clear;

       if MoneyS <> '0' then
              MoneyS := MoneyS+'1';
              if MoneyS = '0' then
           MoneyS := '1';
       Memo4.Lines.Add(MoneyS);

end;

procedure TPost.Button5Click(Sender: TObject);
begin
  Memo4.Lines.Clear;

       if MoneyS <> '0' then
              MoneyS := MoneyS+'2';
              if MoneyS = '0' then
           MoneyS := '2';
       Memo4.Lines.Add(MoneyS);
end;

procedure TPost.Button6Click(Sender: TObject);
begin
  Memo4.Lines.Clear;

       if MoneyS <> '0' then
              MoneyS := MoneyS+'3';
              if MoneyS = '0' then
           MoneyS := '3';
       Memo4.Lines.Add(MoneyS);
end;

procedure TPost.Button7Click(Sender: TObject);
begin
 Memo4.Lines.Clear;

       if MoneyS <> '0' then
              MoneyS := MoneyS+'4';
              if MoneyS = '0' then
           MoneyS := '4';
       Memo4.Lines.Add(MoneyS);
end;

procedure TPost.Button8Click(Sender: TObject);
begin
 Memo4.Lines.Clear;

       if MoneyS <> '0' then
              MoneyS := MoneyS+'6';
              if MoneyS = '0' then
           MoneyS := '6';
       Memo4.Lines.Add(MoneyS);
end;

procedure TPost.Button9Click(Sender: TObject);
begin
  Memo4.Lines.Clear;

       if MoneyS <> '0' then
              MoneyS := MoneyS+'5';
              if MoneyS = '0' then
           MoneyS := '5';
       Memo4.Lines.Add(MoneyS);
end;



procedure TPost.FormCreate(Sender: TObject);
  var
 S,MM, Cmd1, Cmd2:String;
 N,M,i:Integer;
begin
ServerSocket1.Open;
MoneyS:='0' ;
Memo4.Lines.Add(MoneyS);

  end;






procedure TPost.ServerSocket1ClientRead(Sender: TObject;
  Socket: TCustomWinSocket);
var
 S,MM, Cmd1, Cmd2:String;
 N,M,i:Integer;
begin
 S:=Socket.ReceiveText;
 S:=UTF8Decode(S);
 i:=0;
 DataModule8.FDQuery1.Open;
    DataModule8.FDQuery1.CachedUpdates := true;
    DataModule8.FDQuery1.First;
    While not DataModule8.FDQuery1.Eof do
    begin
       if DataModule8.FDQuery1.FieldByName('Product_code').AsString = S then
          begin
          if DataModule8.FDQuery1.FieldByName('Product_quantity').Value - count[i] <> 0  then                                                                           begin
             count[i]:=count[i]+1;
           StockProduct[i].CountSell:= StockProduct[i].CountSell+1;
           StockProduct[i].StockName := DataModule8.FDQuery1.FieldByName('Product_name').AsString ;
           StockProduct[i].StockPrice:= DataModule8.FDQuery1.FieldByName('Product_price').Value;
           StockProduct[i].StockQuntity :=DataModule8.FDQuery1.FieldByName('Product_quantity').Value ;
           StockProduct[i].StockBarcode:=DataModule8.FDQuery1.FieldByName('Product_code').AsString;  ;
          Memo5.Lines.Clear;
          PriceTotal:=PriceTotal+DataModule8.FDQuery1.FieldByName('Product_price').Value;
          Memo5.Lines.Add(IntToStr(PriceTotal));
      end;
          end;

    DataModule8.FDQuery1.next;
      i:=i+1;
       end;
 i:=0;

     Memo7.Lines.Clear;
     Memo3.Lines.Clear;
     Memo1.Lines.Clear;
     Memo2.Lines.Clear;
      for N := 0 to 50 do
              begin
                 if StockProduct[N].StockPrice <> 0 then
                    begin
                     Memo7.Lines.Add(StockProduct[N].StockBarcode);
                     Memo3.Lines.Add(StockProduct[N].StockName);
                     Memo1.Lines.Add(IntToStr(StockProduct[N].StockPrice));
                     Memo2.Lines.Add(IntToStr( StockProduct[N].CountSell));
                    end;
               end;
 end;





end.
