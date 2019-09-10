object frmKartIzleme: TfrmKartIzleme
  Left = 127
  Top = 48
  BorderStyle = bsDialog
  Caption = 'Kart Hareketleri'
  ClientHeight = 470
  ClientWidth = 617
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
  object DBGrid1: TDBGrid
    Left = 8
    Top = 8
    Width = 601
    Height = 209
    DataSource = dm1.dsHareket
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Gun'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FirmaKod'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FirmaAd'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Adet'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BirimFiyat'
        Width = 73
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Toplam'
        Width = 91
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ServisArac'
        Width = 60
        Visible = True
      end>
  end
  object GroupBox1: TGroupBox
    Left = 8
    Top = 232
    Width = 337
    Height = 193
    Caption = 'Listeleme se'#231'enekleri'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    object optTumKartlar: TRadioButton
      Left = 16
      Top = 24
      Width = 129
      Height = 17
      Caption = 'T'#252'm kayitlari listele'
      Checked = True
      TabOrder = 0
      TabStop = True
      OnClick = optKartGoster
    end
    object optSeciliKart: TRadioButton
      Left = 16
      Top = 48
      Width = 185
      Height = 17
      Caption = 'Yalnizca se'#231'tigim karti listele'
      TabOrder = 1
      OnClick = optKartGoster
    end
    object dbgridKart: TDBGrid
      Left = 24
      Top = 73
      Width = 297
      Height = 112
      DataSource = dm1.dsKartlar
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      ReadOnly = True
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      OnCellClick = dbgridKartCellClick
    end
  end
  object BitBtn1: TBitBtn
    Left = 512
    Top = 440
    Width = 99
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
  object GroupBox2: TGroupBox
    Left = 368
    Top = 232
    Width = 241
    Height = 193
    Caption = 'Tarih araligi'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    object lblAdet: TLabel
      Left = 70
      Top = 132
      Width = 27
      Height = 13
      Caption = 'Adet'
    end
    object lblTop: TLabel
      Left = 55
      Top = 156
      Width = 42
      Height = 13
      Caption = 'Toplam'
    end
    object optTumu: TRadioButton
      Left = 16
      Top = 24
      Width = 137
      Height = 17
      Caption = 'T'#252'm tarihleri g'#246'ster'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      TabStop = True
      OnClick = optTarihGoster
    end
    object optSecim: TRadioButton
      Left = 16
      Top = 48
      Width = 153
      Height = 17
      Caption = 'Se'#231'tigim araligi g'#246'ster'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = optTarihGoster
    end
    object dtBas: TDateTimePicker
      Left = 24
      Top = 76
      Width = 97
      Height = 21
      CalAlignment = dtaLeft
      Date = 37786.6374149653
      Time = 37786.6374149653
      DateFormat = dfShort
      DateMode = dmComboBox
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Kind = dtkDate
      ParseInput = False
      ParentFont = False
      TabOrder = 2
    end
    object dtBit: TDateTimePicker
      Left = 128
      Top = 76
      Width = 97
      Height = 21
      CalAlignment = dtaLeft
      Date = 37786.6374149653
      Time = 37786.6374149653
      DateFormat = dfShort
      DateMode = dmComboBox
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      Kind = dtkDate
      ParseInput = False
      ParentFont = False
      TabOrder = 3
    end
    object txtAdet: TNumEdit
      Left = 104
      Top = 124
      Width = 121
      Height = 21
      AutoSize = False
      DisplayFormat = '#,###'
      MaxLength = 20
      TabOrder = 4
    end
    object txtTop: TNumEdit
      Left = 104
      Top = 156
      Width = 121
      Height = 21
      AutoSize = False
      DisplayFormat = '#,###'
      MaxLength = 20
      TabOrder = 5
    end
  end
  object BitBtn2: TBitBtn
    Left = 104
    Top = 440
    Width = 75
    Height = 25
    Caption = 'Yazdir'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    OnClick = BitBtn2Click
  end
  object cmdGoster: TBitBtn
    Left = 8
    Top = 440
    Width = 75
    Height = 25
    Caption = 'G'#246'ster'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    OnClick = cmdGosterClick
  end
end
