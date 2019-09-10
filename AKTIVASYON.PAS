unit aktivasyon;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Registry, NumEdit;

type
  TfrmAktivasyon = class(TForm)
    BitBtn1: TBitBtn;
    Label1: TLabel;
    txtAnahtar: TNumEdit;
    Label4: TLabel;
    Label5: TLabel;
    txtKod1: TNumEdit;
    txtKod2: TNumEdit;
    Label7: TLabel;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    Label6: TLabel;
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAktivasyon: TfrmAktivasyon;

implementation

uses GLOBAL;

{$R *.dfm}

procedure TfrmAktivasyon.BitBtn2Click(Sender: TObject);
begin
  if txtAnahtar.Text <> '' then begin
    showmessage('Doðru giriþ yaptýysanýz program yeniden baþlatýldýðýnda Lisans bilgileri geçerli olacaktýr');
    genel.aktivasyon := round(txtAnahtar.Value);
    prcAyarYaz;
  end;
  close;
end;

procedure TfrmAktivasyon.FormShow(Sender: TObject);
begin
  {yaz}
end;

end.
