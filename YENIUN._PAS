unit yeniUn;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, Buttons, NumEdit;

type
  TfrmYeniUn = class(TForm)
    dbgKart: TDBGrid;
    Label1: TLabel;
    txtAdet: TNumEdit;
    Label2: TLabel;
    txtBirimFiyat: TNumEdit;
    Label3: TLabel;
    txtToplam: TNumEdit;
    cmdUnEkle: TBitBtn;
    BitBtn2: TBitBtn;
    Label4: TLabel;
    txtFirmaAd: TEdit;
    procedure FormShow(Sender: TObject);
    procedure toplamHesapla(Sender: TObject);
    procedure cmdUnEkleClick(Sender: TObject);
    procedure dbgKartCellClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmYeniUn: TfrmYeniUn;

implementation

uses datamod1;

{$R *.dfm}

procedure TfrmYeniUn.FormShow(Sender: TObject);
begin
  dm1.tbKartlar.Filter   := 'servisNo = -2';
  dm1.tbKartlar.Filtered := TRUE;
end;

procedure TfrmYeniUn.toplamHesapla(Sender: TObject);
begin
  txtToplam.Value := txtAdet.Value * txtBirimFiyat.Value;
end;

procedure TfrmYeniUn.cmdUnEkleClick(Sender: TObject);
begin
  {seçilen kaydý harekete yaz}
  if txtFirmaAd.Text='' then begin
    showmessage('Firma seçmeyi unuttunuz');
    exit;
  end;

  with dm1.tbHareket do  
    if locate('gun;firmaKod', VarArrayOf([datetostr(date), '-2']), []) then
      dm1.tbHareket.Edit
    else
      dm1.tbHareket.Append;

  dm1.tbHareketGun.Value        := date;  
  dm1.tbHareketFirmaKod.Value   := dbgKart.SelectedField.DataSet.FieldValues['kartNo'];
  dm1.tbHareketFirmaAd.Value    := dbgKart.SelectedField.DataSet.FieldValues['kartAd'];
  dm1.tbHareketAdet.Value       := round(txtAdet.Value);
  dm1.tbHareketBirimFiyat.Value := round(txtBirimFiyat.Value);
  dm1.tbHareketToplam.Value     := round(txtToplam.Value);
  dm1.tbHareketServisArac.Value := -2; //un satan firmalar

  dm1.tbHareket.Post;
end;

procedure TfrmYeniUn.dbgKartCellClick(Column: TColumn);
begin
  txtFirmaAd.Text := dbgKart.SelectedField.DataSet.FieldValues['kartAd'];
end;

end.
