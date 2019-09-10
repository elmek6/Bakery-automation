unit kasa_yaz;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls;

type
  TqrKasa = class(TQuickRep)
    QRBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRBand2: TQRBand;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRBand3: TQRBand;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRBand4: TQRBand;
    QRExpr1: TQRExpr;
    QRExpr2: TQRExpr;
    QRExpr3: TQRExpr;
    QRExpr4: TQRExpr;
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private

  public

  end;

var
  qrKasa: TqrKasa;

implementation

uses datamod1;

{$R *.DFM}

procedure TqrKasa.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
{
  var
    gelir,
    gider,
    kalan       :double;
    gun         :integer;
}
begin
{
  gelir := 0;
  gider := 0;
  kalan := 0;
  gun   := 0;
  while not dm1.tbKasa.Eof do begin
    inc(gun);
    gelir := gelir + dm1.tbKasaGelir.Value;
    gider := gider + dm1.tbKasaGider.Value;
    kalan := kalan + dm1.tbKasaKalan.Value;

    dm1.tbKasa.Next;
  end;

  qrToplamGun.Caption := 'Toplam ' + inttostr(gun) + ' gun';
  qrGelir.Caption := FormatFloat('#0, TL', gelir);
  qrGider.Caption := FormatFloat('#0, TL', gider);
  qrKalan.Caption := FormatFloat('#0, TL', kalan);
}
end;

END.
