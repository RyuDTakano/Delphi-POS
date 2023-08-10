object DataModule8: TDataModule8
  OldCreateOrder = False
  Height = 343
  Width = 881
  object FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink
    VendorLib = 'C:\AppServ\MySQL\lib\libmysql'
    Left = 344
    Top = 192
  end
  object FDConnection2: TFDConnection
    Params.Strings = (
      'Database=Cargo'
      'User_Name=root'
      'Password=077227140'
      'Server=127.0.0.1'
      'DriverID=MySQL')
    Connected = True
    Left = 256
    Top = 192
  end
  object FDQuery1: TFDQuery
    Active = True
    CachedUpdates = True
    Connection = FDConnection2
    SQL.Strings = (
      'Select * from Product')
    Left = 432
    Top = 192
  end
  object FDQuery2: TFDQuery
    Active = True
    CachedUpdates = True
    Connection = FDConnection2
    SQL.Strings = (
      'Select * from history')
    Left = 520
    Top = 192
  end
  object FDQuery3: TFDQuery
    Active = True
    CachedUpdates = True
    Connection = FDConnection2
    SQL.Strings = (
      'Select * from sell')
    Left = 608
    Top = 192
  end
end
