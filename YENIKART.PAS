unit yeniKart;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBCtrls, Grids, DBGrids, StdCtrls, Buttons;

type
  TfrmYeniKart = class(TForm)
    dbGridKart: TDBGrid;
    DBNavigator1: TDBNavigator;
    BitBtn1: TBitBtn;
    cmdYeniEkle: TBitBtn;
    cmdDuzelt: TBitBtn;
    cmdSil: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    procedure BitBtn1Click(Sender: TObject);
    procedure cmdKontrol(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmYeniKart: TfrmYeniKart;

implementation

uses datamod1, kartGir;

{$R *.dfm}

procedure TfrmYeniKart.BitBtn1Click(Sender: TObject);
begin
  close;
end;

procedure TfrmYeniKart.cmdKontrol(Sender: TObject);
  var
    c     :integer;
    i     :integer;
begin
  c := (sender as TButton).Tag;
  {ÝLK 4 KAYITI DEÐÝÞTÝREMEZSÝNÝZ}
  
  case c of
    1://yeni ekle
      begin
        frmKartGir.txtFirmaAd.Text := '';
        frmKartGir.optUncu.Checked := TRUE;
      end;
    2://düzelt
      begin
        frmKartGir.txtFirmaAd.Text := dbgridKart.SelectedField.DataSet.FieldValues['kartAd'];
        i := dbgridKart.SelectedField.DataSet.FieldValues['servisNo'];
        frmKartGir.optUncu.Checked := i=-2;
        if i>0 then 
          frmKartGir.cboServis.ItemIndex := i-1;          
      end;
    3://sil
      begin
        //showmessage(eminmisin
        //dm1.tbKartlar.Delete
        exit;
      end;
  end;

  if frmKartGir.ShowModal = mrOK then
    dm1.tbKartlar.Post
  else
    dm1.tbKartlar.Cancel;
end;

END.
