object Serverds: TServerds
  Left = 0
  Top = 0
  Caption = 'dsd'
  ClientHeight = 525
  ClientWidth = 771
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 8
    Top = 176
    Width = 75
    Height = 25
    Caption = 'Open'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Edit1: TEdit
    Left = 156
    Top = 60
    Width = 109
    Height = 21
    TabOrder = 1
    Text = 'Data Send'
  end
  object Memo1: TMemo
    Left = 328
    Top = 48
    Width = 289
    Height = 257
    Lines.Strings = (
      'Memo1')
    TabOrder = 2
  end
  object Button2: TButton
    Left = 81
    Top = 176
    Width = 75
    Height = 25
    Caption = 'Close'
    TabOrder = 3
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 202
    Top = 176
    Width = 75
    Height = 25
    Caption = 'Send'
    TabOrder = 4
    OnClick = Button3Click
  end
  object ServerSocket1: TServerSocket
    Active = False
    Port = 65432
    ServerType = stNonBlocking
    OnClientRead = ServerSocket1ClientRead
    Left = 40
    Top = 24
  end
end
