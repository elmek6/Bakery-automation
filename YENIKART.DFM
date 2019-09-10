object frmYeniKart: TfrmYeniKart
  Left = 369
  Top = 169
  BorderStyle = bsDialog
  Caption = 'Yeni Kart Giri'#351'i'
  ClientHeight = 293
  ClientWidth = 318
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClick = cmdKontrol
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 176
    Width = 26
    Height = 13
    Caption = 'Ekle'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 88
    Top = 176
    Width = 15
    Height = 13
    Caption = 'Sil'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 144
    Top = 176
    Width = 37
    Height = 13
    Caption = 'D'#252'zelt'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 200
    Top = 176
    Width = 41
    Height = 13
    Caption = 'Tamam'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 256
    Top = 176
    Width = 26
    Height = 13
    Caption = #304'ptal'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 2
    Top = 272
    Width = 312
    Height = 13
    Caption = 'NOT: UN SATAN F'#304'RMALAR '#304#199#304'N  SERV'#304'S NO -2 '#39'D'#304'R'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object dbGridKart: TDBGrid
    Left = 8
    Top = 16
    Width = 297
    Height = 137
    DataSource = dm1.dsKartlar
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object DBNavigator1: TDBNavigator
    Left = 8
    Top = 192
    Width = 290
    Height = 25
    DataSource = dm1.dsKartlar
    VisibleButtons = [nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
    TabOrder = 1
  end
  object BitBtn1: TBitBtn
    Left = 232
    Top = 224
    Width = 75
    Height = 25
    Caption = 'Tamam'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = BitBtn1Click
  end
  object cmdYeniEkle: TBitBtn
    Tag = 1
    Left = 40
    Top = 136
    Width = 75
    Height = 25
    Caption = 'Yeni ekle'
    TabOrder = 3
    Visible = False
    OnClick = cmdKontrol
  end
  object cmdDuzelt: TBitBtn
    Tag = 2
    Left = 128
    Top = 136
    Width = 75
    Height = 25
    Caption = 'D'#252'zelt'
    TabOrder = 4
    Visible = False
  end
  object cmdSil: TBitBtn
    Tag = 3
    Left = 216
    Top = 136
    Width = 75
    Height = 25
    Caption = 'Sil'
    TabOrder = 5
    Visible = False
    OnClick = cmdKontrol
  end
end
