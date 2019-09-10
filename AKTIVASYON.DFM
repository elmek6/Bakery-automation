object frmAktivasyon: TfrmAktivasyon
  Left = 345
  Top = 145
  BorderStyle = bsDialog
  Caption = 'Aktivasyon'
  ClientHeight = 234
  ClientWidth = 372
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
    Left = 8
    Top = 8
    Width = 329
    Height = 13
    Alignment = taCenter
    Caption = 'PROGRAMLA BEBAER VER'#304'LEN L'#304'SANS NUMARANISINI G'#304'R'#304'N'#304'Z'
  end
  object Label4: TLabel
    Left = 8
    Top = 56
    Width = 32
    Height = 13
    Caption = 'KOD 1'
  end
  object Label5: TLabel
    Left = 192
    Top = 56
    Width = 32
    Height = 13
    Caption = 'KOD 2'
  end
  object Label7: TLabel
    Left = 8
    Top = 152
    Width = 353
    Height = 41
    Alignment = taCenter
    AutoSize = False
    Caption = 
      'L'#304'SANS NUMARASINI B'#304'LM'#304'YORSANIZ SATICIYA BA'#350'VURUN, G'#304'RD'#304#286#304'N'#304'Z L'#304 +
      'SANS NUMARASI DO'#286'RUYSA PROGRAMI '#199'ALI'#350'TIRDI'#286'INIZDA SORUN '#199'IKMAYAC' +
      'KTIR.'
    WordWrap = True
  end
  object Label6: TLabel
    Left = 72
    Top = 112
    Width = 98
    Height = 13
    Caption = 'ANAHTARI G'#304'R'#304'N'#304'Z'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object BitBtn1: TBitBtn
    Left = 40
    Top = 200
    Width = 75
    Height = 25
    Caption = 'BitBtn1'
    TabOrder = 0
  end
  object txtAnahtar: TNumEdit
    Left = 176
    Top = 104
    Width = 97
    Height = 21
    AutoSize = False
    DisplayFormat = '#,###'
    MaxLength = 20
    TabOrder = 1
  end
  object txtKod1: TNumEdit
    Left = 80
    Top = 48
    Width = 97
    Height = 21
    AutoSize = False
    Ctl3D = False
    DisplayFormat = '#,###'
    Enabled = False
    MaxLength = 20
    ParentCtl3D = False
    TabOrder = 2
  end
  object txtKod2: TNumEdit
    Left = 264
    Top = 48
    Width = 97
    Height = 21
    AutoSize = False
    Ctl3D = False
    DisplayFormat = '#,###'
    Enabled = False
    MaxLength = 20
    ParentCtl3D = False
    TabOrder = 3
  end
  object BitBtn2: TBitBtn
    Left = 192
    Top = 200
    Width = 75
    Height = 25
    Caption = 'Tamam'
    TabOrder = 4
    OnClick = BitBtn2Click
  end
  object BitBtn3: TBitBtn
    Left = 280
    Top = 200
    Width = 75
    Height = 25
    Caption = #304'ptal'
    ModalResult = 2
    TabOrder = 5
  end
end
