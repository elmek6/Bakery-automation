unit GLOBAL;

interface

uses
  Registry, Classes, SysUtils;

procedure prcAyarOku;
procedure prcAyarYaz;

  const
    PRG_SIGN    ='FIRIN1';
    fSERVIS     ='servis.ini';

  type
    (* GENEL AMAÇLI                             *)
    (*                                          *)
    (*                                          *)
    TGenel = Record
      bayiiFiyat      :longint;
      tezgahFiyat     :longint;
      bayatFiyat      :longint;
      aktivasyon      :longint;
      sifre           :string;
      sifreiste       :integer;
    end;

  var
    genel     :TGenel;
    sServis   :TStringList;

function sti(s: string): int64;

implementation

procedure prcAyarOku;
  var
    reg     :TRegIniFile;
    i       :integer;
begin
  reg := TRegIniFile.create('SOFTWARE\Rota\');

  genel.bayiiFiyat   := reg.ReadInteger(PRG_SIGN, 'bayii fiyat',  250000);
  genel.tezgahFiyat  := reg.ReadInteger(PRG_SIGN, 'tezgah fiyat', 300000);
  genel.bayatFiyat   := reg.ReadInteger(PRG_SIGN, 'bayat fiyat',  150000);

  genel.aktivasyon   := reg.ReadInteger(PRG_SIGN, 'a', 0);
  genel.sifre        := reg.ReadString(PRG_SIGN, 's', '');
  genel.sifreiste    := reg.ReadInteger(PRG_SIGN, 'si', 0);
end;

procedure prcAyarYaz;
  var
    reg     :TRegIniFile;
    i       :integer;
begin
  reg := TRegIniFile.create('SOFTWARE\Rota\');

  reg.WriteInteger(PRG_SIGN, 'bayii fiyat',  genel.bayiiFiyat);
  reg.WriteInteger(PRG_SIGN, 'tezgah fiyat', genel.tezgahFiyat);
  reg.WriteInteger(PRG_SIGN, 'bayat fiyat',  genel.bayatFiyat);

  reg.WriteInteger(PRG_SIGN, 'a', genel.aktivasyon);
  reg.WriteInteger(PRG_SIGN, 'si', genel.sifreiste);
  reg.WriteString(PRG_SIGN, 's', genel.sifre);
end;

function sti(s: string): int64;
  var
    i,
    l   :integer;
    n   :string;
begin
  n:='';
  l:=length(s);
  for i:=1 to l do
    if (s[i]<='9') and (s[i]>='0') then n:=n+s[i];
  
  if n='' then
    result:=0
  else
    result:=strtoint64(n);

  if (l>0)and(s[1]='-') then result:=-result;
end;

BEGIN
  //bu deðerler daha sonra hafýzadan silinecek
  sServis:=TStringList.Create;

  if FileExists(FSERVIS) then
    sServis.LoadFromFile(FSERVIS);
END.
