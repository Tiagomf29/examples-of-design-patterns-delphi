unit UCompanySignatureA;

interface
uses
  UDigitalSignature, System.SysUtils, Vcl.Dialogs;
type

TCompanySignatureA = class(TInterfacedObject, TDigitalSignature)

  public
    function signature(ADocument : TBytes; ACertified : TBytes):TBytes;
    procedure verify(ADocument : TBytes; ASignature : TBytes);

end;

implementation

{ TCompanySignatureA }

function TCompanySignatureA.signature(ADocument, ACertified: TBytes): TBytes;
var
  lSignature : TBytes;
begin
  lSignature := TEncoding.Default.GetBytes('EXEMPLO');
  ShowMessage('signing documents with digital signature - Company A');
  Result:= lSignature;
end;

procedure TCompanySignatureA.verify(ADocument, ASignature: TBytes);
begin
  ShowMessage('verifying documents with digital signature - Company A');
end;

end.
