unit kasa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ComCtrls, Grids, ExtCtrls, NumEdit, DBGrids,
  Mask, DBCtrls, DateUtils;

type
  TfrmKasa = class(TForm)
    sgGelir: TStringGrid;
    sgGider: TStringGrid;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Bevel1: TBevel;
    BitBtn1: TBitBtn;
    Label5: TLabel;
    cmdYeniGelir: TBitBtn;
    cmdYeniGider: TBitBtn;
    GroupBox3: TGroupBox;
    optEskiler: TRadioButton;
    optYeniGir: TRadioButton;
    dtSec: TDateTimePicker;
    cmdGunGoster: TBitBtn;
    cmdTabloHesapla: TBitBtn;
    dbeGelir: TDBEdit;
    dbeGider: TDBEdit;
    dbeKalan: TDBEdit;
    cmdYazdir: TBitBtn;
    cmdGelirKaydet: TBitBtn;
    cmdGiderKaydet: TBitBtn;
    Bevel2: TBevel;
    lblKalemAd: TLabel;
    lblFiyat: TLabel;
    txtGelirAd: TEdit;
    txtGelirFiyat: TNumEdit;
    cmdGelirCikart: TBitBtn;
    Label6: TLabel;
    Label7: TLabel;
    txtGiderAd: TEdit;
    txtGiderFiyat: TNumEdit;
    cmdGiderCikart: TBitBtn;
    procedure optSecimi(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cmdGunGosterClick(Sender: TObject);
    procedure sgDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure cmdYazdirClick(Sender: TObject);
    procedure cmdTabloHesaplaClick(Sender: TObject);
    procedure sgGelirDblClick(Sender: TObject);
    procedure sgGiderDblClick(Sender: TObject);
    procedure cmdYeniGiderClick(Sender: TObject);
    procedure cmdYeniGelirClick(Sender: TObject);
    procedure cmdGelirCikartClick(Sender: TObject);
    procedure cmdGiderCikartClick(Sender: TObject);
    procedure cmdGelirKaydetClick(Sender: TObject);
    procedure cmdGiderKaydetClick(Sender: TObject);
  private
    function GunGoster(zaman: TDate):boolean;
    procedure DrawCell(const Value: String; const Rect: TRect;
                       vCanvas: TCanvas; vFont: TFont; vAlignment: TAlignment);
    procedure hesapla;
    { Private declarations }
  public
  published
    { Public declarations }
  end;

var
  frmKasa: TfrmKasa;
  varyok : boolean;

implementation

uses datamod1, GLOBAL, kasa_yaz, onIzleme;

{$R *.dfm}

procedure TfrmKasa.optSecimi(Sender: TObject);
  var
    i         :integer;
    tezgah,
    bayat     :integer;
begin
  {servislerin getirdiði paralarý yaz}
  {tezgah}
  {bayat}

  dtSec.Enabled        := optEskiler.Checked;
  cmdGunGoster.Enabled := optEskiler.Checked;

  cmdTabloHesapla.Enabled := optYeniGir.Checked;
  cmdYeniGelir.Enabled    := optYeniGir.Checked;
  cmdYeniGider.Enabled    := optYeniGir.Checked;
  cmdGelirKaydet.Enabled  := optYeniGir.Checked;
  cmdGiderKaydet.Enabled  := optYeniGir.Checked;
  cmdGelirCikart.Enabled  := optYeniGir.Checked;
  cmdGiderCikart.Enabled  := optYeniGir.Checked;

  if optYeniGir.Checked then begin

    {kasa daha önce açýlmýþsa}
    if gunGoster(date) then
      begin
        varyok := TRUE;
        dm1.tbKasa.Cancel;
        dm1.tbKasa.Locate('tarih', datetostr(date), []);
        dm1.tbKasa.Edit;
      end
    else
      begin
        if not dm1.tbKasa.Locate('tarih', datetostr(incday(date, -1)), []) then
          showmessage('Bir önceki günün kasa devir bakiyesi alýnamadý, gün atlamýþ olabilirsiniz!');
          
        i:=0;
        sgGelir.RowCount := 1;
//devredilen istenmiyor
//        sgGelir.Cells[0, 0] := 'DEVREDEN';
//        sgGelir.Cells[1, 0] := FormatFloat('#0,', devir);
//      i:=1;

        {yukarýda kasa'ya eriþim olduðu için bu noktadan sonra açýlýyor}
        varyok := FALSE;
        dm1.tbKasa.Append;

        dm1.tbServis.Filter   := 'tarih = ' + QuotedStr(datetostr(date));
        dm1.tbServis.Filtered := TRUE;

        if dm1.tbServis.Eof then
          showmessage('Kasanýn gelirleri alabilmesi için "Servis" sayfasýný doldurunuz.');

        while not dm1.tbServis.Eof do begin
          sgGelir.Cells[0, i] := dm1.tbServisServisAd.Text;
          sgGelir.Cells[1, i] := dm1.tbServisGelenPara.Text;
          inc(i);
          sgGelir.RowCount := i;
          dm1.tbServis.Next;
        end;

        {tezgah ve bayat ekmek hesaplanýyor}
        if dm1.tbSaglama.Locate('tarih', datetostr(dtSec.Date), []) then
          begin
            tezgah := dm1.tbSaglamaTezgah.Value * genel.tezgahFiyat;
            bayat  := dm1.tbSaglamaBayat.Value * genel.bayatFiyat;
          end
        else
          begin
            showmessage('Kasanýn gelirleri alabilmesi için "Saðlama" sayfasýný doldurunuz');          
            tezgah := 0;
            bayat  := 0;
          end;

        sgGelir.Cells[0, i] := 'TEZGAH';
        sgGelir.Cells[1, i] := FormatFloat('#0,', tezgah); 
        inc(i);
        sgGelir.RowCount := i;
  
        sgGelir.Cells[0, i] := 'BAYAT';
        sgGelir.Cells[1, i] := FormatFloat('#0,', bayat);
        inc(i);
        sgGelir.RowCount := i;
      end;
  
  end;
end;

procedure TfrmKasa.BitBtn1Click(Sender: TObject);
begin
  close;
end;

procedure TfrmKasa.FormShow(Sender: TObject);
begin
  optSecimi(sender);
  dtSec.DateTime := now;
end;

procedure TfrmKasa.cmdGunGosterClick(Sender: TObject);
begin
 if not dm1.tbKasa.Locate('tarih', datetostr(dtSec.Date), []) then begin
   showmessage('Belittiðiniz güne ait veriler hazýr deðil veya yok');
   exit;
 end;

 gunGoster(dtSec.Date);
end;

function TfrmKasa.GunGoster(zaman: TDate):boolean;
  var
    kalemGelirGider :integer;
    kalemAd         :string;
    kalemMiktar     :Extended;

    g1, g2          :integer;
begin
  dm1.tbKasaHareket.Filter   := 'tarih =' + QuotedStr(datetostr(zaman));
  dm1.tbKasaHareket.Filtered := TRUE;
  {filitre sonucu ayný zamanda fonksiyonun sonucu}
  gunGoster := not dm1.tbKasaHareket.Eof;

  g1 := 0;
  g2 := 0;

  sgGelir.RowCount := 0;
  sgGelir.Rows[1].Clear;
  sgGider.RowCount := 0;
  sgGider.Rows[1].Clear;
  
  dbeGelir.EditText := '0';
  dbeGider.EditText := '0';
  dbeKalan.EditText    := '0';  

  while not dm1.tbKasaHareket.Eof do begin
    kalemGelirGider := dm1.tbKasaHareketKalemGelirGider.Value;
    kalemAd         := dm1.tbKasaHareketKalemAd.Value;
    kalemMiktar     := dm1.tbKasaHareketKalemMiktar.Value;

    case kalemGelirGider of
      0: {GELÝR}
        begin
          sgGelir.Cells[0, g1] := kalemAd;
          sgGelir.Cells[1, g1] := FormatFloat('#0,', kalemMiktar);
          inc(g1);
          sgGelir.RowCount := g1;
        end;
      1: {GÝDER}
        begin
          sgGider.Cells[0, g2] := kalemAd;
          sgGider.Cells[1, g2] := FormatFloat('#0,', kalemMiktar);
          inc(g2);
          sgGider.RowCount := g2;
        end;
    end;
    dm1.tbKasaHareket.Next;
  end; 
  hesapla;
end;

{String Grid Hücrelerinde saða hizalý yazmayý saðlýyor}
procedure TfrmKasa.DrawCell(const Value: String; const Rect: TRect;
   vCanvas: TCanvas; vFont: TFont; vAlignment: TAlignment);
VAR X : Integer;
BEGIN
  vCanvas.Font := vFont;
  CASE vAlignment OF
    taRightJustify : BEGIN
      SetTextAlign(vCanvas.Handle, TA_RIGHT);
      X := Rect.Right-2;
    END;
    taLeftJustify  : BEGIN
      SetTextAlign(vCanvas.Handle, TA_LEFT);
      X := Rect.Left+2;
    END;
    taCenter       : BEGIN
      SetTextAlign(vCanvas.Handle, TA_CENTER);
      X := (Rect.Right+Rect.Left) DIV 2;
    END;
  END;
  vCanvas.TextRect(Rect, X, Rect.Top+2, Value);
  SetTextAlign(vCanvas.Handle, TA_LEFT);
END;

procedure TfrmKasa.sgDrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);
begin
  if ACol = 1 then
    DrawCell((Sender as TStringGrid).Cells[ACol, ARow], Rect, (Sender as TStringGrid).Canvas,
             (Sender as TStringGrid).Font, taRightJustify);
end;

procedure TfrmKasa.cmdYazdirClick(Sender: TObject);
begin
  frmOnIzleme.ShowModal;
end;

procedure TfrmKasa.cmdTabloHesaplaClick(Sender: TObject);
  var
    i       :integer;
begin
  hesapla;

  if varyok then begin
    {gunGoster'den dolayý filtre geçerli}
    dm1.tbKasaHareket.Filtered := FALSE;
    dm1.tbKasaHareket.Filtered := TRUE;
    while not dm1.tbKasaHareket.Eof do 
      dm1.tbKasaHareket.Delete;
  end;
  
  for i:=1 to sgGelir.RowCount do begin
    dm1.tbKasaHareket.Append;
    dm1.tbKasaHareketTarih.Value           := date;
    dm1.tbKasaHareketKalemGelirGider.Value := 0;{GELÝR}
    dm1.tbKasaHareketKalemAd.Value         := sgGelir.Cells[0, i-1];
    dm1.tbKasaHareketKalemMiktar.Value     := sti(sgGelir.Cells[1, i-1]);
    dm1.tbKasaHareket.Post;
  end;
  for i:=1 to sgGider.RowCount do begin
    dm1.tbKasaHareket.Append;
    dm1.tbKasaHareketTarih.Value           := date;
    dm1.tbKasaHareketKalemGelirGider.Value := 1;{GÝDER}
    dm1.tbKasaHareketKalemAd.Value         := sgGider.Cells[0, i-1];
    dm1.tbKasaHareketKalemMiktar.Value     := sti(sgGider.Cells[1, i-1]);
    dm1.tbKasaHareket.Post;
  end;

  dm1.tbKasaTarih.Value := date;
  dm1.tbKasaGelir.Value := sti(dbeGelir.EditText); {ondalýklarda}
  dm1.tbKasaGider.Value := sti(dbeGider.EditText); {hata vermemesi}
  dm1.tbKasaKalan.Value := sti(dbeKalan.EditText); {için yapýldý}
  dm1.tbKasa.Post;
  {dm1.tbKasa.Edit;  bunun yerine}
  optEskiler.Checked := TRUE;

  showmessage('KAYIT ONAYLANDI');
end;

procedure TfrmKasa.sgGelirDblClick(Sender: TObject);
begin
  txtGelirAd.Text     := sgGelir.Cells[0, sgGelir.Row];
  txtGelirFiyat.Value := sti(sgGelir.Cells[1, sgGelir.Row]);
end;

procedure TfrmKasa.sgGiderDblClick(Sender: TObject);
begin
  txtGiderAd.Text     := sgGider.Cells[0, sgGider.Row];
  txtGiderFiyat.Value := sti(sgGider.Cells[1, sgGider.Row]);
end;

procedure TfrmKasa.cmdYeniGiderClick(Sender: TObject);
begin
  sgGider.Cells[0, sgGider.RowCount] := txtGiderAd.Text;
  sgGider.Cells[1, sgGider.RowCount] := txtGiderFiyat.Text;
  sgGider.RowCount := sgGider.RowCount + 1;
  hesapla;
end;

procedure TfrmKasa.cmdYeniGelirClick(Sender: TObject);
begin
  sgGelir.Cells[0, sgGelir.RowCount] := txtGelirAd.Text;
  sgGelir.Cells[1, sgGelir.RowCount] := txtGelirFiyat.Text;
  sgGelir.RowCount := sgGelir.RowCount + 1;
  hesapla;
end;

procedure TfrmKasa.cmdGelirCikartClick(Sender: TObject);
  var
    i     :integer;
begin
  if sgGelir.RowCount = 1 then 
    begin
      sgGelir.Rows[0].Clear;
    end
  else
    begin
    For i:= sgGelir.Row to sgGelir.RowCount-1 do
      begin
        sgGelir.Rows[i] := sgGelir.Rows[i+1];
      end;
    sgGelir.RowCount := sgGelir.RowCount - 1;
  end;
  hesapla;
end;

procedure TfrmKasa.cmdGiderCikartClick(Sender: TObject);
  var
    i     :integer;
begin
  if sgGider.RowCount = 1 then 
    begin
      sgGider.Rows[0].Clear;
    end
  else
    begin
    For i:= sgGider.Row to sgGider.RowCount-1 do
      begin
        sgGider.Rows[i] := sgGider.Rows[i+1];
      end;
    sgGider.RowCount := sgGider.RowCount - 1;
  end;
  hesapla;
end;

procedure TfrmKasa.cmdGelirKaydetClick(Sender: TObject);
begin
  if sgGelir.Row >= 0 then begin
    sgGelir.Cells[0, sgGelir.Row] := txtGelirAd.Text;
    sgGelir.Cells[1, sgGelir.Row] := txtGelirFiyat.Text;
    hesapla;
  end;
end;

procedure TfrmKasa.cmdGiderKaydetClick(Sender: TObject);
begin
  if sgGider.Row >= 0 then begin
    sgGider.Cells[0, sgGider.Row] := txtGiderAd.Text;
    sgGider.Cells[1, sgGider.Row] := txtGiderFiyat.Text;
    hesapla;
  end;
end;

procedure TfrmKasa.hesapla;
  var
    i     :integer;
    topGel,
    topGid:extended;
begin
  topGel := 0;
  for i:=0 to sgGelir.RowCount do begin
    topGel := topGel + sti(sgGelir.Cells[1, i]);
  end;
  topGid := 0;
  for i:=0 to sgGider.RowCount do begin
    topGid := topGid + sti(sgGider.Cells[1, i]);
  end;
  dbeGelir.EditText := FormatFloat('#0,', topGel);
  dbeGider.EditText := FormatFloat('#0,', topGid);
  dbeKalan.EditText := FormatFloat('#0,', topGel - topGid);
end;

END.
