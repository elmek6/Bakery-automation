object dm1: Tdm1
  OldCreateOrder = False
  Left = 276
  Top = 193
  Height = 246
  Width = 530
  object dsServis: TDataSource
    DataSet = tbServis
    Left = 32
    Top = 16
  end
  object dsSaglama: TDataSource
    DataSet = tbSaglama
    Left = 104
    Top = 16
  end
  object tbSaglama: TTable
    Active = True
    FieldDefs = <
      item
        Name = 'Tarih'
        DataType = ftDate
      end
      item
        Name = 'Tezgah'
        DataType = ftInteger
      end
      item
        Name = 'Bedava'
        DataType = ftInteger
      end
      item
        Name = 'Kalan'
        DataType = ftInteger
      end
      item
        Name = 'Veresiye'
        DataType = ftInteger
      end
      item
        Name = 'Toplam'
        DataType = ftInteger
      end
      item
        Name = 'Bayat'
        DataType = ftInteger
      end
      item
        Name = 'Tamam'
        DataType = ftBoolean
      end>
    IndexDefs = <
      item
        Name = 'tbSaglamaIndex1'
        Fields = 'Tarih'
        Options = [ixPrimary, ixUnique]
      end>
    StoreDefs = True
    TableName = 'saglama.DB'
    Left = 104
    Top = 80
    object tbSaglamaTarih: TDateField
      FieldName = 'Tarih'
    end
    object tbSaglamaTezgah: TIntegerField
      FieldName = 'Tezgah'
    end
    object tbSaglamaBedava: TIntegerField
      FieldName = 'Bedava'
    end
    object tbSaglamaKalan: TIntegerField
      FieldName = 'Kalan'
    end
    object tbSaglamaVeresiye: TIntegerField
      FieldName = 'Veresiye'
    end
    object tbSaglamaToplam: TIntegerField
      FieldName = 'Toplam'
    end
    object tbSaglamaBayat: TIntegerField
      FieldName = 'Bayat'
    end
    object tbSaglamaTamam: TBooleanField
      FieldName = 'Tamam'
    end
  end
  object dsHareket: TDataSource
    DataSet = tbHareket
    Left = 176
    Top = 16
  end
  object tbHareket: TTable
    Active = True
    TableName = 'hareket.DB'
    Left = 176
    Top = 80
    object tbHareketGun: TDateField
      FieldName = 'Gun'
    end
    object tbHareketFirmaKod: TIntegerField
      FieldName = 'FirmaKod'
    end
    object tbHareketFirmaAd: TStringField
      FieldName = 'FirmaAd'
    end
    object tbHareketAdet: TIntegerField
      FieldName = 'Adet'
    end
    object tbHareketBirimFiyat: TFloatField
      FieldName = 'BirimFiyat'
      DisplayFormat = '#,###'
    end
    object tbHareketToplam: TFloatField
      FieldName = 'Toplam'
      DisplayFormat = '#,###'
    end
    object tbHareketServisArac: TIntegerField
      FieldName = 'ServisArac'
    end
  end
  object dsKartlar: TDataSource
    AutoEdit = False
    DataSet = tbKartlar
    Left = 248
    Top = 16
  end
  object tbKartlar: TTable
    Active = True
    TableName = 'kartlar.DB'
    Left = 248
    Top = 80
    object tbKartlarKartNo: TAutoIncField
      FieldName = 'KartNo'
      ReadOnly = True
    end
    object tbKartlarKartAd: TStringField
      FieldName = 'KartAd'
    end
    object tbKartlarServisNo: TIntegerField
      FieldName = 'ServisNo'
    end
  end
  object dsRandiman: TDataSource
    DataSet = tbRandiman
    Left = 320
    Top = 16
  end
  object tbRandiman: TTable
    Active = True
    FieldDefs = <
      item
        Name = 'Tarih'
        DataType = ftDate
      end
      item
        Name = 'SomunEkmek'
        DataType = ftInteger
      end
      item
        Name = 'KepekEkmek'
        DataType = ftInteger
      end
      item
        Name = 'HamsanEkmek'
        DataType = ftInteger
      end
      item
        Name = 'TostEkmek'
        DataType = ftInteger
      end
      item
        Name = 'KoyEkmek'
        DataType = ftInteger
      end
      item
        Name = 'TasEkmek'
        DataType = ftInteger
      end
      item
        Name = 'AlmanEkmek'
        DataType = ftInteger
      end
      item
        Name = 'MisirEkmek'
        DataType = ftInteger
      end
      item
        Name = 'CavdarEkmek'
        DataType = ftInteger
      end
      item
        Name = 'ToplamIc'
        DataType = ftFloat
      end
      item
        Name = 'TasEkmekDis'
        DataType = ftInteger
      end
      item
        Name = 'KatilanDis'
        DataType = ftInteger
      end
      item
        Name = 'ToplamDis'
        DataType = ftFloat
      end
      item
        Name = 'AmbarUn'
        DataType = ftFloat
      end
      item
        Name = 'KullanilanUn'
        DataType = ftFloat
      end
      item
        Name = 'KalanUn'
        DataType = ftFloat
      end
      item
        Name = 'Randiman'
        DataType = ftFloat
      end
      item
        Name = 'KalanHamur'
        DataType = ftFloat
      end
      item
        Name = 'DevredenHamur'
        DataType = ftFloat
      end
      item
        Name = 'Tamam'
        DataType = ftBoolean
      end>
    IndexDefs = <
      item
        Name = 'tbRandimanIndex1'
        Fields = 'Tarih'
        Options = [ixPrimary, ixUnique]
      end>
    StoreDefs = True
    TableName = 'randiman.db'
    Left = 320
    Top = 80
    object tbRandimanTarih: TDateField
      FieldName = 'Tarih'
    end
    object tbRandimanSomunEkmek: TIntegerField
      FieldName = 'SomunEkmek'
    end
    object tbRandimanKepekEkmek: TIntegerField
      FieldName = 'KepekEkmek'
    end
    object tbRandimanHamsanEkmek: TIntegerField
      FieldName = 'HamsanEkmek'
    end
    object tbRandimanTostEkmek: TIntegerField
      FieldName = 'TostEkmek'
    end
    object tbRandimanKoyEkmek: TIntegerField
      FieldName = 'KoyEkmek'
    end
    object tbRandimanTasEkmek: TIntegerField
      FieldName = 'TasEkmek'
    end
    object tbRandimanAlmanEkmek: TIntegerField
      FieldName = 'AlmanEkmek'
    end
    object tbRandimanMisirEkmek: TIntegerField
      FieldName = 'MisirEkmek'
    end
    object tbRandimanCavdarEkmek: TIntegerField
      FieldName = 'CavdarEkmek'
    end
    object tbRandimanToplamIc: TFloatField
      FieldName = 'ToplamIc'
    end
    object tbRandimanTasEkmekDis: TIntegerField
      FieldName = 'TasEkmekDis'
    end
    object tbRandimanKatilanDis: TIntegerField
      FieldName = 'KatilanDis'
    end
    object tbRandimanToplamDis: TFloatField
      FieldName = 'ToplamDis'
    end
    object tbRandimanAmbarUn: TFloatField
      FieldName = 'AmbarUn'
      DisplayFormat = '0.00'
    end
    object tbRandimanKullanilanUn: TFloatField
      FieldName = 'KullanilanUn'
      DisplayFormat = '0.00'
    end
    object tbRandimanKalanUn: TFloatField
      FieldName = 'KalanUn'
      DisplayFormat = '0.00'
    end
    object tbRandimanRandiman: TFloatField
      FieldName = 'Randiman'
    end
    object tbRandimanKalanHamur: TFloatField
      FieldName = 'KalanHamur'
    end
    object tbRandimanDevredenHamur: TFloatField
      FieldName = 'DevredenHamur'
    end
    object tbRandimanTamam: TBooleanField
      FieldName = 'Tamam'
    end
  end
  object dsKasa: TDataSource
    DataSet = tbKasa
    Left = 384
    Top = 16
  end
  object tbKasa: TTable
    Active = True
    FieldDefs = <
      item
        Name = 'Tarih'
        DataType = ftDate
      end
      item
        Name = 'Gelir'
        DataType = ftFloat
      end
      item
        Name = 'Gider'
        DataType = ftFloat
      end
      item
        Name = 'Kalan'
        DataType = ftFloat
      end>
    IndexDefs = <
      item
        Name = 'tbRandimanIndex1'
        Fields = 'Tarih'
        Options = [ixPrimary, ixUnique]
      end>
    StoreDefs = True
    TableName = 'kasa.DB'
    Left = 384
    Top = 80
    object tbKasaTarih: TDateField
      FieldName = 'Tarih'
    end
    object tbKasaGelir: TFloatField
      FieldName = 'Gelir'
      DisplayFormat = '#,###'
    end
    object tbKasaGider: TFloatField
      FieldName = 'Gider'
      DisplayFormat = '#,###'
    end
    object tbKasaKalan: TFloatField
      FieldName = 'Kalan'
      DisplayFormat = '#,###'
    end
  end
  object dsKasaHareket: TDataSource
    DataSet = tbKasaHareket
    Left = 448
    Top = 16
  end
  object tbKasaHareket: TTable
    Active = True
    FieldDefs = <
      item
        Name = 'Tarih'
        DataType = ftDate
      end
      item
        Name = 'KalemGelirGider'
        DataType = ftSmallint
      end
      item
        Name = 'KalemAd'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'KalemMiktar'
        DataType = ftFloat
      end>
    IndexDefs = <
      item
        Name = 'tbRandimanIndex1'
        Fields = 'Tarih'
        Options = [ixPrimary, ixUnique]
      end>
    StoreDefs = True
    TableName = 'kasahrkt.DB'
    Left = 448
    Top = 80
    object tbKasaHareketTarih: TDateField
      FieldName = 'Tarih'
    end
    object tbKasaHareketKalemGelirGider: TSmallintField
      FieldName = 'KalemGelirGider'
    end
    object tbKasaHareketKalemAd: TStringField
      FieldName = 'KalemAd'
      Size = 50
    end
    object tbKasaHareketKalemMiktar: TFloatField
      FieldName = 'KalemMiktar'
    end
  end
  object tbServis: TTable
    Active = True
    TableName = 'servis.DB'
    Left = 32
    Top = 80
    object tbServisTarih: TDateField
      FieldName = 'Tarih'
    end
    object tbServisServisNo: TIntegerField
      FieldName = 'ServisNo'
    end
    object tbServisServisAd: TStringField
      FieldName = 'ServisAd'
      Size = 10
    end
    object tbServisAlinanEkmek: TIntegerField
      FieldName = 'AlinanEkmek'
    end
    object tbServisBayatEkmek: TIntegerField
      FieldName = 'BayatEkmek'
    end
    object tbServisBelesEkmek: TIntegerField
      FieldName = 'BelesEkmek'
    end
    object tbServisToplamEkmek: TIntegerField
      FieldName = 'ToplamEkmek'
    end
    object tbServisEkmekBayiiFiyat: TFloatField
      FieldName = 'EkmekBayiiFiyat'
      DisplayFormat = '#,###'
    end
    object tbServisEkmekTutar: TFloatField
      FieldName = 'EkmekTutar'
      DisplayFormat = '#,###'
    end
    object tbServisFark: TFloatField
      FieldName = 'Fark'
      DisplayFormat = '#,###'
    end
    object tbServisGelmesiGerekenPara: TFloatField
      FieldName = 'GelmesiGerekenPara'
      DisplayFormat = '#,###'
    end
    object tbServisGelenPara: TFloatField
      FieldName = 'GelenPara'
      DisplayFormat = '#,###'
    end
    object tbServisBakiyeFazlaEksik: TFloatField
      FieldName = 'BakiyeFazlaEksik'
      DisplayFormat = '#,###'
    end
    object tbServisEskiBakiye: TFloatField
      FieldName = 'EskiBakiye'
      DisplayFormat = '#,###'
    end
    object tbServisYeniBakiye: TFloatField
      FieldName = 'YeniBakiye'
      DisplayFormat = '#,###'
    end
    object tbServisTamam: TBooleanField
      FieldName = 'Tamam'
    end
  end
end
