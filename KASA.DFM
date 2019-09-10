object frmKasa: TfrmKasa
  Left = 211
  Top = 150
  BorderStyle = bsDialog
  Caption = 'Kasa'
  ClientHeight = 492
  ClientWidth = 705
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 128
    Top = 376
    Width = 85
    Height = 13
    Caption = 'Gelirler toplam'#305
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 488
    Top = 400
    Width = 71
    Height = 13
    Caption = 'Kalan miktar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 8
    Top = 368
    Width = 62
    Height = 13
    Caption = 'GEL'#304'RLER'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 352
    Top = 368
    Width = 64
    Height = 13
    Caption = 'G'#304'DERLER'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Bevel1: TBevel
    Left = 464
    Top = 416
    Width = 233
    Height = 9
    Shape = bsBottomLine
  end
  object Label5: TLabel
    Left = 488
    Top = 376
    Width = 86
    Height = 13
    Caption = 'Giderler toplam'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblKalemAd: TLabel
    Left = 8
    Top = 8
    Width = 58
    Height = 13
    Caption = 'Gelirin ad'#305
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lblFiyat: TLabel
    Left = 184
    Top = 8
    Width = 31
    Height = 13
    Caption = 'Fiyat'#305
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 352
    Top = 8
    Width = 62
    Height = 13
    Caption = 'Giderin ad'#305
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label7: TLabel
    Left = 528
    Top = 8
    Width = 31
    Height = 13
    Caption = 'Fiyat'#305
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object sgGelir: TStringGrid
    Tag = 30
    Left = 8
    Top = 84
    Width = 329
    Height = 277
    Color = 14129294
    ColCount = 2
    DefaultRowHeight = 17
    FixedCols = 0
    RowCount = 1
    FixedRows = 0
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRowSizing, goColSizing, goColMoving, goRowSelect, goThumbTracking]
    ParentFont = False
    TabOrder = 7
    OnDblClick = sgGelirDblClick
    OnDrawCell = sgDrawCell
    ColWidths = (
      180
      128)
    RowHeights = (
      17)
  end
  object sgGider: TStringGrid
    Tag = 40
    Left = 352
    Top = 84
    Width = 345
    Height = 277
    Color = 11249358
    ColCount = 2
    DefaultRowHeight = 17
    FixedCols = 0
    RowCount = 1
    FixedRows = 0
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRowSizing, goColSizing, goColMoving, goRowSelect, goThumbTracking]
    ParentFont = False
    TabOrder = 13
    OnDblClick = sgGiderDblClick
    OnDrawCell = sgDrawCell
    ColWidths = (
      201
      121)
    RowHeights = (
      17)
  end
  object BitBtn1: TBitBtn
    Left = 624
    Top = 456
    Width = 75
    Height = 25
    Caption = 'Tamam'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnClick = BitBtn1Click
  end
  object cmdYeniGelir: TBitBtn
    Tag = 10
    Left = 56
    Top = 56
    Width = 73
    Height = 25
    Caption = 'Ekle'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    OnClick = cmdYeniGelirClick
  end
  object cmdYeniGider: TBitBtn
    Tag = 20
    Left = 400
    Top = 56
    Width = 73
    Height = 25
    Caption = 'Ekle'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 10
    OnClick = cmdYeniGiderClick
  end
  object GroupBox3: TGroupBox
    Left = 16
    Top = 416
    Width = 433
    Height = 65
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 14
    object Bevel2: TBevel
      Left = 224
      Top = 7
      Width = 9
      Height = 57
      Shape = bsRightLine
    end
    object optEskiler: TRadioButton
      Left = 24
      Top = 8
      Width = 137
      Height = 17
      Caption = 'Eski kay'#305'tlara g'#246'zatmak'
      Checked = True
      TabOrder = 0
      TabStop = True
      OnClick = optSecimi
    end
    object optYeniGir: TRadioButton
      Left = 248
      Top = 8
      Width = 169
      Height = 17
      Caption = 'Bug'#252'n'#252'n verilerini girme'
      TabOrder = 3
      OnClick = optSecimi
    end
    object dtSec: TDateTimePicker
      Left = 16
      Top = 36
      Width = 105
      Height = 21
      CalAlignment = dtaLeft
      Date = 37769.0216156481
      Time = 37769.0216156481
      DateFormat = dfShort
      DateMode = dmComboBox
      Kind = dtkDate
      ParseInput = False
      TabOrder = 1
    end
    object cmdGunGoster: TBitBtn
      Left = 134
      Top = 32
      Width = 83
      Height = 25
      Caption = 'G'#252'n'#252' g'#246'ster'
      Default = True
      TabOrder = 2
      OnClick = cmdGunGosterClick
    end
    object cmdTabloHesapla: TBitBtn
      Left = 248
      Top = 32
      Width = 169
      Height = 25
      Caption = 'Hesapla ve Kaydet'
      TabOrder = 4
      OnClick = cmdTabloHesaplaClick
    end
  end
  object dbeGelir: TDBEdit
    Left = 216
    Top = 368
    Width = 121
    Height = 21
    DataField = 'Gelir'
    DataSource = dm1.dsKasa
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 15
  end
  object dbeGider: TDBEdit
    Left = 576
    Top = 368
    Width = 121
    Height = 21
    DataField = 'Gider'
    DataSource = dm1.dsKasa
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 16
  end
  object dbeKalan: TDBEdit
    Left = 576
    Top = 392
    Width = 121
    Height = 21
    DataField = 'Kalan'
    DataSource = dm1.dsKasa
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 17
  end
  object cmdYazdir: TBitBtn
    Left = 464
    Top = 456
    Width = 75
    Height = 25
    Caption = 'Yazd'#305'rma'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = cmdYazdirClick
  end
  object cmdGelirKaydet: TBitBtn
    Left = 144
    Top = 56
    Width = 73
    Height = 25
    Caption = 'Kaydet'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    OnClick = cmdGelirKaydetClick
  end
  object cmdGiderKaydet: TBitBtn
    Left = 488
    Top = 56
    Width = 73
    Height = 25
    Caption = 'Kaydet'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 11
    OnClick = cmdGiderKaydetClick
  end
  object txtGelirAd: TEdit
    Left = 8
    Top = 24
    Width = 169
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    MaxLength = 50
    ParentFont = False
    TabOrder = 2
  end
  object txtGelirFiyat: TNumEdit
    Left = 184
    Top = 24
    Width = 121
    Height = 21
    AutoSize = False
    DisplayFormat = '#,###'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    MaxLength = 20
    ParentFont = False
    TabOrder = 3
  end
  object cmdGelirCikart: TBitBtn
    Left = 232
    Top = 56
    Width = 75
    Height = 25
    Caption = #199#305'kart'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
    OnClick = cmdGelirCikartClick
  end
  object txtGiderAd: TEdit
    Left = 352
    Top = 24
    Width = 169
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    MaxLength = 50
    ParentFont = False
    TabOrder = 8
  end
  object txtGiderFiyat: TNumEdit
    Left = 528
    Top = 24
    Width = 121
    Height = 21
    AutoSize = False
    DisplayFormat = '#,###'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    MaxLength = 20
    ParentFont = False
    TabOrder = 9
  end
  object cmdGiderCikart: TBitBtn
    Left = 576
    Top = 56
    Width = 75
    Height = 25
    Caption = #199#305'kart'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 12
    OnClick = cmdGiderCikartClick
  end
end
