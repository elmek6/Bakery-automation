object frmKartGir: TfrmKartGir
  Left = 413
  Top = 199
  BorderStyle = bsDialog
  Caption = 'Kart Giri'#351'/D'#252'zenleme'
  ClientHeight = 176
  ClientWidth = 311
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
  object cmdTamam: TBitBtn
    Left = 152
    Top = 144
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
  end
  object cmdIptal: TBitBtn
    Left = 232
    Top = 144
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
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 297
    Height = 129
    Caption = 'Firma Kart'#305
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
      Width = 52
      Height = 13
      Caption = 'Firma ad'#305
    end
    object Label2: TLabel
      Left = 160
      Top = 24
      Width = 57
      Height = 13
      Caption = 'Firma t'#252'r'#252
    end
    object txtFirmaAd: TEdit
      Left = 16
      Top = 48
      Width = 121
      Height = 21
      TabOrder = 0
    end
    object cboServis: TComboBox
      Left = 176
      Top = 72
      Width = 105
      Height = 21
      ItemHeight = 13
      TabOrder = 1
    end
    object optServis: TRadioButton
      Left = 160
      Top = 48
      Width = 113
      Height = 17
      Caption = 'Servise ait firma'
      Checked = True
      TabOrder = 2
      TabStop = True
    end
    object optUncu: TRadioButton
      Left = 160
      Top = 104
      Width = 113
      Height = 17
      Caption = 'Un al'#305'nan firma'
      TabOrder = 3
    end
  end
end
