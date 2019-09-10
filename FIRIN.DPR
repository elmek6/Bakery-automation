program FIRIN;

uses
  Forms,
  main in 'main.pas' {frmMain},
  saglama in 'saglama.pas' {frmSaglama},
  randiman in 'randiman.pas' {frmRandiman},
  datamod1 in 'datamod1.pas' {dm1: TDataModule},
  ayarlar in 'ayarlar.pas' {frmAyarlar},
  GLOBAL in 'global.pas',
  yeniKart in 'yeniKart.pas' {frmYeniKart},
  kartizleme in 'kartizleme.pas' {frmKartIzleme},
  servis in 'servis.pas' {frmServis},
  kasa in 'kasa.pas' {frmKasa},
  about in 'about.pas' {frmAbout},
  yeniUn in 'yeniUn.pas' {frmYeniUn},
  sifre in 'sifre.pas' {frmSifre},
  kasa_yaz in 'kasa_yaz.pas' {qrKasa: TQuickRep},
  onIzleme in 'onIzleme.pas' {frmOnIzleme},
  sayiGir in 'sayiGir.pas' {frmSayiGir},
  aktivasyon in 'aktivasyon.pas' {frmAktivasyon},
  kartGir in 'kartGir.pas' {frmKartGir},
  hareket_on in 'hareket_on.pas' {qrHareket: TQuickRep};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TfrmRandiman, frmRandiman);
  Application.CreateForm(Tdm1, dm1);
  Application.CreateForm(TfrmAyarlar, frmAyarlar);
  Application.CreateForm(TfrmKartIzleme, frmKartIzleme);
  Application.CreateForm(TfrmAbout, frmAbout);
  Application.CreateForm(TfrmYeniUn, frmYeniUn);
  Application.CreateForm(TfrmSifre, frmSifre);
  Application.CreateForm(TqrKasa, qrKasa);
  Application.CreateForm(TfrmOnIzleme, frmOnIzleme);
  Application.CreateForm(TfrmSayiGir, frmSayiGir);
  Application.CreateForm(TfrmAktivasyon, frmAktivasyon);
  Application.CreateForm(TfrmKartGir, frmKartGir);
  Application.CreateForm(TqrHareket, qrHareket);
  Application.Run;
end.
