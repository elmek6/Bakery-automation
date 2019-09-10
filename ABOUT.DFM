object frmAbout: TfrmAbout
  Left = 271
  Top = 168
  BorderStyle = bsDialog
  Caption = 'Program Hakk'#305'nda'
  ClientHeight = 184
  ClientWidth = 324
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 8
    Width = 157
    Height = 13
    Caption = 'Ekmek F'#305'r'#305'n'#305' Otomasyon Program'#305
  end
  object Label2: TLabel
    Left = 240
    Top = 8
    Width = 59
    Height = 13
    Caption = 'Version 1.0a'
  end
  object Label3: TLabel
    Left = 64
    Top = 56
    Width = 198
    Height = 13
    Caption = 'Bu program sadece ismi yaz'#305'l'#305' firmaya aittir.'
    FocusControl = BitBtn1
  end
  object Label4: TLabel
    Left = 24
    Top = 72
    Width = 276
    Height = 13
    Caption = #350'AH'#304'N Ekmek'#231'ilik Hububat '#304'n'#351'. '#304'stiklal V.D. 797 018 1610'
  end
  object Label5: TLabel
    Left = 8
    Top = 104
    Width = 309
    Height = 25
    Alignment = taCenter
    AutoSize = False
    Caption = 
      'PROGRAMIN HERHANG'#304' B'#304'R AMA'#199'LA BA'#350'KA B'#304'R B'#304'LG'#304'SAYARA KOPYALANMASI' +
      ' YASAKTIR.'
    WordWrap = True
  end
  object Label6: TLabel
    Left = 8
    Top = 168
    Width = 97
    Height = 13
    Caption = 'elmek6@yahoo.com'
  end
  object BitBtn1: TBitBtn
    Left = 240
    Top = 152
    Width = 75
    Height = 25
    Cancel = True
    Caption = 'Tamam'
    Default = True
    TabOrder = 0
    OnClick = BitBtn1Click
  end
end
