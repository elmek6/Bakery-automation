unit datamod1;

interface

uses
  SysUtils, Classes, DBTables, DB;

type
  Tdm1 = class(TDataModule)
    dsServis: TDataSource;
    dsSaglama: TDataSource;
    tbSaglama: TTable;
    dsHareket: TDataSource;
    tbHareket: TTable;
    dsKartlar: TDataSource;
    tbKartlar: TTable;
    dsRandiman: TDataSource;
    tbRandiman: TTable;
    tbRandimanTarih: TDateField;
    tbRandimanSomunEkmek: TIntegerField;
    tbRandimanKepekEkmek: TIntegerField;
    tbRandimanHamsanEkmek: TIntegerField;
    tbRandimanTostEkmek: TIntegerField;
    tbRandimanKoyEkmek: TIntegerField;
    tbRandimanTasEkmek: TIntegerField;
    tbRandimanAlmanEkmek: TIntegerField;
    tbRandimanMisirEkmek: TIntegerField;
    tbRandimanCavdarEkmek: TIntegerField;
    tbRandimanToplamIc: TFloatField;
    tbRandimanTasEkmekDis: TIntegerField;
    tbRandimanKatilanDis: TIntegerField;
    tbRandimanToplamDis: TFloatField;
    tbRandimanKullanilanUn: TFloatField;
    tbRandimanKalanUn: TFloatField;
    tbRandimanRandiman: TFloatField;
    tbRandimanKalanHamur: TFloatField;
    tbRandimanDevredenHamur: TFloatField;
    tbRandimanAmbarUn: TFloatField;
    tbKartlarKartNo: TAutoIncField;
    tbKartlarKartAd: TStringField;
    tbKartlarServisNo: TIntegerField;
    tbHareketGun: TDateField;
    tbHareketFirmaKod: TIntegerField;
    tbHareketFirmaAd: TStringField;
    tbHareketAdet: TIntegerField;
    tbHareketBirimFiyat: TFloatField;
    tbHareketToplam: TFloatField;
    tbHareketServisArac: TIntegerField;
    dsKasa: TDataSource;
    tbKasa: TTable;
    tbKasaTarih: TDateField;
    tbKasaGelir: TFloatField;
    tbKasaGider: TFloatField;
    tbKasaKalan: TFloatField;
    dsKasaHareket: TDataSource;
    tbKasaHareket: TTable;
    tbKasaHareketTarih: TDateField;
    tbKasaHareketKalemGelirGider: TSmallintField;
    tbKasaHareketKalemAd: TStringField;
    tbKasaHareketKalemMiktar: TFloatField;
    tbServis: TTable;
    tbServisTarih: TDateField;
    tbServisServisNo: TIntegerField;
    tbServisServisAd: TStringField;
    tbServisAlinanEkmek: TIntegerField;
    tbServisBayatEkmek: TIntegerField;
    tbServisBelesEkmek: TIntegerField;
    tbServisToplamEkmek: TIntegerField;
    tbServisEkmekBayiiFiyat: TFloatField;
    tbServisEkmekTutar: TFloatField;
    tbServisFark: TFloatField;
    tbServisGelmesiGerekenPara: TFloatField;
    tbServisGelenPara: TFloatField;
    tbServisBakiyeFazlaEksik: TFloatField;
    tbServisEskiBakiye: TFloatField;
    tbServisYeniBakiye: TFloatField;
    tbServisTamam: TBooleanField;
    tbRandimanTamam: TBooleanField;
    tbSaglamaTarih: TDateField;
    tbSaglamaTezgah: TIntegerField;
    tbSaglamaBedava: TIntegerField;
    tbSaglamaKalan: TIntegerField;
    tbSaglamaVeresiye: TIntegerField;
    tbSaglamaToplam: TIntegerField;
    tbSaglamaBayat: TIntegerField;
    tbSaglamaTamam: TBooleanField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dm1: Tdm1;

implementation

{$R *.dfm}

end.
