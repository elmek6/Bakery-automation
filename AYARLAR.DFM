object frmAyarlar: TfrmAyarlar
  Left = 242
  Top = 128
  BorderStyle = bsDialog
  Caption = 'Genel ayarlar'
  ClientHeight = 263
  ClientWidth = 457
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
  object GroupBox1: TGroupBox
    Left = 8
    Top = 16
    Width = 241
    Height = 113
    Caption = 'Ekmek fiyatlar'#305
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    object Label1: TLabel
      Left = 16
      Top = 24
      Width = 59
      Height = 13
      Caption = 'Bayii fiyat'#305
    end
    object Label2: TLabel
      Left = 16
      Top = 56
      Width = 74
      Height = 13
      Caption = 'Tezgah fiyat'#305
    end
    object Label3: TLabel
      Left = 16
      Top = 88
      Width = 64
      Height = 13
      Caption = 'Bayat fiyat'#305
    end
    object txtBayiiFiyat: TNumEdit
      Left = 104
      Top = 16
      Width = 121
      Height = 21
      AutoSize = False
      DisplayFormat = '#,###'
      MaxLength = 20
      TabOrder = 0
    end
    object txtTezgahFiyat: TNumEdit
      Left = 104
      Top = 48
      Width = 121
      Height = 21
      AutoSize = False
      DisplayFormat = '#,###'
      MaxLength = 20
      TabOrder = 1
    end
    object txtBayatFiyat: TNumEdit
      Left = 104
      Top = 80
      Width = 121
      Height = 21
      AutoSize = False
      DisplayFormat = '#,###'
      MaxLength = 20
      TabOrder = 2
    end
  end
  object GroupBox2: TGroupBox
    Left = 8
    Top = 136
    Width = 241
    Height = 81
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    object chkSifreIste: TCheckBox
      Left = 8
      Top = 24
      Width = 209
      Height = 17
      Caption = 'Program a'#231#305'l'#305#351'ta '#351'ifre istesin'
      TabOrder = 0
    end
    object BitBtn1: TBitBtn
      Left = 152
      Top = 48
      Width = 75
      Height = 25
      Caption = #350'ifre belirle'
      TabOrder = 1
      OnClick = BitBtn1Click
    end
  end
  object BitBtn2: TBitBtn
    Left = 288
    Top = 232
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
    OnClick = BitBtn2Click
  end
  object BitBtn3: TBitBtn
    Left = 376
    Top = 232
    Width = 75
    Height = 25
    Caption = #304'ptal'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = BitBtn3Click
  end
  object GroupBox3: TGroupBox
    Left = 264
    Top = 16
    Width = 185
    Height = 201
    Caption = 'Servis ara'#231'lar'#305
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    object cmdEkle: TBitBtn
      Left = 16
      Top = 168
      Width = 75
      Height = 25
      Caption = 'Ekle'
      TabOrder = 1
      OnClick = cmdEkleClick
    end
    object cmdSil: TBitBtn
      Left = 96
      Top = 168
      Width = 75
      Height = 25
      Caption = #199#305'kart'
      TabOrder = 2
      OnClick = cmdSilClick
    end
    object lstServisler: TListBox
      Left = 16
      Top = 24
      Width = 153
      Height = 137
      ItemHeight = 13
      TabOrder = 0
    end
  end
end
