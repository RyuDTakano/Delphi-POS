object Data: TData
  OldCreateOrder = False
  Height = 591
  Width = 739
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=Cargo'
      'User_Name=root'
      'Password=077227140'
      'Server=127.0.0.1'
      'DriverID=MySQL')
    Connected = True
    Left = 192
    Top = 48
  end
  object FDQuery1: TFDQuery
    Active = True
    CachedUpdates = True
    Connection = FDConnection1
    SQL.Strings = (
      'Select * from Product')
    Left = 352
    Top = 48
    object FDQuery1Product_time: TLargeintField
      FieldName = 'Product_time'
      Origin = 'Product_time'
      Required = True
    end
    object FDQuery1Product_name: TStringField
      FieldName = 'Product_name'
      Origin = 'Product_name'
      Required = True
    end
    object FDQuery1Product_quantity: TIntegerField
      FieldName = 'Product_quantity'
      Origin = 'Product_quantity'
      Required = True
    end
    object FDQuery1Product_price: TIntegerField
      FieldName = 'Product_price'
      Origin = 'Product_price'
      Required = True
    end
    object FDQuery1Product_code: TIntegerField
      FieldName = 'Product_code'
      Origin = 'Product_code'
      Required = True
    end
  end
  object FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink
    VendorLib = 'C:\AppServ\MySQL\lib\libmysql.dll'
    Left = 280
    Top = 48
  end
end
