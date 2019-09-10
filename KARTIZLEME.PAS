unit kartizleme;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, Buttons, NumEdit, ExtCtrls, ComCtrls;

type
  TfrmKartIzleme = class(TForm)
    DBGrid1: TDBGrid;
    GroupBox1: TGroupBox;
    optTumKartlar: TRadioButton;
    optSeciliKart: TRadioButton;
    dbgridKart: TDBGrid;
    BitBtn1: TBitBtn;
    GroupBox2: TGroupBox;
    optTumu: TRadioButton;
    optSecim: TRadioButton;
    dtBas: TDateTimePicker;
    dtBit: TDateTimePicker;
    lblAdet: TLabel;
    lblTop: TLabel;
    txtAdet: TNumEdit;
    txtTop: TNumEdit;
    BitBtn2: TBitBtn;
    cmdGoster: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure optKartGoster(Sender: TObject);
    procedure dbgridKartCellClick(Column: TColumn);
    procedure FormShow(Sender: TObject);
    procedure optTarihGoster(Sender: TObject);
    procedure cmdGosterClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    procedure goster;
    { Private declarations }
  public
  published
    { Public declarations }
  end;

var
  frmKartIzleme: TfrmKartIzleme;

implementation

uses datamod1, hareket_on;

{$R *.dfm}

procedure TfrmKartIzleme.BitBtn1Click(Sender: TObject);
begin
  close;
end;

procedure TfrmKartIzleme.optKartGoster(Sender: TObject);
begin
  {filtrenin devreye girme þartý}
  dbGridKart.Visible     := optSeciliKart.Checked;  
end;

procedure TfrmKartIzleme.dbgridKartCellClick(Column: TColumn);
begin
  goster;
end;

procedure TfrmKartIzleme.FormShow(Sender: TObject);
begin
  optKartGoster(sender);
  optTarihGoster(sender);
end;

procedure TfrmKartIzleme.goster;
  var
    adet        :longword;
    top         :Extended;
    a,b,c       :string;
begin

  if optTumKartlar.Checked then
    a := ''
  else
    a := '(FirmaAd = ' + QuotedStr(dbgridKart.SelectedField.DataSet.FieldValues['kartAd']) + ')';

  if optTumu.Checked then
    c := ''
  else
    c := '(gun >= ' + QuotedStr(datetostr(dtBas.Date)) + ') AND (gun <= ' + QuotedStr(datetostr(dtBit.date)) + ')';    
  if(a<>'')and(c<>'')then
    b := ' AND '
  else
    b := '';

  if(a<>'')or(c<>'') then begin
    dm1.tbHareket.Filter := a + b + c;
    dm1.tbHareket.Filtered := TRUE;
  end else
    dm1.tbHareket.Filtered := FALSE;
    
  adet := 0;
  top  := 0;
  while not dm1.tbHareket.Eof do begin
    inc(adet, dm1.tbHareketAdet.Value);
    top := top  + dm1.tbHareketToplam.Value;
    dm1.tbHareket.Next;
  end;
  txtAdet.Value := adet;
  txtTop.Value  := top;
end;

procedure TfrmKartIzleme.optTarihGoster(Sender: TObject);
begin
  dtBas.Enabled     := optSecim.Checked;
  dtBit.Enabled     := optSecim.Checked;

  lblAdet.Enabled   := optSecim.Checked;
  lblTop.Enabled    := optSecim.Checked;

  txtAdet.Enabled   := optSecim.Checked;
  txtTop.Enabled    := optSecim.Checked;
end;

procedure TfrmKartIzleme.cmdGosterClick(Sender: TObject);
begin
  if dtBas.DateTime > dtBit.DateTime then  
    showmessage('Baþlangýç tarihini bitiþ tarihinden daha erken girdiniz, tarihleri düzeltin tekrar deneyin')
  else
    goster;
end;

procedure TfrmKartIzleme.BitBtn2Click(Sender: TObject);
begin
  qrHareket.Preview;
end;

end.
