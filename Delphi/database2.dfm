object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 599
  ClientWidth = 920
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 472
    Top = 104
    Width = 368
    Height = 280
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=delphi'
      'User_Name=root'
      'Password=077227140'
      'Server=127.0.0.1'
      'DriverID=MySQL')
    Connected = True
    Left = 104
    Top = 80
  end
  object FDQuery1: TFDQuery
    Connection = FDConnection1
    Left = 328
    Top = 80
  end
  object FDTable1: TFDTable
    Active = True
    Connection = FDConnection1
    TableName = 'testdb1.table1'
    Left = 352
    Top = 287
  end
  object DataSource1: TDataSource
    DataSet = FDTable1
    Left = 88
    Top = 271
  end
  object FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink
    VendorLib = 'C:\AppServ\MySQL\lib\libmysql.dll'
    Left = 224
    Top = 72
  end
end
