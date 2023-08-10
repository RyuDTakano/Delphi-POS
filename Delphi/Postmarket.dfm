object Post: TPost
  Left = 0
  Top = 0
  Caption = 'dsd'
  ClientHeight = 758
  ClientWidth = 882
  Color = clInactiveCaption
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = 15
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 15
  object Label1: TLabel
    Left = 88
    Top = 126
    Width = 50
    Height = 15
    Caption = #3592#3635#3609#3623#3609#3648#3591#3636#3609
  end
  object GroupBox3: TGroupBox
    Left = 448
    Top = 464
    Width = 402
    Height = 273
    TabOrder = 40
    object Memo5: TMemo
      Left = 168
      Top = 72
      Width = 201
      Height = 49
      Lines.Strings = (
        'Memo5')
      TabOrder = 0
    end
  end
  object GroupBox1: TGroupBox
    Left = 39
    Top = 95
    Width = 329
    Height = 337
    TabOrder = 39
  end
  object GroupBox2: TGroupBox
    Left = 393
    Top = 104
    Width = 457
    Height = 337
    TabOrder = 38
    object Memo2: TMemo
      Left = 283
      Top = 54
      Width = 70
      Height = 267
      Lines.Strings = (
        '')
      TabOrder = 0
    end
    object Memo3: TMemo
      Left = 168
      Top = 54
      Width = 105
      Height = 267
      Lines.Strings = (
        '')
      TabOrder = 1
    end
    object Memo1: TMemo
      Left = 359
      Top = 54
      Width = 67
      Height = 267
      Lines.Strings = (
        '')
      TabOrder = 2
    end
    object Memo7: TMemo
      Left = 23
      Top = 54
      Width = 122
      Height = 267
      Lines.Strings = (
        '')
      TabOrder = 3
    end
  end
  object Button14: TButton
    Left = 349
    Top = -4
    Width = 181
    Height = 49
    Caption = #3649#3585#3657#3652#3586#3626#3605#3655#3629#3585
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnClick = Button14Click
  end
  object Button15: TButton
    Left = 8
    Top = -4
    Width = 177
    Height = 49
    Caption = 'Dashboard'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = Button15Click
  end
  object Button16: TButton
    Left = 176
    Top = -3
    Width = 181
    Height = 48
    Caption = #3586#3634#3618#3627#3609#3657#3634#3619#3657#3634#3609
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object Button17: TButton
    Left = 536
    Top = -3
    Width = 181
    Height = 48
    Caption = #3586#3657#3629#3617#3641#3621#3619#3657#3634#3609
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnClick = Button17Click
  end
  object Panel4: TPanel
    Left = 416
    Top = 131
    Width = 122
    Height = 30
    Caption = #3619#3627#3633#3626#3626#3636#3609#3588#3657#3634
    TabOrder = 13
  end
  object Button20: TButton
    Left = 701
    Top = -6
    Width = 181
    Height = 51
    Caption = #3629#3629#3585#3592#3634#3585#3650#3611#3619#3649#3585#3619#3617
    TabOrder = 17
    OnClick = Button20Click
  end
  object Button13: TButton
    Left = 70
    Top = 349
    Width = 75
    Height = 34
    Caption = 'Print'
    TabOrder = 18
    OnClick = Button13Click
  end
  object Panel5: TPanel
    Left = 505
    Top = 537
    Width = 105
    Height = 45
    Caption = #3619#3634#3588#3634#3607#3637#3656#3605#3657#3629#3591#3594#3635#3619#3632
    TabOrder = 23
  end
  object Panel6: TPanel
    Left = 504
    Top = 612
    Width = 105
    Height = 45
    Caption = #3648#3591#3636#3609#3607#3629#3609
    TabOrder = 24
  end
  object DBGrid1: TDBGrid
    Left = 39
    Top = 464
    Width = 378
    Height = 273
    DataSource = PFront.DataSource1
    TabOrder = 25
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = 15
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Product_code'
        Width = 104
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Product_name'
        Width = 91
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Product_quantity'
        Width = 81
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Product_price'
        Width = 95
        Visible = True
      end>
  end
  object Memo4: TMemo
    Left = 168
    Top = 104
    Width = 162
    Height = 58
    Lines.Strings = (
      '')
    TabOrder = 21
  end
  object Button8: TButton
    Left = 281
    Top = 230
    Width = 50
    Height = 50
    Caption = '6'
    TabOrder = 8
    OnClick = Button8Click
  end
  object Button18: TButton
    Left = 281
    Top = 286
    Width = 50
    Height = 50
    Caption = '9'
    TabOrder = 20
    OnClick = Button18Click
  end
  object Button6: TButton
    Left = 281
    Top = 175
    Width = 50
    Height = 50
    Caption = '3'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    OnClick = Button6Click
  end
  object Button1: TButton
    Left = 225
    Top = 341
    Width = 50
    Height = 50
    Caption = '0'
    TabOrder = 22
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 168
    Top = 342
    Width = 51
    Height = 49
    Caption = 'Clear'
    TabOrder = 19
    OnClick = Button2Click
  end
  object Button10: TButton
    Left = 169
    Top = 286
    Width = 50
    Height = 50
    Caption = '7'
    TabOrder = 10
    OnClick = Button10Click
  end
  object Button12: TButton
    Left = 225
    Top = 287
    Width = 50
    Height = 48
    Caption = '8'
    TabOrder = 12
    OnClick = Button12Click
  end
  object Button9: TButton
    Left = 225
    Top = 230
    Width = 50
    Height = 50
    Caption = '5'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 9
    OnClick = Button9Click
  end
  object Button7: TButton
    Left = 169
    Top = 230
    Width = 50
    Height = 50
    Caption = '4'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
    OnClick = Button7Click
  end
  object Button4: TButton
    Left = 169
    Top = 174
    Width = 50
    Height = 50
    Caption = '1'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 225
    Top = 174
    Width = 50
    Height = 50
    Caption = '2'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    OnClick = Button5Click
  end
  object Button11: TButton
    Left = 281
    Top = 342
    Width = 50
    Height = 50
    Caption = 'Enter'
    TabOrder = 11
    OnClick = Button11Click
  end
  object Button3: TButton
    Left = 70
    Top = 273
    Width = 75
    Height = 25
    Caption = #3608#3609#3610#3633#3605#3619' 500'
    TabOrder = 26
    OnClick = Button3Click
  end
  object Button19: TButton
    Left = 70
    Top = 242
    Width = 75
    Height = 25
    Caption = #3608#3609#3610#3633#3605#3619' 100'
    TabOrder = 27
    OnClick = Button19Click
  end
  object Button21: TButton
    Left = 70
    Top = 304
    Width = 75
    Height = 25
    Caption = #3608#3609#3610#3633#3605#3619' 1000'
    TabOrder = 28
    OnClick = Button21Click
  end
  object Button22: TButton
    Left = 70
    Top = 211
    Width = 75
    Height = 25
    Caption = #3608#3609#3610#3633#3605#3619' 50'
    TabOrder = 29
    OnClick = Button22Click
  end
  object Button23: TButton
    Left = 70
    Top = 180
    Width = 75
    Height = 25
    Caption = #3608#3609#3610#3633#3605#3619' 20'
    TabOrder = 30
    OnClick = Button23Click
  end
  object GroupBox4: TGroupBox
    Left = 166
    Top = -1
    Width = 19
    Height = 46
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 31
  end
  object GroupBox5: TGroupBox
    Left = 349
    Top = -1
    Width = 19
    Height = 46
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 32
  end
  object GroupBox6: TGroupBox
    Left = 524
    Top = -1
    Width = 19
    Height = 46
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 33
  end
  object GroupBox7: TGroupBox
    Left = 697
    Top = -1
    Width = 19
    Height = 46
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 34
  end
  object GroupBox8: TGroupBox
    Left = 863
    Top = -1
    Width = 19
    Height = 46
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 35
  end
  object GroupBox9: TGroupBox
    Left = 0
    Top = -1
    Width = 19
    Height = 46
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 36
  end
  object Memo6: TMemo
    Left = 616
    Top = 612
    Width = 202
    Height = 45
    Lines.Strings = (
      '')
    TabOrder = 37
  end
  object Panel2: TPanel
    Left = 560
    Top = 131
    Width = 110
    Height = 31
    Caption = #3626#3636#3609#3588#3657#3634
    TabOrder = 15
  end
  object Panel3: TPanel
    Left = 689
    Top = 131
    Width = 57
    Height = 31
    Caption = #3592#3635#3609#3623#3609
    TabOrder = 14
  end
  object Panel1: TPanel
    Left = 752
    Top = 131
    Width = 66
    Height = 31
    Caption = #3619#3634#3588#3634
    TabOrder = 16
  end
  object ServerSocket1: TServerSocket
    Active = True
    Port = 65432
    ServerType = stNonBlocking
    OnClientRead = ServerSocket1ClientRead
    Left = 32
    Top = 48
  end
end
