object Form2: TForm2
  Left = 0
  Top = 0
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
  object Label3: TLabel
    Left = 628
    Top = 279
    Width = 47
    Height = 15
    Caption = #3619#3627#3633#3626#3626#3636#3609#3588#3657#3634
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label7: TLabel
    Left = 642
    Top = 239
    Width = 33
    Height = 15
    Caption = #3592#3635#3609#3623#3609
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label8: TLabel
    Left = 651
    Top = 196
    Width = 24
    Height = 15
    Caption = #3619#3634#3588#3634
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label9: TLabel
    Left = 657
    Top = 155
    Width = 19
    Height = 15
    Caption = #3594#3639#3656#3629' '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 629
    Top = 624
    Width = 47
    Height = 15
    Caption = #3619#3627#3633#3626#3626#3636#3609#3588#3657#3634
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label10: TLabel
    Left = 643
    Top = 584
    Width = 33
    Height = 15
    Caption = #3592#3635#3609#3623#3609
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label11: TLabel
    Left = 652
    Top = 541
    Width = 24
    Height = 15
    Caption = #3619#3634#3588#3634
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label12: TLabel
    Left = 658
    Top = 500
    Width = 15
    Height = 15
    Caption = #3594#3639#3656#3629
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object GroupBox3: TGroupBox
    Left = 600
    Top = 68
    Width = 257
    Height = 315
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 21
  end
  object GroupBox2: TGroupBox
    Left = 600
    Top = 412
    Width = 254
    Height = 321
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 19
  end
  object Button4: TButton
    Left = 362
    Top = -4
    Width = 181
    Height = 49
    Caption = #3649#3585#3657#3652#3586#3626#3605#3655#3629#3585
    TabOrder = 0
  end
  object Button5: TButton
    Left = -10
    Top = -4
    Width = 195
    Height = 49
    Caption = 'Dashboard'
    TabOrder = 1
    OnClick = Button5Click
  end
  object Button6: TButton
    Left = 175
    Top = -3
    Width = 181
    Height = 48
    Caption = #3586#3634#3618#3627#3609#3657#3634#3619#3657#3634#3609
    TabOrder = 2
    OnClick = Button6Click
  end
  object Button7: TButton
    Left = 536
    Top = -4
    Width = 181
    Height = 50
    Caption = #3586#3657#3629#3617#3641#3621#3619#3657#3634#3609
    TabOrder = 3
    OnClick = Button7Click
  end
  object Button8: TButton
    Left = 697
    Top = -5
    Width = 181
    Height = 51
    Caption = #3629#3629#3585#3592#3634#3585#3650#3611#3619#3649#3585#3619#3617
    TabOrder = 4
    OnClick = Button8Click
  end
  object DBGrid1: TDBGrid
    Left = 24
    Top = 68
    Width = 545
    Height = 665
    DataSource = PFront.DataSource1
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = 15
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Product_code'
        Width = 149
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Product_name'
        Width = 136
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Product_quantity'
        Width = 122
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Product_price'
        Width = 101
        Visible = True
      end>
  end
  object Edit2: TEdit
    Left = 682
    Top = 495
    Width = 121
    Height = 23
    TabOrder = 6
  end
  object Edit3: TEdit
    Left = 682
    Top = 537
    Width = 121
    Height = 23
    TabOrder = 7
  end
  object Edit4: TEdit
    Left = 682
    Top = 581
    Width = 121
    Height = 23
    TabOrder = 8
  end
  object Edit1: TEdit
    Left = 682
    Top = 623
    Width = 121
    Height = 23
    TabOrder = 9
  end
  object Button2: TButton
    Left = 625
    Top = 662
    Width = 86
    Height = 47
    Caption = #3618#3639#3609#3618#3633#3609
    TabOrder = 10
    OnClick = Button2Click
  end
  object Button1: TButton
    Left = 743
    Top = 661
    Width = 85
    Height = 48
    Caption = #3626#3619#3657#3634#3591#3610#3634#3619#3660#3650#3588#3657#3604
    TabOrder = 11
    OnClick = Button1Click
  end
  object Button3: TButton
    Left = 631
    Top = 319
    Width = 85
    Height = 48
    Caption = #3618#3639#3609#3618#3657#3609
    TabOrder = 12
    OnClick = Button3Click
  end
  object DBEdit3: TDBEdit
    Left = 681
    Top = 236
    Width = 121
    Height = 23
    DataField = 'Product_quantity'
    DataSource = PFront.DataSource1
    TabOrder = 13
  end
  object DBEdit4: TDBEdit
    Left = 681
    Top = 276
    Width = 121
    Height = 23
    DataField = 'Product_code'
    DataSource = PFront.DataSource1
    TabOrder = 14
  end
  object DBEdit2: TDBEdit
    Left = 681
    Top = 152
    Width = 121
    Height = 23
    DataField = 'Product_name'
    DataSource = PFront.DataSource1
    TabOrder = 15
  end
  object DBEdit6: TDBEdit
    Left = 681
    Top = 193
    Width = 121
    Height = 23
    DataField = 'Product_price'
    DataSource = PFront.DataSource1
    TabOrder = 16
  end
  object Panel1: TPanel
    Left = 642
    Top = 430
    Width = 185
    Height = 41
    Caption = #3648#3614#3636#3656#3617#3619#3634#3618#3585#3634#3619#3626#3636#3609#3588#3657#3634
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 17
  end
  object Button10: TButton
    Left = 743
    Top = 319
    Width = 91
    Height = 47
    Caption = #3621#3610#3626#3636#3609#3588#3657#3634
    TabOrder = 18
    OnClick = Button10Click
  end
  object Panel6: TPanel
    Left = 642
    Top = 87
    Width = 185
    Height = 41
    Caption = #3649#3585#3657#3652#3586#3619#3634#3618#3585#3634#3619#3626#3636#3609#3588#3657#3634
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 20
  end
  object GroupBox1: TGroupBox
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
    TabOrder = 22
  end
  object GroupBox4: TGroupBox
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
    TabOrder = 23
  end
  object GroupBox5: TGroupBox
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
    TabOrder = 24
  end
  object GroupBox6: TGroupBox
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
    TabOrder = 25
  end
  object GroupBox7: TGroupBox
    Left = 870
    Top = -1
    Width = 19
    Height = 46
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = 20
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 26
  end
  object GroupBox8: TGroupBox
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
    TabOrder = 27
  end
end
