unit UDigitalSignatureFactoryCompanyB;

interface
uses
  UDigitalSignatureFactory, UDigitalSignature;
type

TDigitalSignatureFactoryCompanyB = class(TInterfacedObject,TDigitalSignatureFactory)

  function createDigitalSignature: TDigitalSignature;

end;

implementation
uses
  UCompanySignatureB;

{ TDigitalSignatureFactoryCompanyB }

function TDigitalSignatureFactoryCompanyB.createDigitalSignature: TDigitalSignature;
var
  LCompanySignatureB : TCompanySignatureB;
begin
  LCompanySignatureB := TCompanySignatureB.Create;
  Result := LCompanySignatureB;
end;

end.

