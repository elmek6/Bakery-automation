unit ayarlar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, NumEdit;

type
  TfrmAyarlar = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    GroupBox2: TGroupBox;
    chkSifreIste: TCheckBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    GroupBox3: TGroupBox;
    cmdEkle: TBitBtn;
    cmdSil: TBitBtn;
    lstServisler: TListBox;
    txtBayiiFiyat: TNumEdit;
    txtTezgahFiyat: TNumEdit;
    Label3: TLabel;
    txtBayatFiyat: TNumEdit;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cmdEkleClick(Sender: TObject);
    procedure cmdSilClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAyarlar: TfrmAyarlar;

implementation

uses global, sifre;

{$R *.dfm}

procedure TfrmAyarlar.BitBtn2Click(Sender: TObject);
begin
  genel.bayiiFiyat := round(txtBayiiFiyat.Value);
  genel.tezgahFiyat:= round(txtTezgahFiyat.Value);
  genel.bayatFiyat := round(txtBayatFiyat.Value);

  if chkSifreIste.Checked then
    genel.sifreiste := 1
  else
    genel.sifreiste := 0;
  
  prcAyarYaz;

  lstServisler.Items.SaveToFile('test');

  sServis.Clear;
  sServis.Assign(lstServisler.Items);
  sServis.SaveToFile(FSERVIS);
  close;
end;

procedure TfrmAyarlar.BitBtn3Click(Sender: TObject);
begin
  close;
end;

procedure TfrmAyarlar.FormShow(Sender: TObject);
begin
  txtBayiiFiyat.Value := genel.bayiiFiyat;
  txtTezgahFiyat.Value:= genel.tezgahFiyat;
  txtBayatFiyat.Value := genel.bayatFiyat;
  chkSifreIste.Checked:= genel.sifreiste=1;
  
  lstServisler.Clear;
  lstServisler.Items.Clear;
  lstServisler.Items.BeginUpdate;
  lstServisler.Items.Assign(sServis);
  lstServisler.Items.EndUpdate;
end;

procedure TfrmAyarlar.cmdEkleClick(Sender: TObject);
  var
    s     :string;
begin
  s:=InputBox('Servis adýný girin', 'Yeni eklenecek servis aracýnýn adýný girin', '');
  if s<>'' then lstServisler.AddItem(s, sender);
end;

procedure TfrmAyarlar.cmdSilClick(Sender: TObject);
begin
  if lstServisler.ItemIndex>=0 then
    lstServisler.DeleteSelected;
end;


procedure TfrmAyarlar.BitBtn1Click(Sender: TObject);
begin
  frmSifre.lblSifre2.Visible := TRUE;
  frmSifre.txtSifre2.Visible := TRUE;
  if frmSifre.ShowModal=mrOk then
    showmessage('ok');
end;

END.
