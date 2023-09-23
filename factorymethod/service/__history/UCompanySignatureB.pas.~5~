unit UCompanySignatureB;

interface
uses
  UDigitalSignature, System.SysUtils, Vcl.Dialogs;
type

TCompanySignatureB = class(TInterfacedObject, TDigitalSignature)

  public
    function signature(ADocument : TBytes; ACertified : TBytes):TBytes;
    procedure verify(ADocument : TBytes; ASignature : TBytes);

end;

implementation

{ TCompanySignatureA }

function TCompanySignatureB.signature(ADocument, ACertified: TBytes): TBytes;
var
  lSignature : TBytes;
begin
  lSignature := TEncoding.Default.GetBytes('EXEMPLO');
  ShowMessage('signing documents with digital signature - Company B');
  Result:= lSignature;
end;

procedure TCompanySignatureB.verify(ADocument, ASignature: TBytes);
begin
  ShowMessage('verifying documents with digital signature - Company B');
end;

end.

