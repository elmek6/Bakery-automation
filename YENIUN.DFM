object frmYeniUn: TfrmYeniUn
  Left = 211
  Top = 154
  BorderStyle = bsDialog
  Caption = 'Yeni Un Ekleme'
  ClientHeight = 207
  ClientWidth = 540
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
    Left = 328
    Top = 32
    Width = 27
    Height = 13
    Caption = 'Adet'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 328
    Top = 64
    Width = 59
    Height = 13
    Caption = 'Birim fiyat'#305
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 328
    Top = 96
    Width = 42
    Height = 13
    Caption = 'Toplam'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 328
    Top = 128
    Width = 31
    Height = 13
    Caption = 'Firma'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object dbgKart: TDBGrid
    Left = 8
    Top = 24
    Width = 297
    Height = 161
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
    OnCellClick = dbgKartCellClick
  end
  object txtAdet: TNumEdit
    Left = 400
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
    TabOrder = 1
    OnChange = toplamHesapla
  end
  object txtBirimFiyat: TNumEdit
    Left = 400
    Top = 56
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
    TabOrder = 2
    OnChange = toplamHesapla
  end
  object txtToplam: TNumEdit
    Left = 400
    Top = 88
    Width = 121
    Height = 21
    AutoSize = False
    DisplayFormat = '#,###'
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    MaxLength = 20
    ParentFont = False
    TabOrder = 3
  end
  object cmdUnEkle: TBitBtn
    Left = 328
    Top = 168
    Width = 107
    Height = 25
    Caption = 'Unu ekle'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ModalResult = 1
    ParentFont = False
    TabOrder = 5
    OnClick = cmdUnEkleClick
  end
  object BitBtn2: TBitBtn
    Left = 448
    Top = 168
    Width = 75
    Height = 25
    Caption = #304'ptal'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ModalResult = 2
    ParentFont = False
    TabOrder = 6
  end
  object txtFirmaAd: TEdit
    Left = 400
    Top = 120
    Width = 121
    Height = 21
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 4
  end
end
