object PStock: TPStock
  Left = 0
  Top = 0
  Caption = 'Stock'
  ClientHeight = 761
  ClientWidth = 1108
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label4: TLabel
    Left = 41
    Top = 137
    Width = 23
    Height = 23
    Caption = #3594#3639#3656#3629
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 41
    Top = 179
    Width = 38
    Height = 23
    Caption = #3619#3634#3588#3634
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 41
    Top = 230
    Width = 53
    Height = 23
    Caption = #3592#3635#3609#3623#3609
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label1: TLabel
    Left = 44
    Top = 278
    Width = 78
    Height = 23
    Caption = #3619#3627#3633#3626#3626#3636#3609#3588#3657#3634
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Edit2: TEdit
    Left = 128
    Top = 142
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object Edit3: TEdit
    Left = 128
    Top = 184
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Edit4: TEdit
    Left = 128
    Top = 235
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object Edit1: TEdit
    Left = 128
    Top = 283
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object Button2: TButton
    Left = 33
    Top = 352
    Width = 105
    Height = 41
    Caption = #3618#3639#3609#3618#3633#3609
    TabOrder = 4
    OnClick = Button2Click
  end
  object Button4: TButton
    Left = 184
    Top = 352
    Width = 105
    Height = 41
    Caption = 'Button4'
    TabOrder = 5
    OnClick = Button4Click
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1108
    Height = 129
    Align = alTop
    Caption = #3626#3605#3655#3629#3585#3626#3636#3609#3588#3657#3634
    TabOrder = 6
    ExplicitLeft = 41
    ExplicitTop = -56
  end
  object DBGrid1: TDBGrid
    Left = 320
    Top = 135
    Width = 489
    Height = 289
    Ctl3D = True
    ParentCtl3D = False
    ParentShowHint = False
    ShowHint = False
    TabOrder = 7
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object DBNavigator1: TDBNavigator
    Left = 424
    Top = 457
    Width = 240
    Height = 25
    TabOrder = 8
  end
  object TDataSource
    DataSet = DataModule8.FDQuery1
    Left = 256
    Top = 680
  end
end
